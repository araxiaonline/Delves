--------------------------------------------------------------------------------
-- Darth Vader - Star Destroyer Bridge (10-Man Raid Boss)
-- NPC ID: 9500644
-- Created by: Manmadedrummer | Star Wars Boss Collection
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Dark Lord of the Sith - 10-man raid encounter inspired by WotLK design philosophy
-- Multi-phase Dark Side channeler with Force abilities and lightsaber combat
-- Combines elements of Arthas, Sindragosa, and Blood Queen Lana'thel encounter design
-- SOLO BOSS - No adds or summons, pure mechanical execution fight
--
-- PHASE 1 (100% - 50%): Lightsaber Combat & Basic Force Powers
-- - Cleave spam, Chain Lightning, periodic Thunderstorm
-- - Force Choke every 60s (Death Grip on FARTHEST player)
-- - Random Shadow Fury fear zones
--
-- PHASE 2 (50% - 25%): Dark Side Unleashed (ADDS abilities, keeps all Phase 1)
-- - Increased size/intensity
-- - ADDS Force Blast (knockback mechanic every 30s)
-- - ADDS Force Lightning Storm (raid-wide damage every 50s)
-- - All Phase 1 abilities continue
--
-- PHASE 3 (25% - 5%): Imperial Fury (ADDS abilities, keeps all previous)
-- - Final stand with maximum aggression
-- - ADDS Death Grip on random players (25s CD)
-- - ADDS Drain Life channels (60s CD - healing Vader while damaging target)
-- - All Phase 1 + Phase 2 abilities continue
--
-- ENRAGE (<5%): Permanent Frenzy until death (keeps ALL abilities)
--
-- ABILITIES - PHASE 1:
-- - Cleave: Frontal cone damage (30-60s random)
-- - Chain Lightning: Chain damage on current target (45s CD)
-- - Thunderstorm: AOE nature damage (30-60s random)
-- - Shadow Fury: Fear zone on tank position (15-60s random)
-- - Force Choke: Death Grip on farthest player (60s CD)
--
-- ABILITIES - PHASE 2 (50% HP) - ADDS TO PHASE 1:
-- - Force Blast: Knockback all nearby players (30s CD) [NEW]
-- - Force Lightning Storm: Raid-wide shadow damage over 6s (50s CD) [NEW]
-- - Size increase to 1.15x
-- - All Phase 1 abilities continue at same frequency
--
-- ABILITIES - PHASE 3 (25% HP) - ADDS TO PHASE 1+2:
-- - Death Grip: Pulls random ranged player to melee (25s CD) [NEW]
-- - Drain Life: Channels healing on Vader while damaging target (60s CD) [NEW]
-- - Size increase to 1.3x
-- - All Phase 1 + Phase 2 abilities continue
--
-- ENRAGE (<5% HP) - ADDS TO ALL:
-- - Permanent Frenzy buff (massive damage increase) [NEW]
-- - Does NOT fade until Vader dies
-- - All previous abilities continue during Frenzy
-- - Final burn phase
--
-- MECHANICS:
-- - GUIDLow-safe phase tracking (supports multiple spawns in testing)
-- - Force Choke (Death Grip) targets FARTHEST player
-- - Death Grip disrupts ranged safety
-- - Drain Life creates healing pressure windows
-- - Permanent Frenzy creates final burn phase
-- - Pure execution fight - no add management
--
-- RETAIL-LIKE FEATURES:
-- - Sindragosa-style Force Choke (grip farthest player)
-- - Blood Queen-style size increases
-- - Arthas-style phase transitions
-- - Permanent enrage mechanic (like Brutallus)
-- - Proper tank-and-spank with periodic raid damage
-- - Movement mechanics (Force Blast, Death Grip)
-- - No add management - pure boss mechanics
--
-- DIFFICULTY: 10-Man Raid Boss
-- LEVEL: 83
-- HARD ENRAGE: Permanent Frenzy at 5% HP
--------------------------------------------------------------------------------

print("Star Wars Raid Boss - Darth Vader Loaded")

local BOSS_ID = 9500644

--------------------------------------------------------------------------------
-- SPELLS - PHASE 1 (Lightsaber Combat)
--------------------------------------------------------------------------------
local CLEAVE            = 30014    -- Frontal cone
local SHADOWFURY        = 45270    -- Fear zone
local THUNDERSTORM      = 59154    -- AOE nature damage
local CHAIN_LIGHTNING   = 28167    -- Chain spell
local DEATH_GRIP        = 61094    -- Force Choke = Death Grip

--------------------------------------------------------------------------------
-- SPELLS - PHASE 2 (Dark Side Unleashed)
--------------------------------------------------------------------------------
local FORCE_BLAST       = 39039    -- Knockback (was Force Push)
local LIGHTNING_STORM   = 43648    -- Raid-wide damage over time

--------------------------------------------------------------------------------
-- SPELLS - PHASE 3 (Imperial Fury)
--------------------------------------------------------------------------------
local DRAIN_LIFE        = 64159    -- Healing channel
local FRENZY            = 24318    -- Permanent enrage at 5%

