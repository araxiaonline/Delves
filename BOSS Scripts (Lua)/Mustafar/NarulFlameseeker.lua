--------------------------------------------------------------------------------
-- Narul the Flameseeker - Raid Boss
-- NPC ID: 888432
-- Original Script: Kreegoth (OwnedCore - ArcEmu)
-- Source: https://www.ownedcore.com/forums/world-of-warcraft/world-of-warcraft-emulator-servers/wow-emu-general-releases/166352-lua-sql-narul-flameseeker.html
-- AzerothCore Port & Enhancement: Manmadedrummer
--------------------------------------------------------------------------------
-- DESCRIPTION:
-- Multi-phase warrior boss with Dancing Sword adds
-- Progressive transformation through 4 distinct phases
-- WotLK retail-style with additive abilities and controlled add waves
--
-- PHASE 1 (100% - 76%): Mortal Combat
-- - Basic warrior abilities and fire magic
-- - Fires aura, Smoke visual
-- - Behead, Disembowel, Dismember rotation
--
-- PHASE 2 (76% - 49%): Worgen Transformation (ADDS abilities, keeps Phase 1)
-- - Transforms to Worgen form + Fel Form visual
-- - ADDS: Deft Slice, Harrowing Slash, Upward Thrust
-- - ADDS: 3 Dancing Sword summons [ONE TIME]
-- - Size increase to 1.1x
-- - All Phase 1 abilities continue
--
-- PHASE 3 (49% - 20%): Shadow Ascension (ADDS abilities, keeps P1+P2)
-- - Shadow transformation visual
-- - ADDS: Shadow spell, Quake, Flame Blade, Quick Strike, Phalanx
-- - ADDS: 3 more Dancing Sword summons [ONE TIME]
-- - Size increase to 1.2x
-- - All Phase 1 + Phase 2 abilities continue
--
-- PHASE 4 (<20%): Final Awakening (ADDS abilities, keeps all)
-- - Final phase transformation
-- - ADDS: 3 final Dancing Sword summons [ONE TIME]
-- - Size increase to 1.3x
-- - ALL 13 abilities active simultaneously
--
-- ABILITIES - PHASE 1:
-- - Fires: Fire aura (constant)
-- - Smoke: Smoke visual (constant)
-- - Behead: Random player attack (8s CD)
-- - Disembowel: Self buff (6s CD)
-- - Dismember: Tank attack (5s CD)
--
-- ABILITIES - PHASE 2 (76% HP) - ADDS TO PHASE 1:
-- - Worgen Form: Transform visual [ONE TIME]
-- - Fel Form: Fel visual [ONE TIME]
-- - Deft Slice: Tank attack (11s CD) [NEW]
-- - Harrowing Slash: Tank attack (2s CD) [NEW]
-- - Upward Thrust: AOE knockup (7s CD) [NEW]
-- - Summon 3 Dancing Swords [ONE TIME]
--
-- ABILITIES - PHASE 3 (49% HP) - ADDS TO P1+P2:
-- - Shadow: Shadow visual [ONE TIME]
-- - Quake: AOE damage (6s CD) [NEW]
-- - Flame Blade: Tank fire attack (7s CD) [NEW]
-- - Quick Strike: Tank rapid attack (3s CD) [NEW]
-- - Phalanx: Defensive buff (7s CD) [NEW]
-- - Summon 3 Dancing Swords [ONE TIME]
--
-- ABILITIES - PHASE 4 (20% HP) - ADDS TO ALL:
-- - Final Phase: Transformation visual [ONE TIME]
-- - Summon 3 Dancing Swords [ONE TIME]
-- - All 13 abilities continue
--
-- ADDS:
-- - Dancing Sword (NPC 21093)
-- - Summoned in waves of 3 per phase
-- - Total possible: 9 swords (3 per phase at 76%, 49%, 20%)
-- - 60-second auto-despawn timer
--
-- MECHANICS:
-- - GUIDLow-safe phase tracking (one-time triggers only)
-- - Retail-style additive phases (abilities stack, not replace)
-- - Controlled add waves (3 swords per phase transition)
-- - Progressive size increase (1.0x → 1.1x → 1.2x → 1.3x)
-- - Progressive difficulty increase through ability spam
-- - No memory leaks (proper cleanup)
--
-- FIXES FROM ORIGINAL:
-- - Fixed infinite sword spawning bug (was spawning every 1s)
-- - Added GUIDLow-safe phase tracking
-- - Converted to additive phases (retail-style)
-- - Added explicit event IDs for safe removal
-- - Added proper memory cleanup
-- - Added size progression for visual feedback
--
-- RETAIL-LIKE FEATURES:
-- - Additive phase design (like Lich King, Sindragosa)
-- - Add management (Dancing Swords)
-- - Progressive transformation visuals
-- - Size scaling with phases
-- - Multiple simultaneous abilities by Phase 4
--
-- DIFFICULTY: Raid Boss
-- LEVEL: 80+
-- ESTIMATED DURATION: 6-8 minutes
--------------------------------------------------------------------------------

