--------------------------------------------------------------------------------
-- Grurvuch - Delve Boss
-- NPC ID: 600679
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Rockjaw Trogg shaman boss - ranged caster with totem mechanics
-- Uses lightning spells, shocks, and totems for a classic shaman fight
-- Bloodlusts at 40% HP for final burn phase
-- 
-- ABILITIES:
-- - Lightning Bolt: Fast cast lightning damage (spam)
-- - Chain Lightning: Bouncing lightning to multiple targets
-- - Earth Shock: Interrupt + nature damage
-- - Frost Shock: Frost damage + slow
-- - Tremor Totem: Drops fear-removal totem
-- - Searing Totem: Drops damage-dealing totem
-- - Healing Wave: Self-heal when damaged
-- - Bloodlust: Haste buff at 40% HP
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 83
--------------------------------------------------------------------------------

print("Delve Boss: Grurvuch Loaded")

local BOSS_ID = 600679

-- Spells
local SPELL_LIGHTNING_BOLT  = 9532    -- Fast lightning spam
local SPELL_CHAIN_LIGHTNING = 15659   -- Bouncing lightning
local SPELL_EARTH_SHOCK     = 8046    -- Interrupt/damage
local SPELL_FROST_SHOCK     = 8056    -- Slow + damage
local SPELL_TREMOR_TOTEM    = 8143    -- Fear removal totem
local SPELL_SEARING_TOTEM   = 6363    -- Damage totem
local SPELL_HEALING_WAVE    = 8005    -- Self-heal
local SPELL_BLOODLUST       = 2825    -- Haste buff at 40%

-- Configuration
local BLOODLUST_THRESHOLD = 40

-- GUIDLow-safe phase tracking
local phases = {}

-- Helper functions
local function GetTank(creature) return creature:GetVictim() end

-- Core Abilities
local function CastLightningBolt(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_LIGHTNING_BOLT, false)
    end
end

local function CastChainLightning(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_CHAIN_LIGHTNING, false)
        creature:SendUnitSay("Lightning strike you!", 0)
    end
end

local function CastEarthShock(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_EARTH_SHOCK, true)
    end
end

local function CastFrostShock(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_FROST_SHOCK, true)
        creature:SendUnitSay("Cold death!", 0)
    end
end

local function CastTremorTotem(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_TREMOR_TOTEM, true)
    creature:SendUnitSay("Totem protect!", 0)
end

local function CastSearingTotem(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_SEARING_TOTEM, true)
end

local function CastHealingWave(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    -- Only heal if below 60% HP
    if creature:GetHealthPct() < 60 then
        creature:CastSpell(creature, SPELL_HEALING_WAVE, false)
        creature:SendUnitYell("Spirits heal Grurvuch!", 0)
    end
end

-- Phase Check - Bloodlust at 40%
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]

    -- Bloodlust at 40% HP
    if creature:GetHealthPct() <= BLOODLUST_THRESHOLD and not p.bloodlust then
        p.bloodlust = true
        
        creature:SendUnitYell("POWER OF EARTH!", 0)
        creature:CastSpell(creature, SPELL_BLOODLUST, true)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("You crush gnome camp! Grurvuch crush you!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}
    
    -- Shaman rotation
    creature:RegisterEvent(CastLightningBolt, 3000, 0)     -- Lightning Bolt every 3s
    creature:RegisterEvent(CastChainLightning, 8000, 0)    -- Chain Lightning every 8s
    creature:RegisterEvent(CastEarthShock, 12000, 0)       -- Earth Shock every 12s
    creature:RegisterEvent(CastFrostShock, 15000, 0)       -- Frost Shock every 15s
    creature:RegisterEvent(CastTremorTotem, 30000, 0)      -- Tremor Totem every 30s
    creature:RegisterEvent(CastSearingTotem, 20000, 0)     -- Searing Totem every 20s
    creature:RegisterEvent(CastHealingWave, 25000, 0)      -- Healing Wave check every 25s
    
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
            "Weakling fall!",
            "Trogg stronger!",
            "Earth spirit take you!"
        }
        creature:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    creature:SendUnitYell("Spirits... abandon... Grurvuch...", 0)
    
    phases[guid] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)