--------------------------------------------------------------------------------
-- Chieftain Coldpaw - Delve Boss
-- NPC ID: 600655
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Deadwood furbolg chieftain - cursed shaman with lightning and nature magic
-- Uses curses, lightning spells, healing, and crowd control
-- Goes crazed at low HP for final burn phase
-- 
-- ABILITIES:
-- - Curse of the Deadwood: Curse debuff on pull
-- - Lightning Bolt: Lightning spam
-- - Chain Lightning: Bouncing lightning
-- - Healing Touch: Self-heal
-- - Entangling Roots: Root/snare
-- - Thorns: Damage reflection buff
-- - Starfall: AOE nature damage
-- - Crazed: Enrage at 15% HP
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 85
--------------------------------------------------------------------------------

print("Delve Boss: Chieftain Coldpaw Loaded")

local BOSS_ID = 600655

-- Spells
local SPELL_CURSE_OF_DEADWOOD   = 13583   -- Curse debuff
local SPELL_LIGHTNING_BOLT      = 9532    -- Lightning spam
local SPELL_CHAIN_LIGHTNING     = 15117   -- Bouncing lightning
local SPELL_HEALING_TOUCH       = 5185    -- Self-heal
local SPELL_ENTANGLING_ROOTS    = 11922   -- Root/snare
local SPELL_THORNS              = 9910    -- Damage reflection
local SPELL_STARFALL            = 50294   -- AOE nature damage
local SPELL_CRAZED              = 5915    -- Enrage at 15%

-- Configuration
local CRAZED_THRESHOLD = 15

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
        creature:SendUnitSay("Lightning strike!", 0)
    end
end

local function CastHealingTouch(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    -- Only heal if below 70% HP
    if creature:GetHealthPct() < 70 then
        creature:CastSpell(creature, SPELL_HEALING_TOUCH, false)
        creature:SendUnitYell("Nature heal Coldpaw!", 0)
    end
end

local function CastEntanglingRoots(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_ENTANGLING_ROOTS, false)
        creature:SendUnitSay("Roots bind you!", 0)
    end
end

local function CastThorns(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_THORNS, true)
    creature:SendUnitSay("Thorn protect!", 0)
end

local function CastStarfall(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    
    creature:CastSpell(creature, SPELL_STARFALL, false)
    creature:SendUnitYell("Stars fall on enemies!", 0)
end

-- Phase Check - Crazed at 15%
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    local hp = creature:GetHealthPct()

    -- Crazed at 15% HP
    if hp <= CRAZED_THRESHOLD and not p.crazed then
        p.crazed = true
        
        creature:SendUnitYell("CURSE CONSUME COLDPAW! COLDPAW DESTROY ALL!", 0)
        creature:CastSpell(creature, SPELL_CRAZED, true)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("You dare enter Newman's Landing! Deadwood curse you!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}
    
    -- Apply curse on pull
    local victim = GetTank(creature)
    if victim then
        creature:CastSpell(victim, SPELL_CURSE_OF_DEADWOOD, true)
    end
    
    -- Shaman rotation
    creature:RegisterEvent(CastLightningBolt, 3000, 0)      -- Lightning Bolt every 3s
    creature:RegisterEvent(CastChainLightning, 8000, 0)     -- Chain Lightning every 8s
    creature:RegisterEvent(CastHealingTouch, 20000, 0)      -- Healing Touch check every 20s
    creature:RegisterEvent(CastEntanglingRoots, 15000, 0)   -- Entangling Roots every 15s
    creature:RegisterEvent(CastThorns, 25000, 0)            -- Thorns every 25s
    creature:RegisterEvent(CastStarfall, 30000, 0)          -- Starfall every 30s
    
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
            "Curse claim you!",
            "Deadwood victorious!",
            "Nature punish invader!"
        }
        creature:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    local guid = creature:GetGUIDLow()
    
    creature:SendUnitYell("Curse... broken... Coldpaw... free...", 0)
    
    phases[guid] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)