print("Raid Boss - Narul the Flameseeker Loaded")

local BOSS_ID  = 888432
local SWORD_ID = 21093

--------------------------------------------------------------------------------
-- SPELLS - PHASE 1 (Mortal Combat)
--------------------------------------------------------------------------------
local SPELL_FIRES          = 42971
local SPELL_SMOKE          = 42355
local SPELL_BEHEAD         = 25814
local SPELL_DISEMBOWEL     = 22924
local SPELL_DISMEMBER      = 34073

--------------------------------------------------------------------------------
-- SPELLS - PHASE 2 (Worgen Transformation)
--------------------------------------------------------------------------------
local SPELL_FFORM          = 36114
local SPELL_WORGEN         = 32819
local SPELL_DEFTSLICE      = 44533
local SPELL_HARROWINGSLASH = 36110
local SPELL_UPWARD_THRUST  = 43547

--------------------------------------------------------------------------------
-- SPELLS - PHASE 3 (Shadow Ascension)
--------------------------------------------------------------------------------
local SPELL_SHADOW         = 39490
local SPELL_QUAKE          = 17742
local SPELL_FLAMEBLADE     = 38917
local SPELL_PHALYNX        = 41629
local SPELL_QUICKSTRIKE    = 5271

--------------------------------------------------------------------------------
-- SPELLS - PHASE 4 (Final Awakening)
--------------------------------------------------------------------------------
local SPELL_FINAL_PHASE    = 36876

--------------------------------------------------------------------------------
-- THRESHOLDS
--------------------------------------------------------------------------------
local TH_76 = 76  -- Phase 2: Worgen
local TH_49 = 49  -- Phase 3: Shadow
local TH_20 = 20  -- Phase 4: Final

--------------------------------------------------------------------------------
-- EVENT IDs
--------------------------------------------------------------------------------
local EVENT_FIRES           = 101
local EVENT_SMOKE           = 102
local EVENT_BEHEAD          = 103
local EVENT_DISEMBOWEL      = 104
local EVENT_DISMEMBER       = 105

local EVENT_DEFTSLICE       = 201
local EVENT_HARROWINGSLASH  = 202
local EVENT_UPWARD_THRUST   = 203

local EVENT_QUAKE           = 301
local EVENT_FLAMEBLADE      = 302
local EVENT_QUICKSTRIKE     = 303
local EVENT_PHALYNX         = 304

local EVENT_PHASE_CHECK     = 999

