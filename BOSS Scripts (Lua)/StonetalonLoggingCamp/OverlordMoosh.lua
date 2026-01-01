--------------------------------------------------------------------------------
-- Overlord Moosh - Delve Boss
-- NPC ID: 600702
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Venture Co. goblin overlord - engineer/support who buffs partner Snivey
-- When both bosses are alive, Moosh buffs Snivey with Nitro Boots
-- When Snivey dies, Moosh enrages and gains Berserker Charge
-- 
-- PHASE 1 (Both Alive): Rocket Launch, Goblin Dragon Gun, Fuse Armor, Static Conduit, buffs Snivey
-- PHASE 2 (Snivey Dead): Enrages, gains Berserker Charge from Snivey
--
-- ABILITIES:
-- - Rocket Launch: Ranged rocket attack
-- - Nitro Boots: Buffs Snivey with increased movement/attack speed
-- - Goblin Dragon Gun: Flame breath cone attack
-- - Fuse Armor: Debuff that reduces armor
-- - Static Conduit: Silences/interrupts target
-- - Bloodlust: Haste buff on self
-- - Berserker Charge: Gains from Snivey on death (Phase 2)
--
-- DIFFICULTY: Delve Boss (Dual Fight)
-- LEVEL: 85
--------------------------------------------------------------------------------

print("Delve Boss: Overlord Moosh Loaded")

local BOSS_ID = 600702
local PARTNER_ID = 600701  -- Overlord Snivey

-- Spells
local SPELL_ROCKET_LAUNCH       = 71590   -- Ranged rocket attack
local SPELL_NITRO_BOOTS         = 54861   -- Buff for Snivey
local SPELL_GOBLIN_DRAGON_GUN   = 44273   -- Flame cone
local SPELL_FUSE_ARMOR          = 64771   -- Armor reduction debuff
local SPELL_STATIC_CONDUIT      = 20542   -- Silence/interrupt
local SPELL_BLOODLUST           = 2825    -- Haste self-buff
local SPELL_BERSERK             = 26662   -- Enrage on Snivey death
local SPELL_BERSERKER_CHARGE    = 36833   -- Gained from Snivey on death

-- Configuration
local BUFF_CHECK_INTERVAL = 10000  -- Check to buff Snivey every 10s

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
local function CastRocketLaunch(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_ROCKET_LAUNCH, true)
    end
end

local function CastGoblinDragonGun(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_GOBLIN_DRAGON_GUN, false)
        creature:SendUnitYell("Taste my dragon gun!", 0)
    end
end

local function CastFuseArmor(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_FUSE_ARMOR, true)
        creature:SendUnitSay("Melting your armor down!", 0)
    end
end

local function CastStaticConduit(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_STATIC_CONDUIT, true)
        creature:SendUnitSay("EMP!", 0)
    end
end

local function CastBloodlust(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_BLOODLUST, true)
    creature:SendUnitSay("Engineering power!", 0)
end

-- Synergy Ability - Buff Snivey
local function BuffSnivey(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    -- Only buff if Snivey is alive
    if IsPartnerAlive(creature) then
        local partner = GetPartner(creature)
        if partner then
            creature:CastSpell(partner, SPELL_NITRO_BOOTS, true)
            creature:SendUnitSay("Nitro boost, Snivey!", 0)
        end
    end
end

-- Phase 2 Ability (Snivey Dead)
local function CastBerserkerCharge(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        local distance = creature:GetDistance(victim)
        -- Only charge if target is 8-25 yards away
        if distance >= 8 and distance <= 25 then
            creature:CastSpell(victim, SPELL_BERSERKER_CHARGE, true)
            creature:SendUnitSay("I'll finish what Snivey started!", 0)
        end
    end
end

-- Phase Check - Detect Snivey Death
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]

    -- Check if Snivey died
    if not IsPartnerAlive(creature) and not p.enraged then
        p.enraged = true
        
        creature:SendUnitYell("SNIVEY! I'll make 'em pay!", 0)
        
        -- Remove Phase 1 events
        creature:RemoveEvents()
        
        -- Apply Berserk
        creature:CastSpell(creature, SPELL_BERSERK, true)
        
        -- Phase 2 abilities (enraged + gained Berserker Charge)
        creature:RegisterEvent(CastRocketLaunch, 8000, 0)
        creature:RegisterEvent(CastGoblinDragonGun, 12000, 0)
        creature:RegisterEvent(CastFuseArmor, 15000, 0)
        creature:RegisterEvent(CastStaticConduit, 10000, 0)
        creature:RegisterEvent(CastBerserkerCharge, 15000, 0)  -- Gained from Snivey
        creature:RegisterEvent(PhaseCheck, 1000, 0)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("Engineering beats magic every time!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}
    
    -- Phase 1 rotation (both alive)
    creature:RegisterEvent(CastRocketLaunch, 10000, 0)       -- Rocket every 10s
    creature:RegisterEvent(CastGoblinDragonGun, 15000, 0)    -- Dragon Gun every 15s
    creature:RegisterEvent(CastFuseArmor, 20000, 0)          -- Fuse Armor every 20s
    creature:RegisterEvent(CastStaticConduit, 12000, 0)      -- Static Conduit every 12s
    creature:RegisterEvent(CastBloodlust, 30000, 0)          -- Bloodlust every 30s
    creature:RegisterEvent(BuffSnivey, BUFF_CHECK_INTERVAL, 0)  -- Buff Snivey every 10s
    
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
            "Venture Co. technology wins!",
            "That's goblin engineering!",
            "Should've brought better gear!"
        }
        creature:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    creature:SendUnitYell("My machines... failed me...", 0)
    
    phases[guid] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)