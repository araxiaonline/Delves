--------------------------------------------------------------------------------
-- Boba Fett - Bounty Hunter Supreme (10-Man Raid Boss)
-- NPC ID: 9500637
-- Created by: Manmadedrummer | Star Wars Boss Collection
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Legendary Mandalorian bounty hunter - 10-man raid encounter
-- Multi-phase gadget specialist with mobility and weapon variety
-- Inspired by SWTOR Bounty Hunter class and WotLK raid design
-- Solo boss - pure mechanical execution fight with mobility requirements
--
-- PHASE 1 (100% - 60%): Hunting Protocol
-- - Ranged combat with wrist rockets and flamethrower
-- - Explosive Shot, Electrified Net, Flamethrower
-- - Ice Tomb (Carbonite Freezing) every 60s
-- - Jump Attack repositioning every 30s
--
-- PHASE 2 (60% - 30%): Advanced Arsenal (ADDS abilities, keeps Phase 1)
-- - ADDS: Sonic Burst (stun explosion)
-- - ADDS: Focused Laser (channeled beam)
-- - ADDS: Incendiary Missile barrage
-- - All Phase 1 abilities continue
-- - Size increase to 1.15x
--
-- PHASE 3 (30% - 10%): Heavy Ordinance (ADDS abilities, keeps P1+P2)
-- - ADDS: Throw Dynamite (explosive zones)
-- - All Phase 1 + Phase 2 abilities continue
-- - Size increase to 1.2x
--
-- PHASE 4 (10% - 5%): Desperate Speed (ADDS Double Speed, keeps all)
-- - ADDS: Double Speed buff [ONE TIME at 10%]
-- - All Phase 1 + Phase 2 + Phase 3 abilities continue
-- - Size increase to 1.25x
--
-- ENRAGE (<5%): Mandalorian Berserk (ADDS Berserk, keeps all)
-- - ADDS: Berserk damage buff [ONE TIME at 5%]
-- - All previous abilities continue with Double Speed active
-- - Final burn phase
--
-- ABILITIES - PHASE 1:
-- - Explosive Shot: Heavy ranged damage (12-15s random CD)
-- - Electrified Net: Snare + damage (25-30s random CD)
-- - Flamethrower: Cone fire damage (30-35s random CD)
-- - Ice Tomb: Carbonite freeze on random player (60s CD)
-- - Jump Attack: Leap to random location (45s CD)
--
-- ABILITIES - PHASE 2 (60% HP) - ADDS TO PHASE 1:
-- - Sonic Burst: AOE stun explosion (40s CD) [NEW]
-- - Focused Laser: Channeled beam on random player (50s CD) [NEW]
-- - Incendiary Missile: Fire missile on random area (35s CD) [NEW]
-- - All 5 Phase 1 abilities continue
-- - Total: 8 abilities
--
-- ABILITIES - PHASE 3 (30% HP) - ADDS TO P1+P2:
-- - Throw Dynamite: Explosive zones (30s CD) [NEW]
-- - All 8 previous abilities continue
-- - Total: 9 abilities
--
-- ABILITIES - PHASE 4 (10% HP) - ADDS TO ALL:
-- - Double Speed: 2x speed buff [NEW, ONE TIME]
-- - All 9 previous abilities continue at 2x speed
-- - Total: 9 abilities + Double Speed buff
--
-- ENRAGE (<5% HP) - ADDS TO ALL:
-- - Berserk: Massive damage buff [NEW, ONE TIME]
-- - All 9 abilities + Double Speed + Berserk
-- - Total: 9 abilities + 2 permanent buffs
--
-- MECHANICS:
-- - GUIDLow-safe phase tracking
-- - Jump Attack repositioning creates unpredictable movement
-- - Ice Tomb requires dispel or breaks on damage
-- - Throw Dynamite creates danger zones
-- - Double Speed increases all ability frequency
-- - Berserk makes final burn critical
-- - No adds - pure boss mechanics
--
-- RETAIL-LIKE FEATURES:
-- - Mimiron-style jump repositioning
-- - Sindragosa-style Ice Tomb (Carbonite Freeze)
-- - XT-002-style Throw Dynamite (explosive zones)
-- - Progressive ability spam (9 abilities by Phase 3)
-- - Permanent buffs stack (Double Speed + Berserk)
-- - Mobility-based encounter (constant movement)
--
-- DIFFICULTY: 10-Man Raid Boss
-- LEVEL: 85
-- LOCATION: Star Wars Encounter Area
-- ESTIMATED DURATION: 8-10 minutes
-- HARD ENRAGE: Berserk at 5% HP
--------------------------------------------------------------------------------

print("Star Wars Raid Boss - Boba Fett Loaded")

local BOSS_ID = 9500637

