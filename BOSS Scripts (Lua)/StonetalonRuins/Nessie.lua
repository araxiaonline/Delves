--------------------------------------------------------------------------------
-- Nessie - The Tri-Elemental Hydra (BC Retail Style)
-- NPC ID: 600662
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- THEME: Multi-headed hydra with elemental powers (Water, Ice, Lightning)
--
-- BC RETAIL MECHANICS:
-- 
-- PHASE 1 (100% - 66%): All Three Heads Active
--   - Water Head: Tidal Surge (38358), Water Spit (40086), Aquatic Blast (36826)
--   - Ice Head: Frost Breath (43562), Frozen Bite (61186)
--   - Lightning Head: Chain Lightning (12058), Thunderclap (43583)
--   - All heads attack simultaneously - elemental chaos!
--
-- PHASE 2 (66% - 33%): Focused Assault (One Head Dominant)
--   - Random head becomes empowered
--   - Water: Enhanced Water Spit damage
--   - Ice: Deep Freeze (60511) - stuns random player
--   - Lightning: Storm Cloud (57408) - persistent AOE lightning
--
-- PHASE 3 (<33%): Enraged Frenzy
--   - All three heads go berserk
--   - Raging Storm (74423) - cast immediately on phase transition
--   - Nether Beam (35873) - All three elements combine (every 20s)
--   - All abilities cast much faster (ability spam!)
--------------------------------------------------------------------------------

print("========================================")
print("Nessie: Tri-Elemental Hydra Loaded")
print("BC Retail Style - Multi-Head Mechanics")
print("========================================")

local BOSS_ID = 600662  -- Nessie the Hydra

-- Spells (Water Head)
local SPELL_TIDAL_SURGE         = 38358   -- Tidal Surge
local SPELL_WATER_SPIT          = 40086   -- Water Spit
local SPELL_AQUATIC_BLAST       = 36826   -- Summon Corrupted Water Elemental

-- Spells (Ice Head)
local SPELL_FROST_BREATH        = 43562   -- Frost Breath
local SPELL_FROZEN_BITE         = 61186   -- Frozen Bite
local SPELL_DEEP_FREEZE         = 60511   -- Deep Freeze

-- Spells (Lightning Head)
local SPELL_CHAIN_LIGHTNING     = 12058   -- Chain Lightning
local SPELL_THUNDERCLAP         = 43583   -- Thunderclap
local SPELL_STORM_CLOUD         = 57408   -- Storm Cloud

-- Spells (Combined/Special)
local SPELL_NETHER_BEAM         = 35873   -- Nether Beam (prismatic)
local SPELL_RAGING_STORM        = 74423   -- Summon Raging Storm Elemental

-- Phase thresholds
local PHASE_2_HP = 66
local PHASE_3_HP = 33

-- Boss phases tracking
local phases = {}

--------------------------------------------------------------------------------
-- PHASE 1 ABILITIES (100% - 66%) - All Heads Active
--------------------------------------------------------------------------------

