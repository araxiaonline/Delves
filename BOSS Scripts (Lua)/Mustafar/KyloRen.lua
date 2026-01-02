--------------------------------------------------------------------------------
-- Kylo Ren - Supreme Leader of the First Order (10-Man Raid Boss)
-- NPC ID: 9500639
-- Created by: Manmadedrummer | Star Wars Boss Collection
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Unstable Sith warrior - 10-man raid encounter
-- Emotional and aggressive fighter with dark side abilities
-- WotLK retail-style with additive phases and balanced timers
-- Inspired by Blood Queen Lana'thel and Saurfang design
--
-- PHASE 1 (100% - 50%): Conflicted Warrior
-- - Consuming Shadows aura (constant)
-- - Choking Gas, Force Blast
-- - Unstable and aggressive melee combat
--
-- PHASE 2 (50% - 20%): Unleashed Fury (ADDS abilities, keeps Phase 1)
-- - ADDS: Unstable Affliction (shadow DOT)
-- - ADDS: Saber Lash (heavy tank damage)
-- - All Phase 1 abilities continue
--
-- PHASE 3 (20% - 5%): Final Stand (ADDS abilities, keeps all)
-- - ADDS: Boiling Blood (shadow damage pulses)
-- - All previous abilities continue
--
-- ENRAGE (<5% HP): Berserk Phase
-- - ADDS: Enrage buff (permanent at 5% HP)
-- - All abilities continue
--
-- ABILITIES - PHASE 1:
-- - Consuming Shadows: Shadow aura on aggro (constant)
-- - Choking Gas: Shadow DOT on random player (20s CD)
-- - Force Blast: Knockback nearby players (30s CD, 5-30 yard range)
--
-- ABILITIES - PHASE 2 (50% HP) - ADDS TO PHASE 1:
-- - Unstable Affliction: Heavy shadow DOT (ONE TIME cast at 50%) [NEW]
-- - Saber Lash: Heavy cleave attack on tank (35s CD) [NEW]
-- - All 3 Phase 1 abilities continue
-- - Total: 5 abilities
--
-- ABILITIES - PHASE 3 (20% HP) - ADDS TO P1+P2:
-- - Boiling Blood: Shadow damage pulses (40s CD) [NEW]
-- - All 5 previous abilities continue
-- - Total: 6 abilities
--
-- ENRAGE (<5% HP) - ADDS TO ALL:
-- - Enrage: Permanent damage buff [NEW]
-- - All 6 abilities continue
-- - Total: 6 abilities + Enrage
--
-- MECHANICS:
-- - GUIDLow-safe phase tracking
-- - Retail-balanced cooldowns (20s, 30s, 35s, 40s)
-- - Unstable Affliction applies at phase transition
-- - Force Blast creates positioning chaos
-- - Enrage triggers at 5% HP (not time-based)
-- - No size changes - pure mechanical fight
-- - No adds - solo boss encounter
-- - Maximum 6 active abilities (retail-appropriate)
--
-- RETAIL-LIKE FEATURES:
-- - Blood Queen-style additive phases
-- - Saurfang-style consistent ability timers
-- - HP-based enrage (5% threshold)
-- - Progressive ability additions
-- - Predictable rotation for skilled play
-- - All abilities kept throughout fight
-- - Balanced ability count (6 max active)
--
-- DIFFICULTY: 10-Man Raid Boss
-- LEVEL: 85
-- LOCATION: Mustafar (Map 805)
-- ESTIMATED DURATION: 5-7 minutes
-- ENRAGE: At 5% HP
--------------------------------------------------------------------------------

print("Star Wars Raid Boss - Kylo Ren Loaded")

local BOSS_ID = 9500639

--------------------------------------------------------------------------------
-- SPELLS - PHASE 1 (Conflicted Warrior)
--------------------------------------------------------------------------------
local SPELL_CONSUMING_SHADOWS = 17715   -- Shadow aura
local SPELL_CHOKING_GAS       = 72460   -- Shadow DOT
local SPELL_FORCE_BLAST       = 39039   -- Knockback

--------------------------------------------------------------------------------
-- SPELLS - PHASE 2 (Unleashed Fury)
--------------------------------------------------------------------------------
local SPELL_UNSTABLE_AFFLICTION = 34439 -- Heavy shadow DOT
local SPELL_SABER_LASH         = 71021  -- Heavy cleave attack

--------------------------------------------------------------------------------
-- SPELLS - PHASE 3 (Final Stand)
--------------------------------------------------------------------------------
local SPELL_BOILING_BLOOD      = 72385  -- Shadow pulses

--------------------------------------------------------------------------------
-- ENRAGE
--------------------------------------------------------------------------------
local SPELL_ENRAGE             = 50420  -- 5% HP enrage

--------------------------------------------------------------------------------
-- TIMERS & COOLDOWNS (Retail-Balanced)
--------------------------------------------------------------------------------
-- Phase 1
local CHOKING_GAS_CD          = 20000   -- 20s
local FORCE_BLAST_CD          = 30000   -- 30s

-- Phase 2
local SABER_LASH_CD           = 35000   -- 35s

-- Phase 3
local BOILING_BLOOD_CD        = 40000   -- 40s

--------------------------------------------------------------------------------
-- THRESHOLDS
--------------------------------------------------------------------------------
local TH_75 = 75
local TH_50 = 50
local TH_20 = 20
local TH_05 = 5

