--------------------------------------------------------------------------------
-- Fleet Master Skaldron (Quel'Thalas Island) - Boss 1
-- NPC ID: 600648
--------------------------------------------------------------------------------
print("Quel'Thalas Island Boss 1 - Fleet Master Skaldron Loaded")

local BOSS_ID = 600648

-- Periodic Spells
local HEMORRHAGE        = 45897
local GHOUL_SLASH       = 70396
local DETERMINED_STAB   = 55104
local PIERCING_JAB      = 31551
local FESTERING_RASH    = 15848

-- Phase Combo Spells
local STORM_PUNCH       = 56352   -- Lightning-charged knockback
local SMOKE_BOMB        = 7964    -- Visibility drop

-- Health Thresholds
local TH_75 = 75
local TH_50 = 50
local TH_15 = 15

-- GUIDLow-safe phase tracking
local phases = {}

-- Pirate voice lines (thunder & plague edition)
local YELL_75 = {
    "Shiver me timbers! Taste the storm I command!",
    "I’ll send ye flyin’ with thunder in yer bones!",
    "Lightning and steel — yer end comes swift!"
}

local YELL_50 = {
    "The storm descends! Ye'll never see me blade through the fog!",
    "Feel the wrath of a thousand tempests!",
    "Thunder roars — and so do I!"
}

local YELL_15 = {
    "No quarter! I'll blast ye straight to the Maelstrom!",
    "Even Davy Jones fears me thunder!",
    "One last storm to sink ye all!"
}

-- Helper: Storm Punch + Smoke Bomb
local function DoPhaseCombo(creature)
    local tank = creature:GetVictim()
    if tank then
        creature:CastSpell(tank, STORM_PUNCH, true)
    end
    creature:CastSpell(creature, SMOKE_BOMB, true)
end

-- NEW: Festering Rash – on pull + every 120 seconds
local function CastFesteringRash(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    creature:CastSpell(creature, FESTERING_RASH, true)  -- AoE disease on self = hits raid
end

-- Periodic abilities
local function CastHemorrhage(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = creature:GetVictim()
    if t then creature:CastSpell(t, HEMORRHAGE, true) end
end

local function CastDeterminedStab(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = creature:GetVictim()
    if t then creature:CastSpell(t, DETERMINED_STAB, true) end
end

local function CastPiercingJab(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = creature:GetVictim()
    if t then creature:CastSpell(t, PIERCING_JAB, true) end
end

local function CastGhoulSlash(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = creature:GetVictim()
    if t then creature:CastSpell(t, GHOUL_SLASH, true) end
end

-- SINGLE ROBUST PHASE CHECKER
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
        creature:SendUnitYell(YELL_15[math.random(#YELL_15)], 0)
        DoPhaseCombo(creature)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        creature:SendUnitYell(YELL_50[math.random(#YELL_50)], 0)
        DoPhaseCombo(creature)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        creature:SendUnitYell(YELL_75[math.random(#YELL_75)], 0)
        DoPhaseCombo(creature)
    end
end

-- COMBAT EVENTS
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("Ahoy, landlubbers! Yer souls are forfeit to the deep!", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    -- Immediate Festering Rash on pull
    creature:CastSpell(creature, FESTERING_RASH, true)

    -- Core rotation
    creature:RegisterEvent(CastHemorrhage,     7000,  0)   -- Replaces Gouge
    creature:RegisterEvent(CastDeterminedStab,11000, 0)
    creature:RegisterEvent(CastPiercingJab,   15000, 0)
    creature:RegisterEvent(CastGhoulSlash,    30000, 0)

    -- Festering Rash every 2 minutes (starts immediately after first cast)
    creature:RegisterEvent(CastFesteringRash, 120000, 0)

    -- Phase checker
    creature:RegisterEvent(PhaseCheck,        1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell("Sail away, cowards! But the Captain's curse follows ye!", 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Me gold... me power... gone to the cold sea gods...", 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)