--------------------------------------------------------------------------------
-- Gurgles (Elwynn Falls) - Boss 3 - FINAL VERSION
-- NPC ID: 600634
-- 100% GUIDLow-safe, no crashes, way more personality
--------------------------------------------------------------------------------
print("Elwynn Falls Boss 3 - Gurgles Loaded")

local BOSS_ID = 600634

-- Spells
local PIERCING_SLASH   = 48878
local MUTATED_SLASH    = 70542
local ECK_SPIT         = 55814    -- AoE Nature + Slow
local DOUBLE_SPEED     = 59737
local WATERY_EXPLOSION = 37852
local FEROCIOUS_ENRAGE = 52400
local BATTLE_SHOUT     = 27578

-- Thresholds
local TH_75 = 75
local TH_50 = 50
local TH_35 = 35
local TH_25 = 25
local TH_5  = 5

local ENRAGE_SCALE = 1.6

-- GUIDLow-safe phase tracking (same unbreakable pattern as Aquaspawn / Runetusk / Mwargadon)
local phases = {}

-- Epic random murloc yells for each phase (pure chaos, pure fun)
local YELLS_75 = { "Mrglglglgl!", "Mrrglgl!", "Glub glub glub!" }
local YELLS_50 = { "Augh-ruba!", "RwlRwlRwl!", "GRRAAAGHL!" }
local YELLS_35 = { "Mmmrggl!", "Blubblubblub!", "MRGLMRGLMRGL!" }
local YELLS_25 = { "Merg-le-lerg!", "GLRGLRGLRGL!", "ABABABABABABABA!" }

-- SAFE Periodic Abilities
local function CastPiercingSlash(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = creature:GetVictim()
    if t then creature:CastSpell(t, PIERCING_SLASH, true) end
end

local function CastMutatedSlash(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = creature:GetVictim()
    if t then creature:CastSpell(t, MUTATED_SLASH, true) end
end

local function CastEckSpit(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, ECK_SPIT, true)
end

local function CastDoubleSpeed(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, DOUBLE_SPEED, true)
end

local function CastWateryExplosion(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, WATERY_EXPLOSION, true)
end

-- PHASE CHECKER – fully GUIDLow safe
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    local hp = creature:GetHealthPct()

    if hp <= TH_5 and not p[5] then
        p[5] = true
        creature:SendUnitYell("MRRGGLLG! NOOO! GLGLGLG! YOU WILL BE CRUSHED!", 0)
        creature:CastSpell(creature, FEROCIOUS_ENRAGE, true)
        creature:SetScale(ENRAGE_SCALE)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_25 and not p[25] then
        p[25] = true
        creature:SendUnitYell(YELLS_25[math.random(#YELLS_25)], 0)

    elseif hp <= TH_35 and not p[35] then
        p[35] = true
        creature:SendUnitYell(YELLS_35[math.random(#YELLS_35)], 0)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        creature:SendUnitYell(YELLS_50[math.random(#YELLS_50)], 0)
        creature:CastSpell(creature, BATTLE_SHOUT, true)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        creature:SendUnitYell(YELLS_75[math.random(#YELLS_75)], 0)
    end
end

-- COMBAT EVENTS
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("MRRRGLGLGLGLGLGL! (The water is mine!)", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    creature:RegisterEvent(CastPiercingSlash,   6000,  0)
    creature:RegisterEvent(CastMutatedSlash,    10000, 0)
    creature:RegisterEvent(CastEckSpit,         18000, 0)
    creature:RegisterEvent(CastDoubleSpeed,     30000, 0)
    creature:RegisterEvent(CastWateryExplosion, 30000, 0)
    creature:RegisterEvent(PhaseCheck,          1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()  -- Always first
    creature:SendUnitYell("Gurr... glglg...", 0)
    creature:SetScale(1.0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()  -- Always first
    creature:SendUnitYell("Mee... rgll...", 0)
    creature:SetScale(1.0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)