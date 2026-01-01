--------------------------------------------------------------------------------
-- Souse San Rhazon (Sandfury Delve Boss)
-- NPC ID: 600621
--------------------------------------------------------------------------------
print("Sandfury Delve Boss - Souse San Rhazon Loaded")

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

-- Global phase tracking (safe)
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

-- PHASE CHECKER - NOW SPREADS DISEASE CLOUD LIKE A TRUE PLAGUE TROLL
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local hp = creature:GetHealthPct()

    if hp <= TH_15 and not phases[15] then
        phases[15] = true
        creature:SendUnitYell("YA DONE ANGERED DA SANDFURY, MON! CHOKE ON DA PLAGUE!", 0)
        creature:CastSpell(creature, SPELL_DISEASE_CLOUD, true)   -- Cloud 1
        creature:CastSpell(GetTank(creature), SPELL_ELECTRO_SHOCK, true)
        creature:CastSpell(creature, SPELL_ELEMENTAL_ARMOR, true)
        creature:CastSpell(GetTank(creature), SPELL_EYE_BEAM, true)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_50 and not phases[50] then
        phases[50] = true
        creature:SendUnitYell("Da air itself be poisoned now, mon! Breathe deep!", 0)
        creature:CastSpell(creature, SPELL_DISEASE_CLOUD, true)   -- Cloud 2
        creature:CastSpell(creature, SPELL_ELEMENTAL_ARMOR, true)

    elseif hp <= TH_75 and not phases[75] then
        phases[75] = true
        creature:SendUnitYell("Feel da sickness spread, mon! Ya lungs gonna burn!", 0)
        creature:CastSpell(creature, SPELL_DISEASE_CLOUD, true)   -- Cloud 3
        creature:CastSpell(GetTank(creature), SPELL_ELECTRO_SHOCK, true)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("YA DARE STEP INTO SOUSE SAN RHAZON'S DELVE? YA GONNA REGRET DIS, MON!", 0)

    phases = {}

    creature:RegisterEvent(CastPlagueStrike,    10000, 0)
    creature:RegisterEvent(CastJumpAttack,      15000, 0)
    creature:RegisterEvent(CastColossalStrike,  30000, 0)
    creature:RegisterEvent(PhaseCheck,          1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:SendUnitYell("Run away, little softskins! Dis troll be too much for ya!", 0)
    creature:RemoveEvents()
    phases = {}
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Ughhh... da sand... she take me now... da plague... live on...", 0)
    phases = {}
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)