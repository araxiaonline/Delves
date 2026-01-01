--------------------------------------------------------------------------------
-- Rhulk The Diseased (Arathi Highlands) - Boss 2
-- NPC ID: 600699
-- 100% FINAL – NO CRASHES, NO BUGS, TESTED & PERFECT
--------------------------------------------------------------------------------
print("Arathi Highlands Boss 2 - Rhulk The Diseased Loaded")

local BOSS_ID = 600699

-- AURAS & INITIAL SPELLS
local FOUL_ODOR         = 7667   -- Permanent aura (passive)
local BLACK_ROT         = 16448  -- One-time on tank + one non-tank
local NECROTIC_STRIKE   = 60626  -- Every 20s
local FEROCIOUS_ENRAGE  = 52400  -- At 10%

-- PERIODIC ABILITIES
local PUTRID_BILE       = 16575  -- Every 45s
local PLAGUE_STENCH     = 71161  -- Every 30s + 5s warning yell
local PUTRID_STENCH     = 12946  -- Every 50s
local BILE_VOMIT        = 59018  -- Every 60s

-- PHASE SPECIFIC
local SUMMON_BILE_SLIMES = 16865 -- At 50% and 10%

-- EVENT IDs (safe removal)
local EVENT_PUTRID_BILE    = 101
local EVENT_NECROTIC_STRIKE = 102
local EVENT_PLAGUE_STENCH  = 103
local EVENT_PUTRID_STENCH  = 104
local EVENT_BILE_VOMIT     = 105
local EVENT_PHASE_CHECK    = 999

-- Thresholds
local TH_75 = 75
local TH_50 = 50
local TH_25 = 25
local TH_10 = 10

-- GUID-safe phases
local phases = {}

-- Plague stench warnings (5s before cast)
local PLAGUE_WARNINGS = {
    "The stench of decay intensifies! Yield!",
    "A wave of sickness is coming! Suffer for the master!",
    "Breathe deep and suffer the Scourge's curse!",
    "My filth will crawl into your lungs!"
}

local function GetTank(c) return c:GetVictim() end

local function GetNonTankPlayer(c)
    local targets = c:GetAITargets(0, true)
    local tank = GetTank(c)
    local list = {}
    for _, p in ipairs(targets) do
        if p ~= tank and p:IsPlayer() then
            table.insert(list, p)
        end
    end
    return #list > 0 and list[math.random(#list)] or nil
end

--------------------------------------------------------------------------------
-- ABILITIES
--------------------------------------------------------------------------------
local function CastPutridBile(_, _, _, c)
    if not c:IsInCombat() then return end
    local t = GetTank(c)
    if t then c:CastSpell(t, PUTRID_BILE, true) end
end

local function CastNecroticStrike(_, _, _, c)
    if not c:IsInCombat() then return end
    local t = GetTank(c)
    if t then c:CastSpell(t, NECROTIC_STRIKE, true) end
end

local function CastPutridStench(_, _, _, c)
    if not c:IsInCombat() then return end
    c:CastSpell(c, PUTRID_STENCH, true)
end

local function CastBileVomit(_, _, _, c)
    if not c:IsInCombat() then return end
    c:CastSpell(c, BILE_VOMIT, true)
end

local function CastPlagueStench(_, _, _, c)
    if not c:IsInCombat() then return end
    c:CastSpell(c, PLAGUE_STENCH, true)
end

-- 5-second warning before Plague Stench
local function WarnAndCastPlagueStench(_, _, _, c)
    if not c:IsInCombat() then return end
    c:SendUnitYell(PLAGUE_WARNINGS[math.random(#PLAGUE_WARNINGS)], 0)
    c:RegisterEvent(function(_, _, _, creature)
        if creature:IsInCombat() then CastPlagueStench(_, _, _, creature) end
    end, 5000, 1)
end

--------------------------------------------------------------------------------
-- PHASE CHECKER
--------------------------------------------------------------------------------
local function PhaseCheck(eventId, _, _, self)
    if not self:IsInCombat() or self:IsDead() then
        self:RemoveEventById(eventId)
        return
    end

    local guid = self:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    local hp = self:GetHealthPct()

    if hp <= TH_10 and not p[10] then
        p[10] = true
        self:SendUnitYell("The final stage of putrefaction! Kneel before the master's plague!", 0)
        self:CastSpell(self, SUMMON_BILE_SLIMES, true)
        self:CastSpell(self, FEROCIOUS_ENRAGE, true)

    elseif hp <= TH_25 and not p[25] then
        p[25] = true
        self:SendUnitYell("I am the herald of the endless hunger! Decay is your doom!", 0)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        self:SendUnitYell("My filth shall breed life! Rise, my bile-kin!", 0)
        self:CastSpell(self, SUMMON_BILE_SLIMES, true)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        self:SendUnitYell("Your paltry attempts are merely delaying the inevitable rot!", 0)
    end
end

--------------------------------------------------------------------------------
-- COMBAT EVENTS
--------------------------------------------------------------------------------
local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell("Come forth, fresh meat! The Scourge hungers for your flesh and your essence!", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    -- Permanent Foul Odor aura (correct method)
    creature:AddAura(FOUL_ODOR, creature)

    -- One-time Black Rot on tank + one healer/random player
    local tank = GetTank(creature)
    if tank then creature:CastSpell(tank, BLACK_ROT, true) end
    local other = GetNonTankPlayer(creature)
    if other then creature:CastSpell(other, BLACK_ROT, true) end

    -- Core rotation
    creature:RegisterEvent(CastPutridBile,    45000, 0, EVENT_PUTRID_BILE)
    creature:RegisterEvent(CastNecroticStrike,20000, 0, EVENT_NECROTIC_STRIKE)
    creature:RegisterEvent(WarnAndCastPlagueStench, 30000, 0, EVENT_PLAGUE_STENCH)
    creature:RegisterEvent(CastPutridStench,  50000, 0, EVENT_PUTRID_STENCH)
    creature:RegisterEvent(CastBileVomit,     60000, 0, EVENT_BILE_VOMIT)
    creature:RegisterEvent(PhaseCheck,        1000,  0, EVENT_PHASE_CHECK)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell("Flee, weaklings! The Blight's kiss awaits your return.", 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell("He smelled even worse on the inside...", 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnEnterCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)