--------------------------------------------------------------------------------
-- SPELLS - PHASE 1 (Hunting Protocol)
--------------------------------------------------------------------------------
local SPELL_EXPLOSIVE_SHOT    = 67985   -- Heavy ranged damage
local SPELL_ELECTRIFIED_NET   = 35107   -- Snare + damage
local SPELL_FLAMETHROWER      = 45467   -- Cone fire damage
local SPELL_ICE_TOMB          = 16869   -- Carbonite freeze (Ice Tomb)
local SPELL_JUMP_ATTACK       = 56113   -- Jump repositioning

--------------------------------------------------------------------------------
-- SPELLS - PHASE 2 (Advanced Arsenal)
--------------------------------------------------------------------------------
local SPELL_SONIC_BURST       = 39052   -- Stun explosion
local SPELL_FOCUSED_LASER     = 64683   -- Channeled beam
local SPELL_INCENDIARY_MISSILE = 66541  -- Fire missile

--------------------------------------------------------------------------------
-- SPELLS - PHASE 3 (Heavy Ordinance)
--------------------------------------------------------------------------------
local SPELL_THROW_DYNAMITE    = 29579   -- Explosive zones

--------------------------------------------------------------------------------
-- PHASE 4 & ENRAGE
--------------------------------------------------------------------------------
local SPELL_DOUBLE_SPEED      = 59737   -- 2x speed at 10%
local SPELL_BERSERK           = 26662   -- Damage buff at 5%

--------------------------------------------------------------------------------
-- TIMERS & COOLDOWNS (Retail 10-Man Tuned)
--------------------------------------------------------------------------------
-- Phase 1 - Core rotation with breathing room
local EXPLOSIVE_SHOT_MIN     = 12000   -- 12-15s (main filler)
local EXPLOSIVE_SHOT_MAX     = 15000
local ELECTRIFIED_NET_MIN    = 25000   -- 25-30s (cc/snare)
local ELECTRIFIED_NET_MAX    = 30000
local FLAMETHROWER_MIN       = 30000   -- 30-35s (cone damage)
local FLAMETHROWER_MAX       = 35000
local ICE_TOMB_CD            = 60000   -- 60s (major mechanic)
local JUMP_ATTACK_CD         = 45000   -- 45s (repositioning)

-- Phase 2 - Additional complexity
local SONIC_BURST_CD         = 40000   -- 40s (aoe stun)
local FOCUSED_LASER_CD       = 50000   -- 50s (channeled beam)
local INCENDIARY_MISSILE_CD  = 35000   -- 35s (fire damage)

-- Phase 3 - Heavy pressure
local THROW_DYNAMITE_CD      = 30000   -- 30s (explosive zones)

--------------------------------------------------------------------------------
-- THRESHOLDS
--------------------------------------------------------------------------------
local TH_60 = 60
local TH_30 = 30
local TH_10 = 10
local TH_05 = 5

--------------------------------------------------------------------------------
-- EVENT IDs
--------------------------------------------------------------------------------
local EVENT_EXPLOSIVE_SHOT    = 101
local EVENT_ELECTRIFIED_NET   = 102
local EVENT_FLAMETHROWER      = 103
local EVENT_ICE_TOMB          = 104
local EVENT_JUMP_ATTACK       = 105

local EVENT_SONIC_BURST       = 201
local EVENT_FOCUSED_LASER     = 202
local EVENT_INCENDIARY_MISSILE = 203

local EVENT_THROW_DYNAMITE    = 301

local EVENT_PHASE_CHECK       = 999

