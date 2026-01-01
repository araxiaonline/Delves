--------------------------------------------------------------------------------
-- Lord Mwargadon (Elwynn Falls) - Boss 2
-- NPC ID: 600633
-- FIXED: Shield Wall now has 8 epic random yells (no more "My shield endures!")
--         Fully GUIDLow-safe phase tracking (like Aquaspawn & Chief Runetusk)
--------------------------------------------------------------------------------
print("Elwynn Falls Boss 2 - Lord Mwargadon Loaded")

local BOSS_ID = 600633

-- Spells
local SHIELD_CHARGE    = 38630
local FORCEFUL_CLEAVE  = 38846
local MORTAL_STRIKE    = 65926
local SHIELD_WALL      = 41196
local THUNDEROUS_STOMP = 56062
local SUMMON_WATER_ELEM= 36826
local FEROCIOUS_ENRAGE = 52400

-- Thresholds
local TH_70 = 70
local TH_50 = 50
local TH_30 = 30
local TH_5  = 5

-- GUIDLow-safe phase tracking
local phases_triggered = {}

-- BADASS Shield Wall Yells (random every time)
local SHIELD_WALL_YELLS = {
    "My shield is unbreakable!",
    "You cannot pierce this defense!",
    "Stand behind my wall of iron!",
    "The tide breaks upon my guard!",
    "This shield has held for centuries!",
    "Your blows mean nothing!",
    "I am the unbreakable bulwark!",
    "Not one step further!"
}

-- SAFE Periodic Abilities
local function CastShieldCharge(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local victim = creature:GetVictim()
    if victim then creature:CastSpell(victim, SHIELD_CHARGE, true) end
end

local function CastForcefulCleave(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local victim = creature:GetVictim()
    if victim then creature:CastSpell(victim, FORCEFUL_CLEAVE, true) end
end

local function CastMortalStrike(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local victim = creature:GetVictim()
    if victim then creature:CastSpell(victim, MORTAL_STRIKE, true) end
end

local function CastShieldWall(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local yell = SHIELD_WALL_YELLS[math.random(#SHIELD_WALL_YELLS)]
    creature:SendUnitYell(yell, 0)
    creature:CastSpell(creature, SHIELD_WALL, true)
end

-- PHASE CHECKER – GUIDLow safe
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local guid = creature:GetGUIDLow()
    phases_triggered[guid] = phases_triggered[guid] or {}
    local p = phases_triggered[guid]
    local hp = creature:GetHealthPct()

    if hp <= TH_5 and not p[5] then
        p[5] = true
        creature:SendUnitYell("The pain fuels my power! YOU will drown in your own blood!", 0)
        creature:CastSpell(creature, FEROCIOUS_ENRAGE, true)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_30 and not p[30] then
        p[30] = true
        creature:SendUnitYell("I command the currents! Drown them, my minion!", 0)
        creature:CastSpell(creature, THUNDEROUS_STOMP, true)
        creature:CastSpell(creature, SUMMON_WATER_ELEM, true)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        creature:SendUnitYell("My patience wears thin! Feel the earth tremble!", 0)
        creature:CastSpell(creature, THUNDEROUS_STOMP, true)

    elseif hp <= TH_70 and not p[70] then
        p[70] = true
        creature:SendUnitYell("You fight with valor, but you cannot withstand my shockwave!", 0)
        creature:CastSpell(creature, THUNDEROUS_STOMP, true)
    end
end

-- COMBAT EVENTS
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("The Elwynn Falls are mine to command! Your interference ends now!", 0)

    local guid = creature:GetGUIDLow()
    phases_triggered[guid] = {}

    creature:RegisterEvent(CastShieldCharge,   7000,  0)
    creature:RegisterEvent(CastForcefulCleave, 11000, 0)
    creature:RegisterEvent(CastMortalStrike,   16000, 0)
    creature:RegisterEvent(CastShieldWall,     25000, 0)  -- Now with epic random lines
    creature:RegisterEvent(PhaseCheck,         1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()  -- Always first
    creature:SendUnitYell("Hmph. Pathetic. Retreat while you still draw breath.", 0)
    phases_triggered[creature:GetGUIDLow()] = nil
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()  -- Always first
    creature:SendUnitYell("The waters... betray... me...", 0)
    phases_triggered[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)