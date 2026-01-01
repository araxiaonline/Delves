--------------------------------------------------------------------------------
-- Overlord Rigto - Delve Boss
-- NPC ID: 600656
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Deadwood furbolg overlord - savage bear warrior with physical attacks
-- Uses bear-form abilities, charges, and terrifying roars
-- Enrages at low HP for final burn phase
-- 
-- ABILITIES:
-- - Maul: Heavy bear melee attack
-- - Swipe: Frontal cone attack
-- - Lacerate: Bleed DOT
-- - Bash: Stun interrupt
-- - Furious Charge: Charge at distant targets
-- - Terrifying Roar: Fear AOE at 40% HP
-- - Feral Fury: Damage buff
-- - Enrage: Attack speed buff at 20% HP
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 85
--------------------------------------------------------------------------------

print("Delve Boss: Overlord Rigto Loaded")

local BOSS_ID = 600656

-- Spells
local SPELL_MAUL               = 15793   -- Heavy bear attack
local SPELL_SWIPE              = 31279   -- Frontal cone
local SPELL_LACERATE           = 48568   -- Bleed DOT
local SPELL_BASH               = 5211    -- Stun interrupt
local SPELL_FURIOUS_CHARGE     = 52305   -- Charge ability
local SPELL_TERRIFYING_ROAR    = 14100   -- Fear AOE
local SPELL_FERAL_FURY         = 48848   -- Damage buff
local SPELL_ENRAGE             = 8599    -- Attack speed buff

-- Configuration
local ROAR_THRESHOLD = 40
local ENRAGE_THRESHOLD = 20

-- GUIDLow-safe phase tracking
local phases = {}

-- Helper functions
local function GetTank(creature) return creature:GetVictim() end

-- Core Abilities
local function CastMaul(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_MAUL, true)
    end
end

local function CastSwipe(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_SWIPE, true)
    creature:SendUnitSay("Feel claws of Rigto!", 0)
end

local function CastLacerate(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_LACERATE, true)
    end
end

local function CastBash(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_BASH, true)
        creature:SendUnitSay("Silence!", 0)
    end
end

local function CastFuriousCharge(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        local distance = creature:GetDistance(victim)
        -- Only charge if target is 8-25 yards away
        if distance >= 8 and distance <= 25 then
            creature:CastSpell(victim, SPELL_FURIOUS_CHARGE, true)
            creature:SendUnitYell("Rigto charge!", 0)
        end
    end
end

local function CastFeralFury(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_FERAL_FURY, true)
    creature:SendUnitSay("Power of wild!", 0)
end

-- Phase Check - Terrifying Roar at 40%, Enrage at 20%
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    local hp = creature:GetHealthPct()

    -- Terrifying Roar at 40% HP
    if hp <= ROAR_THRESHOLD and not p.roar then
        p.roar = true
        
        creature:SendUnitYell("RIGTO SHOW TRUE FURY!", 0)
        creature:CastSpell(creature, SPELL_TERRIFYING_ROAR, true)
    end

    -- Enrage at 20% HP
    if hp <= ENRAGE_THRESHOLD and not p.enrage then
        p.enrage = true
        
        creature:SendUnitYell("DEADWOOD NEVER FALL!", 0)
        creature:CastSpell(creature, SPELL_ENRAGE, true)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("You invade Deadwood land! Rigto crush you!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}
    
    -- Warrior bear rotation
    creature:RegisterEvent(CastMaul, 7000, 0)              -- Maul every 7s
    creature:RegisterEvent(CastSwipe, 10000, 0)            -- Swipe every 10s
    creature:RegisterEvent(CastLacerate, 12000, 0)         -- Lacerate every 12s
    creature:RegisterEvent(CastBash, 15000, 0)             -- Bash every 15s
    creature:RegisterEvent(CastFuriousCharge, 20000, 0)    -- Furious Charge every 20s
    creature:RegisterEvent(CastFeralFury, 25000, 0)        -- Feral Fury every 25s
    
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
            "Rigto strongest!",
            "Deadwood victorious!",
            "Land belong to us!"
        }
        creature:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    creature:SendUnitYell("Deadwood... will... remember...", 0)
    
    phases[guid] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)