--------------------------------------------------------------------------------
-- Ruin Smasher X-98 - Venture Co. War Machine (WOTLK Retail Style)
-- NPC ID: 600663
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- THEME: Goblin-engineered destruction machine with overheating mechanics
--
-- BOSS MECHANICS (Retail Style):
-- Phase 1 (100% - 50%): Standard machine attacks
--   - Crowd Pummel (10887): Heavy frontal AOE knockback
--   - Arcing Smash (8374): Cleave attack
--   - Trample (48783): Charges random player
--   - Rocket Launch (46188): Fires rockets at random players every 20s
--
-- Phase 2 (50% - 25%): OVERHEATING
--   - Overdrive (18546): Speed and attack rate increase
--   - Steam Blast (50375): Vents steam every 15 seconds (AOE damage)
--   - All abilities continue
--
-- Phase 3 (<25%): CRITICAL MELTDOWN
--   - Erratic behavior - faster ability spam
--   - Dump Oil (50269): Leaves oil patches on ground every 8s
--   - Steam vents more frequently (every 10s)
--   - Machine is unstable and deadly
--
-- DEATH: Machine shuts down - "CRITICAL FAILURE... SYSTEMS... OFFLINE..."
--------------------------------------------------------------------------------

print("========================================")
print("Ruin Smasher X-98: Mechanical Boss Loaded")
print("WotLK Retail Style - 3 Phase Fight")
print("========================================")

local BOSS_ID = 600663

-- Spells (Machine Attacks)
local SPELL_CROWD_PUMMEL        = 10887   -- Heavy frontal knockback
local SPELL_ARCING_SMASH        = 8374    -- Cleave
local SPELL_TRAMPLE             = 48783   -- Trample
local SPELL_ROCKET_BARRAGE      = 46188   -- Rocket Launch
local SPELL_STEAM_BLAST         = 50375   -- Steam Blast
local SPELL_OVERDRIVE           = 18546   -- Overdrive
local SPELL_BURNING_OIL         = 50269   -- Dump Oil

-- Phase thresholds
local PHASE_2_HP = 50
local PHASE_3_HP = 25

-- Boss phases tracking
local phases = {}

--------------------------------------------------------------------------------
-- PHASE 1 ABILITIES (100% - 50%)
--------------------------------------------------------------------------------