--------------------------------------------------------------------------------
-- EVENT IDs
--------------------------------------------------------------------------------
local EVENT_CHOKING_GAS       = 101
local EVENT_FORCE_BLAST       = 102

local EVENT_SABER_LASH        = 201

local EVENT_BOILING_BLOOD     = 301

local EVENT_PHASE_CHECK       = 999

--------------------------------------------------------------------------------
-- YELLS
--------------------------------------------------------------------------------
local YELLS = {
    AGGRO = "I'll show you the dark side!",
    PHASE_2 = "You're no match for the power of the First Order!",
    UNSTABLE_AFFLICTION = "Let the shadows consume you!",
    PHASE_3 = "I will finish what you started, Grandfather!",
    ENRAGE = "ENOUGH! I will destroy you ALL!",
    WIPE = "Pathetic...",
    DEATH = "No... Grandfather... I'm sorry..."
}

--------------------------------------------------------------------------------
-- GUID-SAFE PHASE TABLE
--------------------------------------------------------------------------------
local phases = {}

--------------------------------------------------------------------------------
-- TARGET HELPERS
--------------------------------------------------------------------------------
local function GetRandomPlayer(self)
    return self:GetAITarget(0, true)
end

local function GetPlayersInRange(self, minRange, maxRange)
    local players = self:GetPlayersInRange(maxRange or 100)
    local inRange = {}
    for _, p in ipairs(players) do
        local dist = self:GetDistance(p)
        if p:IsAlive() and dist >= (minRange or 0) and dist <= (maxRange or 100) then
            table.insert(inRange, p)
        end
    end
    return inRange
end

local function GetTank(self)
    return self:GetVictim()
end

--------------------------------------------------------------------------------
-- PHASE 1 ABILITIES
--------------------------------------------------------------------------------
local function CastChokingGas(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetRandomPlayer(self)
    if target then self:CastSpell(target, SPELL_CHOKING_GAS, true) end
end

local function CastForceBlast(_, _, _, self)
    if not self:IsInCombat() then return end
    
    -- Target players within 5-30 yards
    local inRange = GetPlayersInRange(self, 5, 30)
    if #inRange > 0 then
        local target = inRange[math.random(#inRange)]
        self:CastSpell(target, SPELL_FORCE_BLAST, true)
    end
end

--------------------------------------------------------------------------------
-- PHASE 2 ABILITIES
--------------------------------------------------------------------------------
local function CastSaberLash(_, _, _, self)
    if not self:IsInCombat() then return end
    local tank = GetTank(self)
    if tank then self:CastSpell(tank, SPELL_SABER_LASH, true) end
end

--------------------------------------------------------------------------------
-- PHASE 3 ABILITIES
--------------------------------------------------------------------------------
local function CastBoilingBlood(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_BOILING_BLOOD, true)
end

--------------------------------------------------------------------------------
-- PHASE CHECKER - GUIDLow-safe
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

    if hp <= TH_05 and not p[5] then
        p[5] = true
        -- ENRAGE: At 5% HP
        self:SendUnitYell(YELLS.ENRAGE, 0)
        self:CastSpell(self, SPELL_ENRAGE, true)
        
        -- Stop phase checking
        self:RemoveEventById(eventId)

    elseif hp <= TH_20 and not p[20] then
        p[20] = true
        -- PHASE 3: Final Stand
        self:SendUnitYell(YELLS.PHASE_3, 0)
        
        -- ADD Phase 3 ability (keeps all P1+P2)
        self:RegisterEvent(CastBoilingBlood, BOILING_BLOOD_CD, 0, EVENT_BOILING_BLOOD)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        -- PHASE 2: Unleashed Fury
        self:SendUnitYell(YELLS.PHASE_2, 0)
        
        -- Cast Unstable Affliction (ONE TIME heavy DOT)
        self:SendUnitYell(YELLS.UNSTABLE_AFFLICTION, 0)
        local target = GetRandomPlayer(self)
        if target then
            self:CastSpell(target, SPELL_UNSTABLE_AFFLICTION, true)
        end
        
        -- ADD Phase 2 ability (keeps all Phase 1)
        self:RegisterEvent(CastSaberLash, SABER_LASH_CD, 0, EVENT_SABER_LASH)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        self:SendUnitYell("Your resistance only makes me stronger!", 0)
    end
end

--------------------------------------------------------------------------------
-- COMBAT EVENTS
--------------------------------------------------------------------------------
local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell(YELLS.AGGRO, 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    -- Apply Consuming Shadows aura immediately
    creature:CastSpell(creature, SPELL_CONSUMING_SHADOWS, true)

    -- PHASE 1 - Start all basic abilities with consistent timers
    creature:RegisterEvent(CastChokingGas, CHOKING_GAS_CD, 0, EVENT_CHOKING_GAS)
    creature:RegisterEvent(CastForceBlast, FORCE_BLAST_CD, 0, EVENT_FORCE_BLAST)
    
    -- Phase checker
    creature:RegisterEvent(PhaseCheck, 1000, 0, EVENT_PHASE_CHECK)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell(YELLS.WIPE, 0)
    phases[creature:GetGUIDLow()] = nil
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell(YELLS.DEATH, 0)
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnEnterCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)