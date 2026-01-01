--------------------------------------------------------------------------------
-- Lithianawan (Quel'Thalas Island) - Boss 2
-- NPC ID: 600649
-- FINAL: GUIDLow-safe, epic pirate-mage voice lines, no crashes, no phase bleeding
--------------------------------------------------------------------------------
print("Quel'Thalas Island Boss 2 - Lithianawan Loaded")

local BOSS_ID = 600649

-- Periodic Spells
local VOID_BOLT          = 21066
local SHADOW_BOLT_VOLLEY = 29924
local IMMOLATE           = 75383

-- Phase Spells
local FIRE_NOVA          = 20203
local CURSE_OF_THORNS    = 16247
local ANCIENT_CURSE      = 60121
local HELL_FIRE          = 39132

-- Thresholds
local TH_75 = 75
local TH_50 = 50
local TH_35 = 35
local TH_15 = 15

-- GUIDLow-safe phase tracking (same unbreakable pattern as every other boss)
local phases = {}

-- Epic random yells (she's a sassy sea-witch pirate now)
local CURSE_WARNINGS = {
    "Feel the weight of the sea's ancient wrath!",
    "Cursed be yer bones and yer gold!",
    "The deep remembers every slight!",
    "May the tides drag ye down forever!"
}

local FIRE_WARNINGS = {
    "Burn, burn, burn! Only ash remains!",
    "I’ll roast ye like fish on a spit!",
    "Feel the fury of a thousand suns!"
}

-- Helper: Curse Combo
local function CastCurseCombo(creature)
    local tank = creature:GetVictim()
    if tank then
        creature:CastSpell(tank, CURSE_OF_THORNS, true)
        creature:CastSpell(tank, ANCIENT_CURSE, true)
    end
end

-- SAFE Periodic Abilities
local function CastShadowBoltVolley(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, SHADOW_BOLT_VOLLEY, true)
end

local function CastImmolate(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local tank = creature:GetVictim()
    if tank then creature:CastSpell(tank, IMMOLATE, true) end
end

local function CastVoidBolt(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local tank = creature:GetVictim()
    if tank then creature:CastSpell(tank, VOID_BOLT, true) end
end

-- PHASE CHECKER – 100% GUIDLow safe
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
        creature:SendUnitYell("Ye cannot stop the dark magic of the deep!", 0)
        creature:SendUnitYell(CURSE_WARNINGS[math.random(#CURSE_WARNINGS)], 0)
        CastCurseCombo(creature)
        creature:CastSpell(creature, FIRE_NOVA, true)
        creature:RemoveEventById(eventId)  -- final phase

    elseif hp <= TH_35 and not p[35] then
        p[35] = true
        creature:SendUnitYell("Feel the shadows twist your luck, fools!", 0)
        creature:SendUnitYell(CURSE_WARNINGS[math.random(#CURSE_WARNINGS)], 0)
        CastCurseCombo(creature)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        creature:SendUnitYell("Prepare to be blasted back to the nearest port!", 0)
        creature:SendUnitYell(CURSE_WARNINGS[math.random(#CURSE_WARNINGS)], 0)
        CastCurseCombo(creature)
        creature:CastSpell(creature, FIRE_NOVA, true)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        creature:SendUnitYell("Your courage is cursed, land-rats!", 0)
        creature:SendUnitYell(CURSE_WARNINGS[math.random(#CURSE_WARNINGS)], 0)
        CastCurseCombo(creature)
        creature:SendUnitYell(FIRE_WARNINGS[math.random(#FIRE_WARNINGS)], 0)
        creature:CastSpell(creature, HELL_FIRE, true)
    end
end

-- COMBAT EVENTS
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("I'll sink your hopes faster than a leaky barrel!", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    creature:RegisterEvent(CastShadowBoltVolley, 8000,  0)
    creature:RegisterEvent(CastImmolate,        12000, 0)
    creature:RegisterEvent(CastVoidBolt,        25000, 0)
    creature:RegisterEvent(PhaseCheck,          1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()  -- Always first
    creature:SendUnitYell("This fight ain't worth a single copper piece!", 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()  -- Always first
    creature:SendUnitYell("The spell... is broken...", 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)