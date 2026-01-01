--------------------------------------------------------------------------------
-- Souse San Rhazo - Sandfury Delve Boss
-- NPC ID: 600621
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Sandfury plague troll boss - disease specialist with leap mechanics
-- Uses persistent disease clouds and electricity to overwhelm enemies
-- Vanilla/TBC retail-style with aggressive leap-to-ranged mechanics
-- 
-- PHASE 1 (100% - 75%): Basic plague/leap rotation
-- PHASE 2 (75% - 50%): First Disease Cloud + Electro Shock
-- PHASE 3 (50% - 15%): Second Disease Cloud + Elemental Armor
-- PHASE 4 (<15%): ALL ABILITIES - Disease Cloud spam, full power unleashed
--
-- ABILITIES:
-- - Plague Strike: Heavy disease damage on tank (constant)
-- - Jump Attack: Leap to farthest player (constant)
-- - Colossal Strike: Massive melee hit (constant)
-- - Disease Cloud: Persistent AOE plague damage (P2+)
-- - Electro Shock: Lightning damage (P2, P4)
-- - Elemental Armor: Protective buff (P3, P4)
-- - Eye Beam: Devastating beam attack (P4)
--
-- MECHANICS:
-- - GUIDLow-safe phase tracking (supports multiple spawns)
-- - Targets FARTHEST player with Jump Attack (anti-ranged kiting)
-- - Disease Cloud persists in area (forces movement)
-- - Progressive ability unlocking creates escalating pressure
-- - No memory leaks (proper cleanup on reset/death)
--
-- RETAIL-LIKE FEATURES:
-- - Jump mechanics similar to Al'ar, Shade of Akama (TBC)
-- - Disease Cloud zone control like Grobbulus, Heigan (Naxx)
-- - Farthest-player targeting discourages LOS abuse
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 83-85
-- MAP: Sandfury Delve (Map ID: 905)
--------------------------------------------------------------------------------

print("Sandfury Delve Boss - Souse San Rhazo Loaded")

local BOSS_ID = 600621

-- Periodic Spells
local SPELL_PLAGUE_STRIKE   = 50688
local SPELL_JUMP_ATTACK     = 61227   -- Leap to farthest
local SPELL_COLOSSAL_STRIKE = 50978

-- Phase Spells - DISEASE CLOUD REPLACES DISEASE BURST
local SPELL_DISEASE_CLOUD   = 50106   -- Nasty persistent AoE plague cloud
local SPELL_ELECTRO_SHOCK   = 64918
local SPELL_ELEMENTAL_ARMOR = 29718
local SPELL_EYE_BEAM        = 59965

-- Thresholds
local TH_75 = 75
local TH_50 = 50
local TH_15 = 15

-- GUIDLow-safe phase tracking
local phases = {}

-- Target helpers
local function GetTank(creature)        return creature:GetVictim() end
local function GetFarthestPlayer(creature)
    local target = creature:GetAITarget(4, true)  -- FARTHEST
    return target or creature:GetAITarget(0, true)
end

-- Core abilities
local function CastPlagueStrike(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, SPELL_PLAGUE_STRIKE, true) end
end

local function CastColossalStrike(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, SPELL_COLOSSAL_STRIKE, true) end
end

local function CastJumpAttack(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local target = GetFarthestPlayer(creature)
    if target then
        creature:CastSpell(target, SPELL_JUMP_ATTACK, true)
    end
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

    if hp <= TH_15 and not p[15] then
        p[15] = true
        creature:SendUnitYell("YA DONE ANGERED DA SANDFURY, MON! CHOKE ON DA PLAGUE!", 0)
        creature:CastSpell(creature, SPELL_DISEASE_CLOUD, true)
        creature:CastSpell(GetTank(creature), SPELL_ELECTRO_SHOCK, true)
        creature:CastSpell(creature, SPELL_ELEMENTAL_ARMOR, true)
        creature:CastSpell(GetTank(creature), SPELL_EYE_BEAM, true)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        creature:SendUnitYell("Da air itself be poisoned now, mon! Breathe deep!", 0)
        creature:CastSpell(creature, SPELL_DISEASE_CLOUD, true)
        creature:CastSpell(creature, SPELL_ELEMENTAL_ARMOR, true)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        creature:SendUnitYell("Feel da sickness spread, mon! Ya lungs gonna burn!", 0)
        creature:CastSpell(creature, SPELL_DISEASE_CLOUD, true)
        creature:CastSpell(GetTank(creature), SPELL_ELECTRO_SHOCK, true)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("YA DARE STEP INTO SOUSE SAN RHAZO'S DELVE? YA GONNA REGRET DIS, MON!", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    creature:RegisterEvent(CastPlagueStrike,    10000, 0)
    creature:RegisterEvent(CastJumpAttack,      15000, 0)
    creature:RegisterEvent(CastColossalStrike,  30000, 0)
    creature:RegisterEvent(PhaseCheck,          1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell("Run away, little softskins! Dis troll be too much for ya!", 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Ughhh... da sand... she take me now... da plague... live on...", 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)