--------------------------------------------------------------------------------
-- YELLS
--------------------------------------------------------------------------------
local YELLS = {
    AGGRO = "In the face of death, Fear strikes the heart of even the strongest!",
    PHASE_2 = "I was trained, No. I was Bred for this...You will not Defeat me!",
    PHASE_3 = "Your hour of Doom Fast Approaches! Behold the true Vision that is Narul!",
    PHASE_4 = "It is an insult that one such as you even challenged me...",
    DEATH = "How...No..No...It cannot be"
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

local function SpawnSwords(self)
    local x, y, z = self:GetLocation()
    for i = 1, 3 do
        -- Spawn in triangular formation
        local angle = (i - 1) * (math.pi * 2 / 3)
        local dist = 8
        local spawnX = x + math.cos(angle) * dist
        local spawnY = y + math.sin(angle) * dist
        self:SpawnCreature(SWORD_ID, spawnX, spawnY, z, 0, 3, 60000)
    end
end

--------------------------------------------------------------------------------
-- PHASE 1 ABILITIES
--------------------------------------------------------------------------------
local function CastFires(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_FIRES, true)
end

local function CastSmoke(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_SMOKE, true)
end

local function CastBehead(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetRandomPlayer(self)
    if target then self:CastSpell(target, SPELL_BEHEAD, true) end
end

local function CastDisembowel(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_DISEMBOWEL, true)
end

local function CastDismember(_, _, _, self)
    if not self:IsInCombat() then return end
    local tank = GetTank(self)
    if tank then self:CastSpell(tank, SPELL_DISMEMBER, true) end
end

--------------------------------------------------------------------------------
-- PHASE 2 ABILITIES
--------------------------------------------------------------------------------
local function CastDeftslice(_, _, _, self)
    if not self:IsInCombat() then return end
    local tank = GetTank(self)
    if tank then self:CastSpell(tank, SPELL_DEFTSLICE, true) end
end

local function CastHarrowingslash(_, _, _, self)
    if not self:IsInCombat() then return end
    local tank = GetTank(self)
    if tank then self:CastSpell(tank, SPELL_HARROWINGSLASH, true) end
end

local function CastUpwardThrust(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_UPWARD_THRUST, true)
end

--------------------------------------------------------------------------------
-- PHASE 3 ABILITIES
--------------------------------------------------------------------------------
local function CastShadow(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_SHADOW, true)
end

local function CastQuake(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_QUAKE, true)
end

local function CastFlameblade(_, _, _, self)
    if not self:IsInCombat() then return end
    local tank = GetTank(self)
    if tank then self:CastSpell(tank, SPELL_FLAMEBLADE, true) end
end

local function CastPhalynx(_, _, _, self)
    if not self:IsInCombat() then return end
    self:CastSpell(self, SPELL_PHALYNX, true)
end

local function CastQuickstrike(_, _, _, self)
    if not self:IsInCombat() then return end
    local target = GetTank(self)
    if target then self:CastSpell(target, SPELL_QUICKSTRIKE, true) end
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

    if hp <= TH_20 and not p[20] then
        p[20] = true
        -- PHASE 4: Final Awakening
        self:SendUnitYell(YELLS.PHASE_4, 0)
        self:SetScale(1.3) -- Final size increase
        
        -- Final transformation
        self:CastSpell(self, SPELL_FINAL_PHASE, true)
        
        -- Spawn 3 final swords (ONE TIME)
        SpawnSwords(self)
        
        -- Stop phase checking - all abilities continue
        self:RemoveEventById(eventId)

    elseif hp <= TH_49 and not p[49] then
        p[49] = true
        -- PHASE 3: Shadow Ascension
        self:SendUnitYell(YELLS.PHASE_3, 0)
        self:SetScale(1.2) -- Size increase
        
        -- Shadow transformation
        self:CastSpell(self, SPELL_SHADOW, true)
        
        -- ADD Phase 3 abilities (keeps all previous)
        self:RegisterEvent(CastQuake,       6000, 0, EVENT_QUAKE)
        self:RegisterEvent(CastFlameblade,  7000, 0, EVENT_FLAMEBLADE)
        self:RegisterEvent(CastQuickstrike, 3000, 0, EVENT_QUICKSTRIKE)
        self:RegisterEvent(CastPhalynx,     7000, 0, EVENT_PHALYNX)
        
        -- Spawn 3 swords (ONE TIME)
        SpawnSwords(self)

    elseif hp <= TH_76 and not p[76] then
        p[76] = true
        -- PHASE 2: Worgen Transformation
        self:SendUnitYell(YELLS.PHASE_2, 0)
        self:SetScale(1.1) -- Size increase
        
        -- Transform to Worgen + Fel Form
        self:CastSpell(self, SPELL_WORGEN, true)
        self:CastSpell(self, SPELL_FFORM, true)
        
        -- ADD Phase 2 abilities (keeps all Phase 1)
        self:RegisterEvent(CastDeftslice,      11000, 0, EVENT_DEFTSLICE)
        self:RegisterEvent(CastHarrowingslash,  2000, 0, EVENT_HARROWINGSLASH)
        self:RegisterEvent(CastUpwardThrust,    7000, 0, EVENT_UPWARD_THRUST)
        
        -- Spawn 3 swords (ONE TIME)
        SpawnSwords(self)
    end
end

--------------------------------------------------------------------------------
-- COMBAT EVENTS
--------------------------------------------------------------------------------
local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell(YELLS.AGGRO, 0)

    local guid = creature:GetGUIDLow()
    phases[guid] = {}

    -- PHASE 1 - Start initial abilities
    creature:RegisterEvent(CastFires,      12000, 0, EVENT_FIRES)
    creature:RegisterEvent(CastSmoke,       3000, 0, EVENT_SMOKE)
    creature:RegisterEvent(CastBehead,      8000, 0, EVENT_BEHEAD)
    creature:RegisterEvent(CastDisembowel,  6000, 0, EVENT_DISEMBOWEL)
    creature:RegisterEvent(CastDismember,   5000, 0, EVENT_DISMEMBER)
    
    -- Phase checker
    creature:RegisterEvent(PhaseCheck, 1000, 0, EVENT_PHASE_CHECK)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
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