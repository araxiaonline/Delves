--------------------------------------------------------------------------------
-- Overlord Snivey - Delve Boss
-- NPC ID: 600701
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Venture Co. goblin overlord - melee bruiser who protects his partner Moosh
-- When both bosses are alive, Snivey intervenes to protect Moosh
-- When Moosh dies, Snivey enrages and gains Rocket Launch
-- 
-- PHASE 1 (Both Alive): Berserker Charge, Mortal Strike, Goblin Bomb, Recklessness
-- PHASE 2 (Moosh Dead): Enrages, gains Rocket Launch from Moosh
--
-- ABILITIES:
-- - Berserker Charge: Charges at distant targets
-- - Mortal Strike: Heavy hit that reduces healing
-- - Goblin Bomb: Throws bomb at nearby enemies (AOE)
-- - Recklessness: Self-buff for increased damage
-- - Intervene: Protects Moosh when she's attacked
-- - Berserk: Enrage when Moosh dies
-- - Rocket Launch: Gains from Moosh on death (Phase 2)
--
-- DIFFICULTY: Delve Boss (Dual Fight)
-- LEVEL: 85
--------------------------------------------------------------------------------

print("Delve Boss: Overlord Snivey Loaded")

local BOSS_ID = 600701
local PARTNER_ID = 600702  -- Overlord Moosh

-- Spells
local SPELL_BERSERKER_CHARGE    = 36833   -- Charge at distant targets
local SPELL_MORTAL_STRIKE       = 32736   -- Heavy hit, reduces healing
local SPELL_GOBLIN_BOMB         = 23134   -- AOE bomb throw
local SPELL_RECKLESSNESS        = 13847   -- Damage boost self-buff
local SPELL_INTERVENE           = 34784   -- Protect Moosh
local SPELL_BERSERK             = 26662   -- Enrage on Moosh death
local SPELL_ROCKET_LAUNCH       = 71590   -- Gained from Moosh on death

-- Configuration
local ENRAGE_THRESHOLD = 30  -- Enrage if partner dies

-- GUIDLow-safe phase tracking
local phases = {}

-- Helper functions
local function GetTank(creature) return creature:GetVictim() end

local function GetPartner(creature)
    local nearbyCreatures = creature:GetCreaturesInRange(100, PARTNER_ID)
    if nearbyCreatures and #nearbyCreatures > 0 then
        return nearbyCreatures[1]
    end
    return nil
end

local function IsPartnerAlive(creature)
    local partner = GetPartner(creature)
    return partner and partner:IsAlive()
end

-- Phase 1 Abilities (Both Alive)
local function CastBerserkerCharge(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        local distance = creature:GetDistance(victim)
        -- Only charge if target is 8-25 yards away
        if distance >= 8 and distance <= 25 then
            creature:CastSpell(victim, SPELL_BERSERKER_CHARGE, true)
            creature:SendUnitSay("Get over here!", 0)
        end
    end
end

local function CastMortalStrike(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_MORTAL_STRIKE, true)
    end
end

local function CastGoblinBomb(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_GOBLIN_BOMB, true)
    creature:SendUnitYell("Bombs away!", 0)
end

local function CastRecklessness(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_RECKLESSNESS, true)
    creature:SendUnitSay("Time to get serious!", 0)
end

-- Synergy Ability - Protect Moosh
local function ProtectMoosh(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    -- Only intervene if Moosh is alive
    if IsPartnerAlive(creature) then
        local partner = GetPartner(creature)
        if partner and partner:IsInCombat() then
            local mooshTarget = partner:GetVictim()
            if mooshTarget then
                -- Intervene to protect Moosh
                creature:CastSpell(partner, SPELL_INTERVENE, true)
                creature:SendUnitSay("I got your back, Moosh!", 0)
            end
        end
    end
end

-- Phase 2 Ability (Moosh Dead)
local function CastRocketLaunch(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_ROCKET_LAUNCH, true)
    end
end

-- Phase Check - Detect Moosh Death
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]

    -- Check if Moosh died
    if not IsPartnerAlive(creature) and not p.enraged then
        p.enraged = true
        
        creature:SendUnitYell("MOOSH! You'll pay for that!", 0)
        
        -- Remove Phase 1 events
        creature:RemoveEvents()
        
        -- Apply Berserk
        creature:CastSpell(creature, SPELL_BERSERK, true)
        
        -- Phase 2 abilities (enraged + gained Rocket Launch)
        creature:RegisterEvent(CastBerserkerCharge, 12000, 0)
        creature:RegisterEvent(CastMortalStrike, 8000, 0)
        creature:RegisterEvent(CastGoblinBomb, 15000, 0)
        creature:RegisterEvent(CastRocketLaunch, 10000, 0)  -- Gained from Moosh
        creature:RegisterEvent(PhaseCheck, 1000, 0)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("Time to work! Venture Co. don't take no breaks!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}
    
    -- Phase 1 rotation (both alive)
    creature:RegisterEvent(CastBerserkerCharge, 15000, 0)    -- Charge every 15s
    creature:RegisterEvent(CastMortalStrike, 10000, 0)       -- Mortal Strike every 10s
    creature:RegisterEvent(CastGoblinBomb, 20000, 0)         -- Goblin Bomb every 20s
    creature:RegisterEvent(CastRecklessness, 30000, 0)       -- Recklessness every 30s
    creature:RegisterEvent(ProtectMoosh, 5000, 0)            -- Check to protect Moosh every 5s
    
    -- Phase check
    creature:RegisterEvent(PhaseCheck, 1000, 0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    phases[guid] = nil
end

local function OnKilledTarget(event, creature, victim)
    if victim and victim:IsPlayer() then
        local taunts = {
            "That's what you get!",
            "Venture Co. wins again!",
            "Should've stayed outta our camp!"
        }
        creature:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    creature:SendUnitYell("Boss ain't gonna like this...", 0)
    
    phases[guid] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)