--------------------------------------------------------------------------------
-- TIMERS & COOLDOWNS
--------------------------------------------------------------------------------
-- Phase 1
local CLEAVE_MIN        = 30000
local CLEAVE_MAX        = 60000
local SHADOWFURY_MIN    = 15000
local SHADOWFURY_MAX    = 60000
local THUNDER_MIN       = 30000
local THUNDER_MAX       = 60000
local CHAIN_LIGHT_CD    = 45000
local FORCE_CHOKE_CD_P1 = 60000

-- Phase 2
local FORCE_BLAST_CD    = 30000
local LIGHTNING_STORM_CD = 50000

-- Phase 3
local DEATH_GRIP_CD     = 25000
local DRAIN_LIFE_CD     = 60000

--------------------------------------------------------------------------------
-- THRESHOLDS
--------------------------------------------------------------------------------
local TH_75 = 75
local TH_50 = 50
local TH_25 = 25
local TH_05 = 5

--------------------------------------------------------------------------------
-- EVENT IDs
--------------------------------------------------------------------------------
local EVENT_CLEAVE          = 101
local EVENT_SHADOWFURY      = 102
local EVENT_THUNDERSTORM    = 103
local EVENT_CHAIN_LIGHT     = 104
local EVENT_FORCE_CHOKE     = 105

local EVENT_FORCE_BLAST     = 201
local EVENT_LIGHTNING_STORM = 202

local EVENT_DEATH_GRIP      = 301
local EVENT_DRAIN_LIFE      = 302

local EVENT_PHASE_CHECK     = 999

--------------------------------------------------------------------------------
-- YELLS
--------------------------------------------------------------------------------
local YELLS = {
    AGGRO = "I find your lack of faith disturbing!",
    FORCE_CHOKE = "Your feeble skills are no match for the power of the Dark Side!",
    PHASE_2 = "You have failed me for the last time! NOW YOU WILL KNOW THE POWER OF THE DARK SIDE!",
    PHASE_3 = "The circle is now complete. Your destruction is inevitable!",
    FORCE_BLAST = "The Force is strong with me!",
    LIGHTNING_STORM = "Unlimited POWER!",
    DEATH_GRIP_PULL = "Come to me!",
    DRAIN_LIFE = "I will drain your very essence!",
    FRENZY = "NOW YOU WILL EXPERIENCE THE FULL POWER OF THE DARK SIDE!",
    PHASE_75 = "Your resistance is impressive... but futile!",
    PHASE_10 = "You cannot win. The Dark Side is too strong!",
    WIPE = "All too easy...",
    DEATH = "You have won... nothing. The Empire will endure... always..."
}

--------------------------------------------------------------------------------
-- GUID-SAFE PHASE TABLE
--------------------------------------------------------------------------------
local phases = {}

--------------------------------------------------------------------------------
-- TARGET HELPERS
--------------------------------------------------------------------------------
local function GetTank(self)
    return self:GetVictim()
end

local function GetFarthestPlayer(self)
    return self:GetAITarget(4, true) or self:GetAITarget(0, true)
end

