--------------------------------------------------------------------------------
-- Rugoldt The Corrupt - Delve Boss
-- NPC ID: 600672
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Demonic wrathguard boss - fel-empowered melee bruiser with chaos fire
-- Uses cleaves, mana burns, and progressive power-ups as health decreases
-- BC retail-style phase progression with self-buffs at 50%, 25%, and 15% HP
-- 
-- PHASE 1 (100% - 50%): Strong Cleave, Mana Burn, Decimate, Fel Stomp
-- PHASE 2 (50% - 15%): Gains Flames of Chaos (fire AOE)
-- PHASE 3 (<15%): Frenzies (final burn)
--
-- ABILITIES:
-- - Strong Cleave: Frontal cone cleave attack
-- - Mana Burn: Drains mana from casters
-- - Decimate: Heavy hit on tank
-- - Fel Stomp: AOE knockback
-- - Mortal Strike: Healing reduction
-- - Flames of Chaos: Fire AOE at 50% HP
-- - Frenzy: Enrage at 15% HP
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 84
--------------------------------------------------------------------------------

print("Delve Boss: Rugoldt The Corrupt Loaded")

local BOSS_ID = 600672

-- Spells
local SPELL_STRONG_CLEAVE       = 8255    -- Frontal cleave
local SPELL_MANA_BURN           = 12745   -- Mana drain
local SPELL_DECIMATE            = 13459   -- Heavy hit
local SPELL_FEL_STOMP           = 7139    -- AOE knockback
local SPELL_MORTAL_STRIKE       = 32736   -- Healing reduction
local SPELL_FLAMES_OF_CHAOS     = 10854   -- Fire AOE (50% HP)
local SPELL_FRENZY              = 8269    -- Enrage (15% HP)

-- Configuration
local PHASE_2_THRESHOLD = 50
local PHASE_3_THRESHOLD = 15

-- GUIDLow-safe phase tracking
local phases = {}

-- Helper functions
local function GetTank(creature) return creature:GetVictim() end

-- Core Abilities
local function CastStrongCleave(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_STRONG_CLEAVE, true)
    end
end

local function CastManaBurn(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        -- Prioritize mana users
        if victim:GetPowerType() == 0 and victim:GetMaxPower(0) > 0 then
            creature:CastSpell(victim, SPELL_MANA_BURN, false)
            creature:SendUnitSay("Your magic is nothing!", 0)
        end
    end
end

local function CastDecimate(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_DECIMATE, false)
    end
end

local function CastFelStomp(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_FEL_STOMP, true)
    creature:SendUnitYell("FEEL THE FEL!", 0)
end

local function CastMortalStrike(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_MORTAL_STRIKE, true)
    end
end

-- Phase 2 Ability (50% HP)
local function CastFlamesOfChaos(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_FLAMES_OF_CHAOS, true)
    creature:SendUnitYell("Chaos consumes you!", 0)
end

-- Phase Check - BC retail style progressive phases
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    local hp = creature:GetHealthPct()

    -- Phase 2: Flames of Chaos at 50% HP
    if hp <= PHASE_2_THRESHOLD and not p.phase2 then
        p.phase2 = true
        
        creature:SendUnitYell("The Legion empowers me!", 0)
        
        -- Add Flames of Chaos to rotation
        creature:RegisterEvent(CastFlamesOfChaos, 20000, 0)
    end

    -- Phase 3: Frenzy at 15% HP
    if hp <= PHASE_3_THRESHOLD and not p.phase3 then
        p.phase3 = true
        
        creature:SendUnitYell("RUGOLDT WILL NOT FALL!", 0)
        creature:CastSpell(creature, SPELL_FRENZY, true)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("The Altar of Storms will be your grave!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}
    
    -- Phase 1 rotation
    creature:RegisterEvent(CastStrongCleave, 8000, 0)       -- Strong Cleave every 8s
    creature:RegisterEvent(CastManaBurn, 15000, 0)          -- Mana Burn every 15s
    creature:RegisterEvent(CastDecimate, 12000, 0)          -- Decimate every 12s
    creature:RegisterEvent(CastFelStomp, 25000, 0)          -- Fel Stomp every 25s
    creature:RegisterEvent(CastMortalStrike, 10000, 0)      -- Mortal Strike every 10s
    
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
            "Another soul for the Legion!",
            "Pathetic mortal!",
            "The Burning Legion is eternal!"
        }
        creature:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    creature:SendUnitYell("The Legion... will return...", 0)
    
    phases[guid] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)