--------------------------------------------------------------------------------
-- YELLS
--------------------------------------------------------------------------------
local YELLS = {
    AGGRO = "You're worth a lot to me dead. I might even take you alive if you beg.",
    ICE_TOMB = "You're no good to me frozen... Actually, yes you are.",
    JUMP_ATTACK = "Death from above!",
    PHASE_2 = "Let's see how you handle a REAL bounty hunter!",
    PHASE_3 = "No disintegrations? Fine. I'll just use everything else!",
    DOUBLE_SPEED = "Time to finish this quickly!",
    BERSERK = "You've made this personal. Time to collect!",
    WIPE = "As you wish.",
    DEATH = "Impossible... The Fett legacy... ends here..."
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

local function GetRandomPlayer(self)
    return self:GetAITarget(0, true)
end

local function GetRandomRanged(self)
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
    return GetRandomPlayer(self)
end

--------------------------------------------------------------------------------
-- PHASE 1 ABILITIES
--------------------------------------------------------------------------------
local function CastExplosiveShot(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetRandomPlayer(self)
    if target then self:CastSpell(target, SPELL_EXPLOSIVE_SHOT, true) end
    
    -- Re-register with random timer
    local next = math.random(EXPLOSIVE_SHOT_MIN, EXPLOSIVE_SHOT_MAX)
    self:RegisterEvent(CastExplosiveShot, next, 1, EVENT_EXPLOSIVE_SHOT)
end

local function CastElectrifiedNet(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetRandomPlayer(self)
    if target then self:CastSpell(target, SPELL_ELECTRIFIED_NET, true) end
    
    -- Re-register with random timer
    local next = math.random(ELECTRIFIED_NET_MIN, ELECTRIFIED_NET_MAX)
    self:RegisterEvent(CastElectrifiedNet, next, 1, EVENT_ELECTRIFIED_NET)
end

local function CastFlamethrower(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetTank(self)
    if target then self:CastSpell(target, SPELL_FLAMETHROWER, true) end
    
    -- Re-register with random timer
    local next = math.random(FLAMETHROWER_MIN, FLAMETHROWER_MAX)
    self:RegisterEvent(CastFlamethrower, next, 1, EVENT_FLAMETHROWER)
end

local function CastIceTomb(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetRandomRanged(self)
    if target then
        self:SendUnitYell(YELLS.ICE_TOMB, 0)
        self:CastSpell(target, SPELL_ICE_TOMB, true)
    end
end

local function CastJumpAttack(_, _, _, self)
    if not self:IsInCombat() then return end
    
    -- Jump to random player location
    local target = GetRandomPlayer(self)
    if target then
        self:SendUnitYell(YELLS.JUMP_ATTACK, 0)
        self:CastSpell(target, SPELL_JUMP_ATTACK, true)
    end
end

--------------------------------------------------------------------------------
-- PHASE 2 ABILITIES
--------------------------------------------------------------------------------
local function CastSonicBurst(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_SONIC_BURST, true)
end

local function CastFocusedLaser(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetRandomPlayer(self)
    if target then self:CastSpell(target, SPELL_FOCUSED_LASER, true) end
end

local function CastIncendiaryMissile(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetRandomPlayer(self)
    if target then self:CastSpell(target, SPELL_INCENDIARY_MISSILE, true) end
end

--------------------------------------------------------------------------------
-- PHASE 3 ABILITIES
--------------------------------------------------------------------------------
local function CastThrowDynamite(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetRandomPlayer(self)
    if target then self:CastSpell(target, SPELL_THROW_DYNAMITE, true) end
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
        -- ENRAGE: Berserk
        self:SendUnitYell(YELLS.BERSERK, 0)
        
        -- Add Berserk buff (keeps all abilities + Double Speed)
        self:CastSpell(self, SPELL_BERSERK, true)
        
        -- Stop phase checking
        self:RemoveEventById(eventId)

    elseif hp <= TH_10 and not p[10] then
        p[10] = true
        -- PHASE 4: Desperate Speed
        self:SendUnitYell(YELLS.DOUBLE_SPEED, 0)
        self:SetScale(1.25) -- Size increase
        
        -- Add Double Speed buff (keeps all 9 abilities)
        self:CastSpell(self, SPELL_DOUBLE_SPEED, true)

    elseif hp <= TH_30 and not p[30] then
        p[30] = true
        -- PHASE 3: Heavy Ordinance
        self:SendUnitYell(YELLS.PHASE_3, 0)
        self:SetScale(1.2) -- Size increase
        
        -- ADD Phase 3 abilities (keeps all P1+P2)
        self:RegisterEvent(CastThrowDynamite, THROW_DYNAMITE_CD, 0, EVENT_THROW_DYNAMITE)

    elseif hp <= TH_60 and not p[60] then
        p[60] = true
        -- PHASE 2: Advanced Arsenal
        self:SendUnitYell(YELLS.PHASE_2, 0)
        self:SetScale(1.15) -- Size increase
        
        -- ADD Phase 2 abilities (keeps all Phase 1)
        self:RegisterEvent(CastSonicBurst, SONIC_BURST_CD, 0, EVENT_SONIC_BURST)
        self:RegisterEvent(CastFocusedLaser, FOCUSED_LASER_CD, 0, EVENT_FOCUSED_LASER)
        self:RegisterEvent(CastIncendiaryMissile, INCENDIARY_MISSILE_CD, 0, EVENT_INCENDIARY_MISSILE)
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
    creature:RegisterEvent(CastExplosiveShot, math.random(EXPLOSIVE_SHOT_MIN, EXPLOSIVE_SHOT_MAX), 1, EVENT_EXPLOSIVE_SHOT)
    creature:RegisterEvent(CastElectrifiedNet, math.random(ELECTRIFIED_NET_MIN, ELECTRIFIED_NET_MAX), 1, EVENT_ELECTRIFIED_NET)
    creature:RegisterEvent(CastFlamethrower, math.random(FLAMETHROWER_MIN, FLAMETHROWER_MAX), 1, EVENT_FLAMETHROWER)
    creature:RegisterEvent(CastIceTomb, ICE_TOMB_CD, 0, EVENT_ICE_TOMB)
    creature:RegisterEvent(CastJumpAttack, JUMP_ATTACK_CD, 0, EVENT_JUMP_ATTACK)
    
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