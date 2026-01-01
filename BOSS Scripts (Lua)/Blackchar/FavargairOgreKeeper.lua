--------------------------------------------------------------------------------
-- Ogre-Keeper Favargâr (Blackchar Cave Boss)
-- NPC ID: 600636
-- FINAL: GUIDLow-safe, richer dialogue, volcanic geyser warning, zero crashes
--------------------------------------------------------------------------------
print("Blackchar Cave Boss Ogre-Keeper Favargâr Loaded")

local BOSS_ID = 600636

-- Spells
local TOUGHEN             = 33962   -- Permanent on pull
local MANA_SHIELD         = 38151
local SPORE_CLOUD         = 38652   -- One-time @15%
local DUST_CLOUD          = 26072   -- One-time @15%
local VOLCANIC_GEYSER     = 42052   -- AOE with 3.5s warning

-- Geyser warning
local GEYSER_WARNING_TIME = 3500    -- 3.5 seconds
local GEYSER_YELLS = {
    "The cavern shifts! Don't stand in the blast!",
    "Earth boils! Run or burn!",
    "Geysers rise! Flee, little bugs!",
    "The cave itself fights for me!"
}

-- Thresholds
local TH_75 = 75
local TH_50 = 50
local TH_25 = 25
local TH_15 = 15

-- GUIDLow-safe phase tracking (same as Aquaspawn, Runetusk, Mwargadon, Gurgles)
local phases = {}

local function GetTank(creature)        return creature:GetVictim() end
local function GetRandomPlayer(creature) return creature:GetAITarget(0, true) end

-- Core rotation
local function CastBlackCleave(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, 39174, true) end
end

local function CastFlashOfDarkness(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetRandomPlayer(creature)
    if t then creature:CastSpell(t, 33787, true) end
end

local function CastLashOfPain(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end
    local t = GetTank(creature)
    if t then creature:CastSpell(t, 38067, true) end
end

-- Volcanic Geyser with 3.5s warning + random yell
local function CastVolcanicGeyser(eventId, delay, calls, creature)
    if not creature:IsInCombat() then return end

    local yell = GEYSER_YELLS[math.random(#GEYSER_YELLS)]
    creature:SendUnitYell(yell, 0)

    creature:RegisterEvent(function(_, _, _, self)
        if self:IsInCombat() and not self:IsDead() then
            self:CastSpell(self, VOLCANIC_GEYSER, true)
        end
    end, GEYSER_WARNING_TIME, 1)
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

    if hp <= TH_15 and not p[15] then
        p[15] = true
        creature:SendUnitYell("CHOKE AND SUFFOCATE! THE CAVE CLAIMS YOU ALL!", 0)
        creature:CastSpell(creature, MANA_SHIELD, true)
        creature:CastSpell(creature, SPORE_CLOUD, true)
        creature:CastSpell(creature, DUST_CLOUD, true)
        creature:RemoveEventById(eventId)

    elseif hp <= TH_25 and not p[25] then
        p[25] = true
        local yells25 = {
            "You fight well for insects… but ogres break insects!",
            "Your bones will decorate my throne!",
            "I grow bored of this dance!"
        }
        creature:SendUnitYell(yells25[math.random(#yells25)], 0)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        local yells50 = {
            "You cannot harm me while my mana flows! Feel despair!",
            "My power is endless! Witness true might!",
            "Mana shield! You strike only air!"
        }
        creature:SendUnitYell(yells50[math.random(#yells50)], 0)
        creature:CastSpell(creature, MANA_SHIELD, true)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        local yells75 = {
            "Pathetic whelps! My shield laughs at your blows!",
            "This is the might of FAVARGÂR! Kneel!",
            "Your weapons are toys against me!"
        }
        creature:SendUnitYell(yells75[math.random(#yells75)], 0)
        creature:CastSpell(creature, MANA_SHIELD, true)
    end
end

-- COMBAT EVENTS
local function OnCombatStart(event, creature, target)
    creature:SendUnitYell("FOOLS! You enter the domain of FAVARGÂR, KEEPER OF OGRES! Kneel… or be CRUSHED beneath their feet!", 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    creature:CastSpell(creature, TOUGHEN, true)

    creature:RegisterEvent(CastBlackCleave,       10000, 0)
    creature:RegisterEvent(CastFlashOfDarkness,   17500, 0)
    creature:RegisterEvent(CastLashOfPain,        30000, 0)
    creature:RegisterEvent(CastVolcanicGeyser,    60000, 0)  -- every 60s with 3.5s warning
    creature:RegisterEvent(PhaseCheck,            1000,  0)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()  -- Always first
    creature:SendUnitYell("Run, cowards! The ogres will hunt you to the ends of the desert!", 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDeath(event, creature, killer)
    creature:RemoveEvents()  -- Always first
    creature:SendUnitYell("No… the brutes… they abandon me… at last… I am… free…", 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnCombatStart)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDeath)