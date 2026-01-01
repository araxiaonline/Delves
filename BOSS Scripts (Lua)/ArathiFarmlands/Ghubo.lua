--------------------------------------------------------------------------------
-- Ghubo The Abomination - Arathi Highlands Boss
-- NPC ID: 600698
-- Created by: Manmadedrummer | Delve System
-- ENHANCED VERSION: Improved retail mechanics with slime phases
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Scourge abomination boss - rotting flesh giant with disease/explosion mechanics
-- Enhanced with progressive slime phases and explosive death
-- WotLK retail-style similar to Patchwerk, Grobbulus (Naxxramas)
-- 
-- PHASE 1 (100% - 75%): Basic cleave rotation, building pressure
-- PHASE 2 (75% - 50%): Slime Bolt spam begins (rapid fire disease)
-- PHASE 3 (50% - 25%): Increased Slime Bolt frequency
-- PHASE 4 (25% - 10%): Maximum Slime Bolt spam + warning
-- PHASE 5 (<10%): Enrage activated
-- BERSERK: 7 minutes - Full Slime Bolt spam mode
--
-- ABILITIES:
-- - Cleave: Frontal cone damage (every 45s)
-- - Slime Bolt: Disease projectile (P2+, increases with phases)
-- - Enrage: Massive damage/speed increase at 10% HP
-- - Berserk: 7-minute hard enrage with rapid Slime Bolt spam
-- - Exploding Abomination: Detonates on death (massive AOE)
--
-- MECHANICS:
-- - GUIDLow-safe phase tracking (supports multiple spawns)
-- - Progressive Slime Bolt frequency creates escalating damage
-- - Hard enrage timer creates time pressure
-- - Explosive death punishes poor positioning
-- - No memory leaks (proper cleanup on reset/death)
--
-- RETAIL-LIKE FEATURES:
-- - Patchwerk-style enrage timer (7min berserk)
-- - Grobbulus-style slime mechanics (projectile spam)
-- - Explosive death similar to Unstable Ghoul
-- - Progressive phase intensity matches Naxx design
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 83-85
-- MAP: Arathi Highlands Delve (Map ID: 912)
-- BERSERK TIMER: 7 minutes (420 seconds)
--------------------------------------------------------------------------------

print("Arathi Highlands Boss 1 - Ghubo The Abomination Loaded (Enhanced)")

local BOSS_ID = 600698

local CLEAVE                = 20691
local ENRAGE                = 38166
local BERSERK               = 46587
local SLIME_BOLT            = 32309
local EXPLODING_ABOMINATION = 58231

local BERSERK_TIME_MS = 420000  -- 7 minutes

local TH_75 = 75
local TH_50 = 50
local TH_25 = 25
local TH_10 = 10

local EVENT_CLEAVE       = 101
local EVENT_SLIME_BOLT   = 102
local EVENT_BERSERK      = 103
local EVENT_PHASE_CHECK  = 999

local phases = {}

--------------------------------------------------------------------------------
-- ABILITIES
--------------------------------------------------------------------------------
local function CastCleave(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = self:GetVictim()
    if target then self:CastSpell(target, CLEAVE, true) end
end

local function CastSlimeBolt(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SLIME_BOLT, true)
end

local function StartBerserk(_, _, _, self)
    if not self:IsInCombat() then return end
    self:SendUnitYell("TIIME... IS... OVEER! *roar* BERSERK!", 0)
    self:CastSpell(self, BERSERK, true)
    self:RegisterEvent(CastSlimeBolt, 1500, 0, EVENT_SLIME_BOLT)
end

--------------------------------------------------------------------------------
-- PHASE CHECKER - GUIDLow-safe with IMPROVED SLIME MECHANICS
--------------------------------------------------------------------------------
local function PhaseCheck(eventId, _, _, self)
    if not self:IsInCombat() or self:IsDead() then
        self:RemoveEventById(eventId)
        return
    end

    local guid = self:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    local hp = self:GetHealthPct()

    if hp <= TH_10 and not p[10] then
        p[10] = true
        self:SendUnitYell("RAGH! GHUBO... SMAAASH! *enraged roar*", 0)
        self:CastSpell(self, ENRAGE, true)

    elseif hp <= TH_25 and not p[25] then
        p[25] = true
        self:SendUnitYell("Rot... spreads... FASTER! *cough*", 0)
        -- Upgrade to very fast Slime Bolt spam
        self:RemoveEventById(EVENT_SLIME_BOLT)
        self:RegisterEvent(CastSlimeBolt, 2000, 0, EVENT_SLIME_BOLT)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        self:SendUnitYell("Decay... accelerates! *gurgle*", 0)
        -- Upgrade to fast Slime Bolt spam
        self:RemoveEventById(EVENT_SLIME_BOLT)
        self:RegisterEvent(CastSlimeBolt, 3000, 0, EVENT_SLIME_BOLT)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        self:SendUnitYell("Bile... rises! Slime... flows!", 0)
        -- Start Slime Bolt spam
        self:RegisterEvent(CastSlimeBolt, 5000, 0, EVENT_SLIME_BOLT)
    end
end

--------------------------------------------------------------------------------
-- COMBAT EVENTS
--------------------------------------------------------------------------------
local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell("Ghh... W-waant... flessh! *roar*", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    creature:RegisterEvent(CastCleave,     45000, 0, EVENT_CLEAVE)
    creature:RegisterEvent(StartBerserk,   BERSERK_TIME_MS, 1, EVENT_BERSERK)
    creature:RegisterEvent(PhaseCheck,     1000,  0, EVENT_PHASE_CHECK)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell("Rrrr... not done... RETUUURN!", 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:CastSpell(creature, EXPLODING_ABOMINATION, true)
    creature:SendUnitYell("GHUBO... EXPLOOODE! *BOOM*", 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnEnterCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)