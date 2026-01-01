--------------------------------------------------------------------------------
-- Scervig - Delve Boss
-- NPC ID: 600680
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Rockjaw Trogg flameweaver boss - melee bruiser with fire magic
-- Uses fire spells, melee attacks, and damage shields for aggressive combat
-- Enrages at 30% HP for final burn phase
-- 
-- ABILITIES:
-- - Fireball: Ranged fire damage
-- - Flame Shock: Fire DOT debuff
-- - Fire Nova: AOE fire burst
-- - Fire Shield: Damage shield (reflects fire damage)
-- - Overhead Smash: Heavy melee strike
-- - Immolate: Fire DOT
-- - Enrage: Attack speed buff at 30% HP
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 84
--------------------------------------------------------------------------------

print("Delve Boss: Scervig Loaded")

local BOSS_ID = 600680

-- Spells
local SPELL_FIREBALL        = 20793   -- Ranged fire damage
local SPELL_FLAME_SHOCK     = 8050    -- Fire DOT
local SPELL_FIRE_NOVA       = 8349    -- AOE fire burst
local SPELL_FIRE_SHIELD     = 13376   -- Damage reflection shield
local SPELL_OVERHEAD_SMASH  = 64003   -- Heavy melee hit
local SPELL_IMMOLATE        = 11962   -- Fire DOT
local SPELL_ENRAGE          = 8599    -- Attack speed buff at 30%

-- Configuration
local ENRAGE_THRESHOLD = 30

-- GUIDLow-safe phase tracking
local phases = {}

-- Helper functions
local function GetTank(creature) return creature:GetVictim() end

-- Core Abilities
local function CastFireball(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        -- Only cast if not in melee range
        local distance = creature:GetDistance(victim)
        if distance > 5 then
            creature:CastSpell(victim, SPELL_FIREBALL, false)
        end
    end
end

local function CastFlameShock(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_FLAME_SHOCK, true)
        creature:SendUnitSay("Burn!", 0)
    end
end

local function CastFireNova(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    -- Check if anyone is in melee range
    local nearbyPlayers = creature:GetPlayersInRange(10)
    if #nearbyPlayers > 0 then
        creature:CastSpell(creature, SPELL_FIRE_NOVA, true)
        creature:SendUnitYell("Fire consume all!", 0)
    end
end

local function CastFireShield(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_FIRE_SHIELD, true)
    creature:SendUnitSay("Shield of flame!", 0)
end

local function CastOverheadSmash(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_OVERHEAD_SMASH, false)
    end
end

local function CastImmolate(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_IMMOLATE, true)
    end
end

-- Phase Check - Enrage at 30%
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]

    -- Enrage at 30% HP
    if creature:GetHealthPct() <= ENRAGE_THRESHOLD and not p.enrage then
        p.enrage = true
        
        creature:SendUnitYell("SCERVIG CRUSH EVERYTHING!", 0)
        creature:CastSpell(creature, SPELL_ENRAGE, true)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("You in Scervig territory now!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}
    
    -- Aggressive melee/fire rotation
    creature:RegisterEvent(CastFireball, 8000, 0)          -- Fireball every 8s (ranged only)
    creature:RegisterEvent(CastFlameShock, 10000, 0)       -- Flame Shock every 10s
    creature:RegisterEvent(CastFireNova, 15000, 0)         -- Fire Nova every 15s
    creature:RegisterEvent(CastFireShield, 25000, 0)       -- Fire Shield every 25s
    creature:RegisterEvent(CastOverheadSmash, 12000, 0)    -- Overhead Smash every 12s
    creature:RegisterEvent(CastImmolate, 18000, 0)         -- Immolate every 18s
    
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
            "Trogg strongest!",
            "Gnome camp belong to Scervig!",
            "Weak invader fall!"
        }
        creature:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    creature:SendUnitYell("Scervig... failed... clan...", 0)
    
    phases[guid] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)