local function CastCrowdPummel(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    boss:CastSpell(boss, SPELL_CROWD_PUMMEL, false)
    boss:SendUnitSay("Crowd control protocol engaged!", 0)
end

local function CastArcingSmash(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_ARCING_SMASH, false)
    end
end

local function CastTrample(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    -- Trample random player
    local players = boss:GetPlayersInRange(50)
    if players and #players > 0 then
        local target = players[math.random(#players)]
        boss:CastSpell(target, SPELL_TRAMPLE, false)
        boss:SendUnitSay("Target acquired!", 0)
    end
end

local function CastRocketBarrage(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    boss:SendUnitYell("Initiating rocket barrage!", 0)
    
    -- Fire 3 rockets at random players
    local players = boss:GetPlayersInRange(50)
    if players and #players > 0 then
        for i = 1, 3 do
            boss:RegisterEvent(function(e, d, c, creature)
                if creature and creature:IsInCombat() then
                    local currentPlayers = creature:GetPlayersInRange(50)
                    if currentPlayers and #currentPlayers > 0 then
                        local target = currentPlayers[math.random(#currentPlayers)]
                        creature:CastSpell(target, SPELL_ROCKET_BARRAGE, true)
                    end
                end
            end, i * 800, 1)  -- Stagger rockets 0.8s apart
        end
    end
end

--------------------------------------------------------------------------------
-- PHASE 2 ABILITIES (50% - 25%) - OVERHEATING
--------------------------------------------------------------------------------

local function VentSteam(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    boss:SendUnitYell("Warning: Core temperature critical!", 0)
    boss:CastSpell(boss, SPELL_STEAM_BLAST, false)
    
    -- Visual: machine venting steam (damage aura around boss)
end

--------------------------------------------------------------------------------
-- PHASE 3 ABILITIES (<25%) - CRITICAL MELTDOWN
--------------------------------------------------------------------------------

local function ErraticBehavior(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    -- Random ability spam
    local abilities = {SPELL_CROWD_PUMMEL, SPELL_ARCING_SMASH, SPELL_TRAMPLE}
    local randomSpell = abilities[math.random(#abilities)]
    
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, randomSpell, false)
    end
end

local function LeaveOilPatch(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    -- Leave burning oil at current location
    local x, y, z = boss:GetLocation()
    boss:CastSpell(boss, SPELL_BURNING_OIL, true)
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
    
    -- PHASE 2: Overheating (50% HP)
    if hp <= PHASE_2_HP and not p.phase2 then
        p.phase2 = true
        
        boss:SendUnitYell("System overheating! Engaging emergency protocols!", 0)
        boss:CastSpell(boss, SPELL_OVERDRIVE, true)  -- Speed boost
        
        -- Start venting steam every 15 seconds
        boss:RegisterEvent(VentSteam, 15000, 0)
        
        print("Phase 2: Overheating activated")
    end
    
    -- PHASE 3: Critical Meltdown (25% HP)
    if hp <= PHASE_3_HP and not p.phase3 then
        p.phase3 = true
        
        boss:SendUnitYell("CRITICAL MALFUNCTION! CORE DESTABILIZING!", 0)
        
        -- Erratic behavior - spam abilities
        boss:RegisterEvent(ErraticBehavior, 5000, 0)
        
        -- Leave oil patches every 8 seconds
        boss:RegisterEvent(LeaveOilPatch, 8000, 0)
        
        -- Increase steam vent frequency (every 10s instead of 15s)
        boss:RemoveEvents()  -- Clear old steam timer
        boss:RegisterEvent(VentSteam, 10000, 0)
        
        -- Re-register combat abilities
        boss:RegisterEvent(CastCrowdPummel, 9000, 0)
        boss:RegisterEvent(CastArcingSmash, 6000, 0)
        boss:RegisterEvent(CastTrample, 12000, 0)
        boss:RegisterEvent(CastRocketBarrage, 15000, 0)
        boss:RegisterEvent(ErraticBehavior, 5000, 0)
        boss:RegisterEvent(LeaveOilPatch, 8000, 0)
        boss:RegisterEvent(PhaseCheck, 1000, 0)
        
        print("Phase 3: Critical Meltdown activated")
    end
end

--------------------------------------------------------------------------------
-- COMBAT EVENTS
--------------------------------------------------------------------------------

local function OnBossCombat(event, boss, target)
    boss:SendUnitYell("Intruder detected! Initiating elimination sequence!", 0)
    boss:RemoveEvents()
    
    local guid = boss:GetGUIDLow()
    phases[guid] = {}
    
    -- Phase 1 abilities
    boss:RegisterEvent(CastCrowdPummel, 11000, 0)   -- Every 11-14s
    boss:RegisterEvent(CastArcingSmash, 8000, 0)    -- Every 8-12s
    boss:RegisterEvent(CastTrample, 15000, 0)       -- Every 15s
    boss:RegisterEvent(CastRocketBarrage, 20000, 0) -- Every 20s
    
    -- Phase manager
    boss:RegisterEvent(PhaseCheck, 1000, 0)
end

local function OnBossLeaveCombat(event, boss)
    boss:RemoveEvents()
    local guid = boss:GetGUIDLow()
    phases[guid] = nil
    
    boss:SendUnitSay("Target lost. Returning to standby mode.", 0)
end

local function OnBossKilledTarget(event, boss, victim)
    if victim and victim:IsPlayer() then
        local taunts = {
            "Target eliminated.",
            "Hostile neutralized.",
            "Efficiency: 100%"
        }
        boss:SendUnitSay(taunts[math.random(#taunts)], 0)
    end
end

local function OnBossDeath(event, boss, killer)
    boss:RemoveEvents()
    local guid = boss:GetGUIDLow()
    
    boss:SendUnitYell("CRITICAL FAILURE... SYSTEMS... OFFLINE...", 0)
    
    phases[guid] = nil
end

--------------------------------------------------------------------------------
-- REGISTER EVENTS
--------------------------------------------------------------------------------

RegisterCreatureEvent(BOSS_ID, 1, OnBossCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnBossLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnBossKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnBossDeath)

print("Ruin Smasher X-98 loaded successfully!")
print("3-Phase mechanical boss fight ready")