-- Water Head Abilities
local function WaterHead_TidalSurge(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    boss:CastSpell(boss, SPELL_TIDAL_SURGE, false)
    boss:SendUnitYell("Feel the crushing waves!", 0)
end

local function WaterHead_WaterSpit(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_WATER_SPIT, false)
        boss:SendUnitSay("Drown!", 0)
    end
end

local function WaterHead_AquaticBlast(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_AQUATIC_BLAST, false)
        boss:SendUnitSay("The depths consume you!", 0)
    end
end

-- Ice Head Abilities
local function IceHead_FrostBreath(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_FROST_BREATH, false)
        boss:SendUnitSay("Freeze!", 0)
    end
end

local function IceHead_FrozenBite(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_FROZEN_BITE, false)
    end
end

-- Lightning Head Abilities
local function LightningHead_ChainLightning(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_CHAIN_LIGHTNING, false)
        boss:SendUnitSay("Lightning strikes!", 0)
    end
end

local function LightningHead_Thunderclap(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    boss:CastSpell(boss, SPELL_THUNDERCLAP, false)
end

--------------------------------------------------------------------------------
-- PHASE 2 ABILITIES (66% - 33%) - Empowered Head
--------------------------------------------------------------------------------

local function EmpoweredAbility(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local guid = boss:GetGUIDLow()
    local p = phases[guid]
    
    if not p or not p.empoweredHead then return end
    
    if p.empoweredHead == "water" then
        -- Water Spit empowered
        local victim = boss:GetVictim()
        if victim then
            boss:CastSpell(victim, SPELL_WATER_SPIT, false)
            boss:SendUnitYell("Torrential assault!", 0)
        end
        
    elseif p.empoweredHead == "ice" then
        -- Deep Freeze random player
        local players = boss:GetPlayersInRange(50)
        if players and #players > 0 then
            local target = players[math.random(#players)]
            boss:CastSpell(target, SPELL_DEEP_FREEZE, false)
            boss:SendUnitYell("Frozen solid!", 0)
        end
        
    elseif p.empoweredHead == "lightning" then
        -- Storm Cloud
        boss:CastSpell(boss, SPELL_STORM_CLOUD, false)
        boss:SendUnitYell("The storm awakens!", 0)
    end
end

--------------------------------------------------------------------------------
-- PHASE 3 ABILITIES (<33%) - Enraged Frenzy
--------------------------------------------------------------------------------

local function NetherBeam(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    boss:SendUnitYell("ALL HEADS UNITE! WITNESS TRUE POWER!", 0)
    
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_NETHER_BEAM, false)
    end
end

local function RagingStorm(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    boss:SendUnitYell("The elements rage!", 0)
    boss:CastSpell(boss, SPELL_RAGING_STORM, false)
end

--------------------------------------------------------------------------------
-- PHASE MANAGEMENT
--------------------------------------------------------------------------------

local function PhaseCheck(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local guid = boss:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    local p = phases[guid]
    
    local hp = boss:GetHealthPct()
    
    -- PHASE 2: Empowered Head (66% HP)
    if hp <= PHASE_2_HP and not p.phase2 then
        p.phase2 = true
        
        -- Randomly pick which head becomes empowered
        local heads = {"water", "ice", "lightning"}
        p.empoweredHead = heads[math.random(#heads)]
        
        if p.empoweredHead == "water" then
            boss:SendUnitYell("The Water Head surges with power!", 0)
        elseif p.empoweredHead == "ice" then
            boss:SendUnitYell("The Ice Head crystallizes with fury!", 0)
        else
            boss:SendUnitYell("The Lightning Head crackles with energy!", 0)
        end
        
        -- Start empowered ability (every 12 seconds)
        boss:RegisterEvent(EmpoweredAbility, 12000, 0)
        
        print("Phase 2: Empowered " .. p.empoweredHead .. " head")
    end
    
    -- PHASE 3: Enraged Frenzy (33% HP)
    if hp <= PHASE_3_HP and not p.phase3 then
        p.phase3 = true
        
        boss:SendUnitYell("YOU DARE WOUND ME?! ALL HEADS ATTACK!", 0)
        
        -- Cast Raging Storm
        RagingStorm(nil, nil, nil, boss)
        
        -- Nether Beam every 20 seconds
        boss:RegisterEvent(NetherBeam, 20000, 0)
        
        -- Speed up all abilities
        boss:RemoveEvents()
        boss:RegisterEvent(WaterHead_TidalSurge, 15000, 0)
        boss:RegisterEvent(WaterHead_WaterSpit, 8000, 0)
        boss:RegisterEvent(WaterHead_AquaticBlast, 6000, 0)
        boss:RegisterEvent(IceHead_FrostBreath, 7000, 0)
        boss:RegisterEvent(IceHead_FrozenBite, 9000, 0)
        boss:RegisterEvent(LightningHead_ChainLightning, 5000, 0)
        boss:RegisterEvent(LightningHead_Thunderclap, 12000, 0)
        boss:RegisterEvent(NetherBeam, 20000, 0)
        boss:RegisterEvent(PhaseCheck, 1000, 0)
        
        print("Phase 3: Enraged Frenzy")
    end
end

--------------------------------------------------------------------------------
-- COMBAT EVENTS
--------------------------------------------------------------------------------

local function OnBossCombat(event, boss, target)
    boss:SendUnitYell("Three heads, three deaths for you!", 0)
    boss:RemoveEvents()
    
    local guid = boss:GetGUIDLow()
    phases[guid] = {}
    
    -- Phase 1: All heads active
    boss:RegisterEvent(WaterHead_TidalSurge, 22000, 0)
    boss:RegisterEvent(WaterHead_WaterSpit, 12000, 0)
    boss:RegisterEvent(WaterHead_AquaticBlast, 8000, 0)
    boss:RegisterEvent(IceHead_FrostBreath, 10000, 0)
    boss:RegisterEvent(IceHead_FrozenBite, 14000, 0)
    boss:RegisterEvent(LightningHead_ChainLightning, 7000, 0)
    boss:RegisterEvent(LightningHead_Thunderclap, 15000, 0)
    
    -- Phase manager
    boss:RegisterEvent(PhaseCheck, 1000, 0)
end

local function OnBossLeaveCombat(event, boss)
    boss:RemoveEvents()
    local guid = boss:GetGUIDLow()
    phases[guid] = nil
end

local function OnBossKilledTarget(event, boss, victim)
    if victim and victim:IsPlayer() then
        local taunts = {
            "Your bones shall rest in the depths!",
            "Frozen forever!",
            "Lightning does not forgive!"
        }
        boss:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnBossDeath(event, boss, killer)
    boss:RemoveEvents()
    local guid = boss:GetGUIDLow()
    
    boss:SendUnitYell("All... heads... fall... The beast... is... slain...", 0)
    
    phases[guid] = nil
end

--------------------------------------------------------------------------------
-- REGISTER EVENTS
--------------------------------------------------------------------------------

RegisterCreatureEvent(BOSS_ID, 1, OnBossCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnBossLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnBossKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnBossDeath)

print("Nessie (600662): Tri-Elemental Hydra loaded successfully!")
print("No add NPCs required - spells handle summons")