--------------------------------------------------------------------------------
-- Xan'tosh (Sandfury Delve Boss 2) - DOUBLE UNDEAD SCARABS (17235 x2)
-- NPC ID: 600622
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

-- Per-fight phase tracking
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

-- SINGLE PHASE CHECKER
local function PhaseCheck(eventId, delay, calls, creature)
    if not creature:IsInCombat() or creature:IsDead() then
        creature:RemoveEventById(eventId)
        return
    end

    local hp = creature:GetHealthPct()

    if hp <= HP_PHASE_4 and not phases[4] then
        phases[4] = true
        creature:SendUnitYell("Xan'tosh's power unmatched! Ya finished, little insects!", 0)
        SummonDoubleScarabs(creature)           -- 2 scarabs + swarm
        creature:RegisterEvent(CastSandStorm, 30000, 0)

    elseif hp <= HP_PHASE_3 and not phases[3] then
        phases[3] = true
        creature:SendUnitYell("Ya blood feeds me now! Taste da drain!", 0)
        CastBloodDrain(0,0,0,creature)

    elseif hp <= HP_PHASE_2 and not phases[2] then
        phases[2] = true
        creature:SendUnitYell("Da ancient gods stir beneath da sand... RISE, MY CHILDREN!", 0)
        creature:CastSpell(creature, SPELL_DEMON_ARMOR, true)
        creature:CastSpell(creature, SPELL_VOODOO_FLAMES, true)
        SummonDoubleScarabs(creature)           -- 2 scarabs + swarm
    end
end

-- Combat Start
local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell("Da plague an' da sand gonna swallow ya whole, mon!", 0)
    phases = {}

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
    creature:SendUnitYell("Da rot claims another day...", 0)
    creature:RemoveEvents()
    phases = {}
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("Da rot... it finally takes me... but da curse lives on...", 0)
    phases = {}
end

RegisterCreatureEvent(BOSS_ID, 1, OnEnterCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)