local function GetRandomRanged(self)
    -- Get a random player not in melee range
    local players = self:GetPlayersInRange(100)
    local rangedPlayers = {}
    for _, p in ipairs(players) do
        if p:IsAlive() and self:GetDistance(p) > 10 then
            table.insert(rangedPlayers, p)
        end
    end
    if #rangedPlayers > 0 then
        return rangedPlayers[math.random(#rangedPlayers)]
    end
    return self:GetAITarget(0, true)
end

--------------------------------------------------------------------------------
-- PHASE 1 ABILITIES
--------------------------------------------------------------------------------
local function CastCleave(_, _, _, self)
    if not self:IsInCombat() then return end
    local t = GetTank(self)
    if t then self:CastSpell(t, CLEAVE, true) end
    
    -- Re-register with random timer
    local next = math.random(CLEAVE_MIN, CLEAVE_MAX)
    self:RegisterEvent(CastCleave, next, 1, EVENT_CLEAVE)
end

local function CastShadowfury(_, _, _, self)
    if not self:IsInCombat() then return end
    local t = GetTank(self)
    if t then self:CastSpell(t, SHADOWFURY, true) end
    
    -- Re-register with random timer
    local next = math.random(SHADOWFURY_MIN, SHADOWFURY_MAX)
    self:RegisterEvent(CastShadowfury, next, 1, EVENT_SHADOWFURY)
end

local function CastThunderstorm(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, THUNDERSTORM, true)
    
    -- Re-register with random timer
    local next = math.random(THUNDER_MIN, THUNDER_MAX)
    self:RegisterEvent(CastThunderstorm, next, 1, EVENT_THUNDERSTORM)
end

local function CastChainLightning(_, _, _, self)
    if not self:IsInCombat() then return end
    local t = GetTank(self)
    if t then self:CastSpell(t, CHAIN_LIGHTNING, true) end
end

-- FORCE CHOKE - Death Grip on farthest player
local function CastForceChoke(_, _, _, self)
    if not self:IsInCombat() then return end

    local target = GetFarthestPlayer(self)
    if target and target:IsAlive() then
        self:SendUnitYell(YELLS.FORCE_CHOKE, 0)
        self:CastSpell(target, DEATH_GRIP, true)
    end
end

--------------------------------------------------------------------------------
-- PHASE 2 ABILITIES (50% HP)
--------------------------------------------------------------------------------
local function CastForceBlast(_, _, _, self)
    if not self:IsInCombat() then return end
    self:SendUnitYell(YELLS.FORCE_BLAST, 0)
    self:CastSpell(self, FORCE_BLAST, true) -- AOE knockback
end

local function CastLightningStorm(_, _, _, self)
    if not self:IsInCombat() then return end
    self:SendUnitYell(YELLS.LIGHTNING_STORM, 0)
    self:CastSpell(self, LIGHTNING_STORM, true) -- Raid-wide DOT
end

--------------------------------------------------------------------------------
-- PHASE 3 ABILITIES (25% HP)
--------------------------------------------------------------------------------
local function CastDeathGrip(_, _, _, self)
    if not self:IsInCombat() then return end
    
    local target = GetRandomRanged(self)
    if target then
        self:SendUnitYell(YELLS.DEATH_GRIP_PULL, 0)
        self:CastSpell(target, DEATH_GRIP, true)
    end
end

local function CastDrainLife(_, _, _, self)
    if not self:IsInCombat() then return end
    self:SendUnitYell(YELLS.DRAIN_LIFE, 0)
    
    -- Cast Drain Life on random player (heals Vader, damages target)
    local target = self:GetAITarget(0, true)
    if target then
        self:CastSpell(target, DRAIN_LIFE, true)
    end
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
        -- PERMANENT FRENZY - does not fade until death
        self:SendUnitYell(YELLS.FRENZY, 0)
        self:CastSpell(self, FRENZY, true)
        self:CastSpell(self, THUNDERSTORM, true) -- Immediate storm
        self:RemoveEventById(eventId) -- Stop phase checking

    elseif hp <= TH_25 and not p[25] then
        p[25] = true
        -- PHASE 3: Imperial Fury
        self:SendUnitYell(YELLS.PHASE_3, 0)
        self:SetScale(1.3) -- Increase size
        
        -- Start Phase 3 abilities
        self:RegisterEvent(CastDeathGrip, DEATH_GRIP_CD, 0, EVENT_DEATH_GRIP)
        self:RegisterEvent(CastDrainLife, DRAIN_LIFE_CD, 0, EVENT_DRAIN_LIFE)

    elseif hp <= TH_50 and not p[50] then
        p[50] = true
        -- PHASE 2: Dark Side Unleashed
        self:SendUnitYell(YELLS.PHASE_2, 0)
        self:SetScale(1.15) -- Slightly larger
        
        -- ADD Phase 2 abilities (keeps all Phase 1 abilities)
        self:RegisterEvent(CastForceBlast, FORCE_BLAST_CD, 0, EVENT_FORCE_BLAST)
        self:RegisterEvent(CastLightningStorm, LIGHTNING_STORM_CD, 0, EVENT_LIGHTNING_STORM)

    elseif hp <= TH_75 and not p[75] then
        p[75] = true
        self:SendUnitYell(YELLS.PHASE_75, 0)
    end
end

--------------------------------------------------------------------------------
-- COMBAT EVENTS
--------------------------------------------------------------------------------
local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell(YELLS.AGGRO, 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    -- PHASE 1 - Start all basic abilities with random first timers
    creature:RegisterEvent(CastCleave, math.random(CLEAVE_MIN, CLEAVE_MAX), 1, EVENT_CLEAVE)
    creature:RegisterEvent(CastShadowfury, math.random(SHADOWFURY_MIN, SHADOWFURY_MAX), 1, EVENT_SHADOWFURY)
    creature:RegisterEvent(CastThunderstorm, math.random(THUNDER_MIN, THUNDER_MAX), 1, EVENT_THUNDERSTORM)
    creature:RegisterEvent(CastChainLightning, CHAIN_LIGHT_CD, 0, EVENT_CHAIN_LIGHT)
    creature:RegisterEvent(CastForceChoke, FORCE_CHOKE_CD_P1, 0, EVENT_FORCE_CHOKE)
    
    -- Phase checker
    creature:RegisterEvent(PhaseCheck, 1000, 0, EVENT_PHASE_CHECK)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
    creature:SendUnitYell(YELLS.WIPE, 0)
    creature:SetScale(1.0) -- Reset size
    phases[creature:GetGUIDLow()] = nil
end

local function OnDied(event, creature, killer)
    creature:RemoveEvents()
    creature:SendUnitYell(YELLS.DEATH, 0)
    creature:SetScale(1.0) -- Reset size
    phases[creature:GetGUIDLow()] = nil
end

RegisterCreatureEvent(BOSS_ID, 1, OnEnterCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 4, OnDied)