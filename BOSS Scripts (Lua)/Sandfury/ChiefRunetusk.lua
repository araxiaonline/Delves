--------------------------------------------------------------------------------
-- Chief Runetusk - Sandfury Delve Boss
-- NPC ID: 600623
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Sandfury troll chieftain - powerful shaman/warrior hybrid with progressive phases
-- Combines shadow magic, elemental powers, and demonic fel corruption
-- Vanilla/TBC retail-style with escalating difficulty through 4 distinct phases
-- 
-- PHASE 1 (100% - 90%): Basic melee rotation with Shadow Bolt and Cleave
-- PHASE 2 (90% - 75%): Demon Armor buff, adds Meteor and Sunder Armor
-- PHASE 3 (75% - 50%): Whirlwind spam, Thunderclap, Earth Shock
-- PHASE 4 (50% - 10%): Fel Flame and Poison Bolt added
-- PHASE 5 (<10%): Massive Enrage with 2.5x scale
--
-- ABILITIES:
-- - Hammer of Justice: Stun on tank
-- - Shadow Bolt: Dark magic spam
-- - Cleave: Frontal cone damage
-- - Demon Armor: Protective fel magic (P2+)
-- - Meteor: Ranged fire damage (P2+)
-- - Sunder Armor: Armor reduction (P2+)
-- - Whirlwind: Spinning melee AOE (P3+)
-- - Thunderclap: AOE nature damage/slow (P3+)
-- - Earth Shock: Interrupt + damage (P3+)
-- - Fel Flame: Corruption fire damage (P4+)
-- - Poison Bolt: Venomous ranged attack (P4+)
-- - Enrage: Massive size/damage increase (P5)
--
-- MECHANICS:
-- - GUIDLow-safe phase tracking (supports multiple spawns)
-- - Progressive ability unlocking as HP decreases
-- - Dramatic scale change at 10% HP
-- - No memory leaks (proper cleanup on reset/death)
--
-- DIFFICULTY: Delve Boss (Solo Fight)
-- LEVEL: 83-85
-- MAP: Sandfury Delve (Map ID: 905)
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

-- GUIDLow-safe phase tracking
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

    if hp <= TH_10 and not p[10] then
        p[10] = true
        creature:SendUnitYell("YA MESSED WIT DA WRONG CHIEFTAIN! FEEL MY TRUE RAGE!", 0)
        creature:SetScale(2.5)
        creature:CastSpell(creature, SPELL_ENRAGE, true)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        creature:SendUnitYell("Let dat Fel fire cleanse dis place!", 0)
        creature:RegisterEvent(CastFelFlame, 25000, 0)
        CastFelFlame(0,0,0,creature)  -- immediate
        creature:RegisterEvent(CastPoisonBolt, 10000, 0)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        creature:SendUnitYell("Get caught in da whirlwind, outsiders!", 0)
        creature:RegisterEvent(CastWhirlwind, 30000, 0)
        creature:CastSpell(creature, SPELL_WHIRLWIND, true)
        creature:RegisterEvent(CastThunderclap, 15000, 0)
        creature:RegisterEvent(CastEarthShock, 8000, 0)

    elseif hp <= TH_90 and not p[90] then
        p[90] = true
        creature:SendUnitYell("Ya weak! My demon armor too strong! Ya armor gonna break, mon!", 0)
        creature:CastSpell(creature, SPELL_DEMON_ARMOR, true)
        creature:RegisterEvent(CastMeteor, 20000, 0)
        creature:RegisterEvent(CastSunder, 12000, 0)
    end
end

-- Combat Events
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("Da Sandfury Delve is mine! Come, mon, and get butchered!", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    creature:RegisterEvent(CastHammer,     14000, 0)
    creature:RegisterEvent(CastShadowBolt, 8000, 0)
    creature:RegisterEvent(CastCleave,     10000, 0)
    creature:RegisterEvent(PhaseCheck,     1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell("Run, cowards!", 0)
    creature:SetScale(1.0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Ahhh... dis sand... she claims me... but ya next, mon! YA NEXT!", 0)
    creature:SetScale(1.0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)