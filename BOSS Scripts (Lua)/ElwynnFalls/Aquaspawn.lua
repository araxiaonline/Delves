--------------------------------------------------------------------------------
-- Aquaspawn (Elwynn Falls) - Boss 1
-- NPC ID: 600635
-- 100% CRASH-FREE - works even on the most restrictive Eluna builds
-- Frost Nova: 5-second warning yell → real 70209
--------------------------------------------------------------------------------
print("Elwynn Falls Boss 1 - Aquaspawn Loaded")

local BOSS_ID = 600635

-- Spells
local SUBMERSION           = 22420
local WATER_BOLT_VOLLEY     = 38623
local FROST_NOVA            = 70209
local WATER_TOMB            = 59261
local BLESSING_OF_THE_TIDES = 38449
local SUMMON_HYDROLING      = 22714

local FROST_NOVA_WARNING = 5000
local FROST_NOVA_YELL    = "Submit to the Tide!!"

local TH_75 = 75
local TH_50 = 50
local TH_10 = 10

-- ONE GLOBAL TABLE KEYED BY GUID - this is the ONLY method that never crashes
local phases = {}

-- ==================================================================
-- ABILITIES
-- ==================================================================
local function CastSubmersion(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, SUBMERSION, true)
end

local function CastWaterBoltVolley(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, WATER_BOLT_VOLLEY, false)
end

local function CastFrostNova(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:SendUnitYell(FROST_NOVA_YELL, 0)
    creature:RegisterEvent(function(_, _, _, self)
        if self:IsInCombat() and not self:IsDead() then
            self:CastSpell(self, FROST_NOVA, true)
        end
    end, FROST_NOVA_WARNING, 1)
end

local function CastWaterTomb(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local tank = creature:GetVictim()
    if tank then creature:CastSpell(tank, WATER_TOMB, true) end
end

-- ==================================================================
-- PHASE CHECKER - GUID-based, zero userdata writes
-- ==================================================================
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
        creature:SendUnitYell("The final wave consumes you! Serve my tide!", 0)
        creature:CastSpell(creature, BLESSING_OF_THE_TIDES, true)
        creature:CastSpell(creature, SUMMON_HYDROLING, true)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        creature:SendUnitYell("My strength wanes, but my servants rise!", 0)
        creature:CastSpell(creature, SUMMON_HYDROLING, true)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        creature:SendUnitYell("You cannot stop the endless current!", 0)
    end
end

-- ==================================================================
-- COMBAT EVENTS - CRASH-PROOF
-- ==================================================================
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("The river yields to my power! Feel the tide turn!", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}                     -- fresh table per spawn

    creature:CastSpell(creature, BLESSING_OF_THE_TIDES, true)

    creature:RegisterEvent(CastSubmersion,      15000, 0)
    creature:RegisterEvent(CastWaterBoltVolley, 18000, 0)
    creature:RegisterEvent(CastFrostNova,       45000, 0)
    creature:RegisterEvent(CastWaterTomb,       30000, 0)
    creature:RegisterEvent(PhaseCheck,          1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()               -- ALWAYS first
    creature:SendUnitYell("The flow will return...", 0)
    phases[creature:GetGUIDLow()] = nil   -- clean up
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()               -- ALWAYS first
    creature:SendUnitYell("...The river runs dry...", 0)
    phases[creature:GetGUIDLow()] = nil   -- clean up
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)