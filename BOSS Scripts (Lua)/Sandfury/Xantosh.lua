--------------------------------------------------------------------------------
-- Xan'tosh - Sandfury Delve Boss (Scarab Summoner)
-- NPC ID: 600622
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Ancient Sandfury necromancer - master of undead scarabs and plague magic
-- Summons DOUBLE scarabs at key thresholds with visual swarm effects
-- Vanilla/AQ40 retail-style with progressive add waves and hex combos
-- 
-- PHASE 1 (100% - 90%): Basic plague/sand rotation
-- PHASE 2 (90% - 70%): Demon Armor + Voodoo Flames + 2x Scarabs summoned
-- PHASE 3 (70% - 30%): Blood Drain activated
-- PHASE 4 (<30%): Sand Storm spam + 2x MORE Scarabs (4 total possible)
--
-- ABILITIES:
-- - Plague Strike: Disease damage on tank (constant)
-- - Sand Breath: Breath weapon on tank (constant)
-- - Dark Smash: Heavy melee hit (constant)
-- - Hex of Mending: Healing reduction curse (every 30s)
-- - Hex of Ravenclaw: Damage increase curse (combo with Mending)
-- - Blood Drain: Life steal from random player (P3+)
-- - Demon Armor: Protective fel buff (P2)
-- - Voodoo Flames: Fire damage aura (P2)
-- - Crypt Scarabs: Visual swarm effect
-- - Raise Undead Scarab: Summons scarab add (x2 per phase!)
-- - Sand Storm: Massive AOE sandstorm (P4)
--
-- MECHANICS:
-- - GUIDLow-safe phase tracking (supports multiple spawns)
-- - Double scarab summons create 2 adds instantly per trigger
-- - Hex combo applies two debuffs simultaneously
-- - Blood Drain creates sustain pressure
-- - Visual swarm effect accompanies scarab summons
-- - No memory leaks (proper cleanup on reset/death)
--
-- RETAIL-LIKE FEATURES:
-- - Scarab summons similar to AQ40 (C'Thun, Viscidus trash)
-- - Hex mechanics similar to Hex Lord Malacrass (ZA)
-- - Progressive add waves increase difficulty
-- - Sand Storm zone control forces movement
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 83-85
-- MAP: Sandfury Delve (Map ID: 905)
-- ADDS: Up to 4x Undead Scarabs possible (NPC 17235)
--------------------------------------------------------------------------------

print("Sandfury Delve Boss 2 - Xan'tosh Loaded")

local BOSS_ID = 600622

local HP_PHASE_2 = 90
local HP_PHASE_3 = 70
local HP_PHASE_4 = 30

-- Core spells
local SPELL_PLAGUE_STRIKE = 55255
local SPELL_DARK_SMASH    = 42723
local SPELL_SAND_BREATH   = 39049
local SPELL_SAND_STORM    = 10092

-- Phase abilities
local SPELL_DEMON_ARMOR      = 34881
local SPELL_VOODOO_FLAMES    = 54795
local SPELL_HEX_OF_MENDING   = 67534
local SPELL_HEX_RAVENCLAW    = 7655
local SPELL_CRYPT_SCARABS    = 54313   -- Visual swarm
local SPELL_RAISE_SCARAB     = 17235   -- Raise Undead Scarab (x2!)
local SPELL_BLOOD_DRAIN      = 41238

-- GUIDLow-safe phase tracking
local phases = {}

local function GetTank(creature)        return creature:GetAITarget(1, true) end
local function GetRandomPlayer(creature) return creature:GetAITarget(0, true) end

-- Hex Combo every 30s
local function CastHexCombo(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local target = GetRandomPlayer(creature)
    if target then
        creature:SendUnitYell("Feel da Sandfury Hex, mon!", 0)
        creature:CastSpell(target, SPELL_HEX_OF_MENDING, true)
        creature:CastSpell(target, SPELL_HEX_RAVENCLAW, true)
    end
end

-- Blood Drain
local function CastBloodDrain(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local target = GetRandomPlayer(creature)
    if target then creature:CastSpell(target, SPELL_BLOOD_DRAIN, true) end
end

-- Sand Storm (phase 4+)
local function CastSandStorm(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, SPELL_SAND_STORM, true)
end

-- Summon 2x Undead Scarabs + visual swarm
local function SummonDoubleScarabs(creature)
    creature:CastSpell(creature, SPELL_CRYPT_SCARABS, true)    -- visual swarm effect
    creature:CastSpell(creature, SPELL_RAISE_SCARAB, true)     -- 1st scarab
    creature:CastSpell(creature, SPELL_RAISE_SCARAB, true)     -- 2nd scarab (instant)
end

-- PHASE CHECKER - GUIDLow-safe
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    local hp = creature:GetHealthPct()

    if hp <= HP_PHASE_4 and not p[4] then
        p[4] = true
        creature:SendUnitYell("Xan'tosh's power unmatched! Ya finished, little insects!", 0)
        SummonDoubleScarabs(creature)           -- 2 scarabs + swarm
        creature:RegisterEvent(CastSandStorm, 30000, 0)

    elseif hp <= HP_PHASE_3 and not p[3] then
        p[3] = true
        creature:SendUnitYell("Ya blood feeds me now! Taste da drain!", 0)
        CastBloodDrain(0,0,0,creature)

    elseif hp <= HP_PHASE_2 and not p[2] then
        p[2] = true
        creature:SendUnitYell("Da ancient gods stir beneath da sand... RISE, MY CHILDREN!", 0)
        creature:CastSpell(creature, SPELL_DEMON_ARMOR, true)
        creature:CastSpell(creature, SPELL_VOODOO_FLAMES, true)
        SummonDoubleScarabs(creature)           -- 2 scarabs + swarm
    end
end

-- Combat Start
local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell("Da plague an' da sand gonna swallow ya whole, mon!", 0)
    
    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    creature:RegisterEvent(function(_,_,_,c)
        if c:IsInCombat() then local t = GetTank(c); if t then c:CastSpell(t, SPELL_PLAGUE_STRIKE, true) end end
    end, math.random(8000,10000), 0)

    creature:RegisterEvent(function(_,_,_,c)
        if c:IsInCombat() then local t = GetTank(c); if t then c:CastSpell(t, SPELL_SAND_BREATH, true) end end
    end, math.random(12000,15000), 0)

    creature:RegisterEvent(function(_,_,_,c)
        if c:IsInCombat() then local t = GetTank(c); if t then c:CastSpell(t, SPELL_DARK_SMASH, true) end end
    end, 18000, 0)

    creature:RegisterEvent(CastHexCombo,   30000, 0)
    creature:RegisterEvent(CastBloodDrain, 20000, 0)
    creature:RegisterEvent(PhaseCheck,     1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell("Da rot claims another day...", 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Da rot... it finally takes me... but da curse lives on...", 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnEnterCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)