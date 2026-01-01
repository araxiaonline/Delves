--------------------------------------------------------------------------------
-- Chief Runetusk (Sandfury Delve Boss 1)
-- NPC ID: 600623
-- Matches all your other boss templates perfectly
--------------------------------------------------------------------------------
print("Sandfury Delve Boss 1 - Chief Runetusk Loaded")

local BOSS_ID = 600623

-- Spells
local SPELL_HAMMER_OF_JUSTICE = 72266
local SPELL_SHADOW_BOLT       = 31022
local SPELL_CLEAVE            = 47520
local SPELL_METEOR            = 75948
local SPELL_SUNDER_ARMOR      = 7386
local SPELL_THUNDERCLAP       = 39595
local SPELL_EARTH_SHOCK       = 50581
local SPELL_POISON_BOLT       = 50522
local SPELL_DEMON_ARMOR       = 47889
local SPELL_WHIRLWIND         = 36132
local SPELL_FEL_FLAME         = 36040
local SPELL_ENRAGE            = 12686

-- Thresholds
local TH_90 = 90
local TH_75 = 75
local TH_50 = 50
local TH_10 = 10

-- Global phase tracking (same as all your other bosses)
local phases = {}

-- Target helpers
local function GetTank(creature)        return creature:GetVictim() end
local function GetRandomPlayer(creature) return creature:GetAITarget(0, true) end

-- Core abilities
local function CastHammer(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, SPELL_HAMMER_OF_JUSTICE, true) end
end

local function CastShadowBolt(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, SPELL_SHADOW_BOLT, true) end
end

local function CastCleave(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, SPELL_CLEAVE, true) end
end

local function CastMeteor(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetRandomPlayer(creature)
    if t then creature:CastSpell(t, SPELL_METEOR, true) end
end

local function CastSunder(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, SPELL_SUNDER_ARMOR, true) end
end

local function CastThunderclap(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, SPELL_THUNDERCLAP, true)
end

local function CastEarthShock(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, SPELL_EARTH_SHOCK, true) end
end

local function CastPoisonBolt(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetRandomPlayer(creature)
    if t then creature:CastSpell(t, SPELL_POISON_BOLT, true) end
end

local function CastWhirlwind(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:SendUnitYell("I carve da sand beneath ya feet!", 0)
    creature:CastSpell(creature, SPELL_WHIRLWIND, true)
end

local function CastFelFlame(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetRandomPlayer(creature)
    if t then
        creature:SendUnitYell("Da sand gonna burn!", 0)
        creature:CastSpell(t, SPELL_FEL_FLAME, true)
    end
end

-- SINGLE PHASE CHECKER (exact same style as all your other bosses)
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local hp = creature:GetHealthPct()

    if hp <= TH_10 and not phases[10] then
        phases[10] = true
        creature:SendUnitYell("YA MESSED WIT DA WRONG CHIEFTAIN! FEEL MY TRUE RAGE!", 0)
        creature:SetScale(2.5)
        creature:CastSpell(creature, SPELL_ENRAGE, true)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_50 and not phases[50] then
        phases[50] = true
        creature:SendUnitYell("Let dat Fel fire cleanse dis place!", 0)
        creature:RegisterEvent(CastFelFlame, 25000, 0)
        CastFelFlame(0,0,0,creature)  -- immediate
        creature:RegisterEvent(CastPoisonBolt, 10000, 0)

    elseif hp <= TH_75 and not phases[75] then
        phases[75] = true
        creature:SendUnitYell("Get caught in da whirlwind, outsiders!", 0)
        creature:RegisterEvent(CastWhirlwind, 30000, 0)
        creature:CastSpell(creature, SPELL_WHIRLWIND, true)
        creature:RegisterEvent(CastThunderclap, 15000, 0)
        creature:RegisterEvent(CastEarthShock, 8000, 0)

    elseif hp <= TH_90 and not phases[90] then
        phases[90] = true
        creature:SendUnitYell("Ya weak! My demon armor too strong! Ya armor gonna break, mon!", 0)
        creature:CastSpell(creature, SPELL_DEMON_ARMOR, true)
        creature:RegisterEvent(CastMeteor, 20000, 0)
        creature:RegisterEvent(CastSunder, 12000, 0)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("Da Sandfury Delve is mine! Come, mon, and get butchered!", 0)

    phases = {}

    creature:RegisterEvent(CastHammer,     14000, 0)
    creature:RegisterEvent(CastShadowBolt, 8000, 0)
    creature:RegisterEvent(CastCleave,     10000, 0)
    creature:RegisterEvent(PhaseCheck,     1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:SendUnitYell("Run, cowards!", 0)
    creature:RemoveEvents()
    creature:SetScale(1.0)
    phases = {}
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Ahhh... dis sand... she claims me... but ya next, mon! YA NEXT!", 0)
    creature:SetScale(1.0)
    phases = {}
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)