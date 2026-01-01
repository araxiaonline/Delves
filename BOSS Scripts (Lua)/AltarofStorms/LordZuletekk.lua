--------------------------------------------------------------------------------
-- Lord Zul'etekk - Delve Boss
-- NPC ID: 600671
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Eredar sorcerer boss - powerful warlock with shadow/fire magic and summons
-- Uses multiple DOTs, fears, and summons Felhound adds at key health thresholds
-- BC retail-style caster with Rain of Fire and Shadow Flame abilities
-- 
-- PHASE 1 (100% - 60%): Shadow Bolt spam, DOTs, curses, Rain of Fire
-- PHASE 2 (60% - 30%): Summons first Felhound
-- PHASE 3 (<30%): Summons second Felhound, intensifies abilities
--
-- ABILITIES:
-- - Shadow Bolt: Shadow damage spam
-- - Immolate: Fire DOT
-- - Curse of Agony: Shadow DOT curse
-- - Corruption: Shadow DOT
-- - Rain of Fire: AOE fire damage
-- - Fear: Fear CC
-- - Shadow Flame: Cone shadow/fire damage
-- - Summon Felhound: Summons demon add at 60% and 30%
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 84
--------------------------------------------------------------------------------

print("Delve Boss: Lord Zul'etekk Loaded")

local BOSS_ID = 600671

-- Spells
local SPELL_SHADOW_BOLT         = 15472   -- Shadow bolt spam
local SPELL_IMMOLATE            = 11962   -- Fire DOT
local SPELL_CURSE_OF_AGONY      = 11712   -- DOT curse
local SPELL_CORRUPTION          = 11672   -- Shadow DOT
local SPELL_RAIN_OF_FIRE        = 11990   -- AOE fire
local SPELL_FEAR                = 26070   -- Fear CC
local SPELL_SHADOW_FLAME        = 22539   -- Cone shadow/fire damage
local SPELL_SUMMON_FELHOUND     = 691     -- Summons Felhound

-- Configuration
local FELHOUND_1_THRESHOLD = 60
local FELHOUND_2_THRESHOLD = 30

-- GUIDLow-safe phase tracking
local phases = {}

-- Helper functions
local function GetTank(creature) return creature:GetVictim() end

-- Core Abilities
local function CastShadowBolt(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_SHADOW_BOLT, false)
    end
end

local function CastImmolate(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_IMMOLATE, true)
        creature:SendUnitSay("Burn in fel fire!", 0)
    end
end

local function CastCurseOfAgony(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_CURSE_OF_AGONY, true)
    end
end

local function CastCorruption(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_CORRUPTION, true)
    end
end

local function CastRainOfFire(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_RAIN_OF_FIRE, false)
        creature:SendUnitYell("Fire rains from the heavens!", 0)
    end
end

local function CastFear(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_FEAR, false)
        creature:SendUnitSay("Cower before the Legion!", 0)
    end
end

local function CastShadowFlame(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_SHADOW_FLAME, false)
        creature:SendUnitYell("Shadow and flame!", 0)
    end
end

-- Summon Ability
local function SummonFelhound(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_SUMMON_FELHOUND, true)
    creature:SendUnitYell("Come forth, servant of the Legion!", 0)
end

-- Phase Check - BC retail style summon phases
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    local hp = creature:GetHealthPct()

    -- Phase 2: Summon first Felhound at 60% HP
    if hp <= FELHOUND_1_THRESHOLD and not p.felhound1 then
        p.felhound1 = true
        
        creature:SendUnitYell("Aid me, hound of the Legion!", 0)
        SummonFelhound(nil, nil, nil, creature)
    end

    -- Phase 3: Summon second Felhound at 30% HP
    if hp <= FELHOUND_2_THRESHOLD and not p.felhound2 then
        p.felhound2 = true
        
        creature:SendUnitYell("Rise, my pet! Destroy them!", 0)
        SummonFelhound(nil, nil, nil, creature)
        
        -- Intensify abilities in Phase 3
        creature:RegisterEvent(CastShadowFlame, 12000, 0)  -- Add Shadow Flame
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("You dare defile the Altar of Storms?!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}
    
    -- Warlock rotation
    creature:RegisterEvent(CastShadowBolt, 3000, 0)         -- Shadow Bolt every 3s
    creature:RegisterEvent(CastImmolate, 10000, 0)          -- Immolate every 10s
    creature:RegisterEvent(CastCurseOfAgony, 15000, 0)      -- Curse of Agony every 15s
    creature:RegisterEvent(CastCorruption, 12000, 0)        -- Corruption every 12s
    creature:RegisterEvent(CastRainOfFire, 20000, 0)        -- Rain of Fire every 20s
    creature:RegisterEvent(CastFear, 25000, 0)              -- Fear every 25s
    
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
            "Your soul is mine!",
            "The Legion grows stronger!",
            "Witness the power of the eredar!"
        }
        creature:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    creature:SendUnitYell("Impossible... the Legion... cannot... fail...", 0)
    
    phases[guid] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)