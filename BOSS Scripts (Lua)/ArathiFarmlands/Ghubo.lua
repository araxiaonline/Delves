--------------------------------------------------------------------------------
-- Ghubo The Abomination (Arathi Highlands) - Boss 1
-- NPC ID: 600698
--------------------------------------------------------------------------------
print("Arathi Highlands Boss 1 - Ghubo The Abomination Loaded")

local BOSS_ID = 600698

local CLEAVE                = 20691
local ENRAGE                = 38166
local BERSERK               = 46587
local SLIME_BOLT            = 32309
local EXPLODING_ABOMINATION = 58231

local BERSERK_TIME_MS = 420000

local TH_75 = 75
local TH_50 = 50
local TH_25 = 25
local TH_10 = 10

local EVENT_CLEAVE       = 101
local EVENT_SLIME_BOLT   = 102
local EVENT_BERSERK      = 103
local EVENT_PHASE_CHECK  = 999

local phases = {}

--------------------------------------------------------------------------------
-- ABILITIES
--------------------------------------------------------------------------------
local function CastCleave(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = self:GetVictim()
    if target then self:CastSpell(target, CLEAVE, true) end
end

local function CastSlimeBoltSpam(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SLIME_BOLT, true)
end

local function StartBerserk(_, _, _, self)
    if not self:IsInCombat() then return end
    self:SendUnitYell("TIIME... IS... OVEER! *roar* BERSERK!", 0)
    self:CastSpell(self, BERSERK, true)
    self:RegisterEvent(CastSlimeBoltSpam, 1500, 0, EVENT_SLIME_BOLT)
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
        self:SendUnitYell("RAGH! Niiigh! *snarl*", 0)
        self:CastSpell(self, ENRAGE, true)

    elseif hp <= TH_25 and not p[25] then
        p[25] = true
        self:SendUnitYell("Feeds... rots... ENDLESS!", 0)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        self:SendUnitYell("Life... *cough*... sliippss!", 0)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        self:SendUnitYell("Scourge... needsss... more!", 0)
    end
end

--------------------------------------------------------------------------------
-- COMBAT EVENTS
--------------------------------------------------------------------------------
local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell("Ghh... W-waant... flessh! ENTER COMBAT!", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    creature:RegisterEvent(CastCleave,     45000, 0, EVENT_CLEAVE)
    creature:RegisterEvent(StartBerserk,   BERSERK_TIME_MS, 1, EVENT_BERSERK)
    creature:RegisterEvent(PhaseCheck,     1000,  0, EVENT_PHASE_CHECK)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell("Rrrr... not done... RETUUURN!", 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:CastSpell(creature, EXPLODING_ABOMINATION, true)
    creature:SendUnitYell("Uhhh... ghuh... *gurgle*...", 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnEnterCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)