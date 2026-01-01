--------------------------------------------------------------------------------
-- Foreman Glitzbolt - Explosive Wagon Boss Fight (RETAIL STYLE)
-- NPC ID: 600664 (Boss)
-- Created by: Manmadedrummer | Delve System
--------------------------------------------------------------------------------
-- SETUP REQUIRED:
-- 1. Spawn Foreman Glitzbolt (600664) near explosive wagon
-- 2. Spawn Explosive Wagon (GO 184700) - this will EXPLODE on boss death!
-- 3. Spawn any Venture Co. NPCs you want around the area (they handle their own AI)
--
-- IDLE BEHAVIOR (Before Combat):
-- Foreman says random lines every 5 seconds:
-- - "Be careful with that merchandise!"
-- - "Hurry up! We needed this out yesterday!"
-- - "These explosives won't load themselves!"
-- - "The boss is gonna have my head if this shipment is late!"
-- - "Watch it! One spark and we're all dead!"
-- - "Move it! Time is money, friend!"
--
-- BOSS MECHANICS (Retail Style):
-- - Goblin Bomb: Random player targeted bomb
-- - Dagger Throw: Ranged attack
-- - Dragon Gun: Flame cone
-- - Rocket Boots: Mobility
-- - Lay on Hands: Self-heal at 60%
-- - Nitro Boost: 30% enrage phase
-- - AIR SUPPORT: Every 30 seconds calls in TWO Incendiary Rockets (napalm)
--   Rockets create fire zones that deal 1500 DPS for 15 seconds - MUST DODGE!
--
-- DEATH SEQUENCE:
-- Boss dies → "You think you won?!" (ZONE-WIDE YELL) (2s) → 
-- "Yippee-ki-yay, mother f--" (CHAT BUBBLE - everyone sees it above his head) → 
-- MASSIVE EXPLOSION:
--   - Beryl Shield Explosion (45796) - main damage blast
--   - Fire Bomb (67473) - fire visual effect
--   - Explosion Visual (71495) - flame crash visual
--   - Camera Shake Tremor (69235) - screen shake
-- → Wagon despawns, any NPCs within 25 yards are vaporized, boss body destroyed
--------------------------------------------------------------------------------

print("========================================")
print("Foreman Glitzbolt: EXPLOSIVE Boss Fight")
print("KAMIKAZE DEATH SEQUENCE ENABLED")
print("Wagon GO 184700 will EXPLODE on death!")
print("========================================")

local BOSS_ID = 600664

-- Spells (Boss)
local SPELL_GOBLIN_BOMB         = 23134
local SPELL_DAGGER_THROW        = 67280
local SPELL_GOBLIN_DRAGON_GUN   = 44273
local SPELL_LAY_ON_HANDS        = 9257
local SPELL_ROCKET_BOOTS        = 8892
local SPELL_NITRO_BOOST         = 54861
local SPELL_INCENDIARY_ROCKET   = 67456  -- Air Support napalm strike

-- Explosion Spells (Death)
local SPELL_BERYL_EXPLOSION     = 45796   -- Main damage
local SPELL_FIRE_BOMB           = 67473   -- Fire visual
local SPELL_EXPLOSION_VISUAL    = 71495   -- Flame crash
local SPELL_CAMERA_SHAKE        = 69235   -- Tremor

-- Configuration
local NITRO_THRESHOLD = 30
local EXPLOSION_RADIUS = 25  -- Kills NPCs within this range
local AIR_SUPPORT_INTERVAL = 30000  -- 30 seconds between air strikes

-- Boss phases tracking
local phases = {}

-- Idle speech lines (before combat)
local IDLE_SPEECHES = {
    "Be careful with that merchandise!",
    "Hurry up! We needed this out yesterday!",
    "These explosives won't load themselves!",
    "The boss is gonna have my head if this shipment is late!",
    "Watch it! One spark and we're all dead!",
    "Move it! Time is money, friend!"
}

-- Idle speech state tracking
local idleSpeechActive = {}

--------------------------------------------------------------------------------
-- BOSS ABILITIES
--------------------------------------------------------------------------------

local function CastGoblinBomb(eventId, delay, calls, boss)
    if not boss:IsInCombat() then return end
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_GOBLIN_BOMB, true)
        boss:SendUnitSay("Take this!", 0)
    end
end

local function CastDaggerThrow(eventId, delay, calls, boss)
    if not boss:IsInCombat() then return end
    local victim = boss:GetVictim()
    if victim then
        local distance = boss:GetDistance(victim)
        if distance > 5 then
            boss:CastSpell(victim, SPELL_DAGGER_THROW, false)
        end
    end
end

local function CastGoblinDragonGun(eventId, delay, calls, boss)
    if not boss:IsInCombat() then return end
    local victim = boss:GetVictim()
    if victim then
        boss:CastSpell(victim, SPELL_GOBLIN_DRAGON_GUN, false)
        boss:SendUnitYell("Burn!", 0)
    end
end

local function CastLayOnHands(eventId, delay, calls, boss)
    if not boss:IsInCombat() then return end
    if boss:GetHealthPct() < 60 then
        boss:CastSpell(boss, SPELL_LAY_ON_HANDS, false)
        boss:SendUnitSay("Not done yet!", 0)
    end
end

local function CastRocketBoots(eventId, delay, calls, boss)
    if not boss:IsInCombat() then return end
    boss:CastSpell(boss, SPELL_ROCKET_BOOTS, true)
end

local function PhaseCheck(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    local guid = boss:GetGUIDLow()
    phases[guid] = phases[guid] or {}
    
    if boss:GetHealthPct() <= NITRO_THRESHOLD and not phases[guid].nitro then
        phases[guid].nitro = true
        boss:SendUnitYell("You're gonna regret this!", 0)
        boss:CastSpell(boss, SPELL_NITRO_BOOST, true)
    end
end

-- Air Support - Incendiary Rockets
local function CallAirSupport(eventId, delay, calls, boss)
    if not boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    boss:SendUnitYell("Calling for Air Support!", 0)
    
    -- Get random players or use current target
    local players = boss:GetPlayersInRange(100)
    if players and #players > 0 then
        -- Fire first rocket immediately at random player
        local target1 = players[math.random(#players)]
        boss:CastSpell(target1, SPELL_INCENDIARY_ROCKET, true)
        
        -- Fire second rocket 1.5 seconds later at another random location
        boss:RegisterEvent(function(e, d, c, creature)
            if creature and creature:IsInCombat() then
                local currentPlayers = creature:GetPlayersInRange(100)
                if currentPlayers and #currentPlayers > 0 then
                    local target2 = currentPlayers[math.random(#currentPlayers)]
                    creature:CastSpell(target2, SPELL_INCENDIARY_ROCKET, true)
                    creature:SendUnitSay("Incoming!", 0)
                end
            end
        end, 1500, 1)
    end
end

-- Idle Speech (before combat)
local function IdleSpeech(eventId, delay, calls, boss)
    if boss:IsInCombat() or boss:IsDead() then
        boss:RemoveEventById(eventId)
        return
    end
    
    -- Say random idle line
    local speech = IDLE_SPEECHES[math.random(#IDLE_SPEECHES)]
    boss:SendUnitSay(speech, 0)
    
    -- Perform yelling emote
    boss:PerformEmote(5)  -- EMOTE_ONESHOT_EXCLAMATION (yelling gesture)
end

-- Start idle speech for already-spawned bosses
local function StartIdleSpeechCheck()
    -- This is a global check that runs periodically to start idle speech
    -- for any Foreman that's already in the world
    print("Checking for pre-spawned Foreman Glitzbolt instances...")
end

-- Auto-initialize idle speech on first AI update
local function OnAIUpdate(event, boss, diff)
    local guid = boss:GetGUIDLow()
    
    -- Only initialize once per boss
    if not idleSpeechActive[guid] and not boss:IsInCombat() then
        idleSpeechActive[guid] = true
        boss:RegisterEvent(IdleSpeech, 45000, 0)
        print("Auto-started idle speech for Foreman GUID " .. guid)
    end
end

--------------------------------------------------------------------------------
-- BOSS COMBAT EVENTS
--------------------------------------------------------------------------------

local function OnBossCombat(event, boss, target)
    boss:SendUnitYell("You're messin' with Venture Co. property! Big mistake!", 0)
    boss:RemoveEvents()  -- Stop idle speech
    
    local guid = boss:GetGUIDLow()
    phases[guid] = {}
    idleSpeechActive[guid] = false  -- Mark idle speech as stopped
    
    -- Standard abilities
    boss:RegisterEvent(CastGoblinBomb, 12000, 0)
    boss:RegisterEvent(CastDaggerThrow, 8000, 0)
    boss:RegisterEvent(CastGoblinDragonGun, 15000, 0)
    boss:RegisterEvent(CastLayOnHands, 20000, 0)
    boss:RegisterEvent(CastRocketBoots, 25000, 0)
    boss:RegisterEvent(PhaseCheck, 1000, 0)
    
    -- Air Support - Every 30 seconds
    boss:RegisterEvent(CallAirSupport, AIR_SUPPORT_INTERVAL, 0)
end

local function OnBossLeaveCombat(event, boss)
    boss:RemoveEvents()
    local guid = boss:GetGUIDLow()
    phases[guid] = nil
    
    -- Restart idle speech
    idleSpeechActive[guid] = true
    boss:RegisterEvent(IdleSpeech, 5000, 0)
    
    print("Foreman reset - idle speech restarted")
end

local function OnBossKilledTarget(event, boss, victim)
    if victim and victim:IsPlayer() then
        local taunts = {
            "That's what you get!",
            "Venture Co. doesn't lose!",
            "Should've stayed away!"
        }
        boss:SendUnitYell(taunts[math.random(#taunts)], 0)
    end
end

local function OnBossDeath(event, boss, killer)
    boss:RemoveEvents()
    local guid = boss:GetGUIDLow()
    
    -- Phase 1: Defiant yell (ZONE-WIDE)
    boss:SendUnitYell("You think you won?!", 0)
    boss:PlayDirectSound(6595)  -- Goblin laugh sound
    
    -- Phase 2: Famous last words (2 seconds later) - CHAT BUBBLE (everyone can see it above his head)
    boss:RegisterEvent(function(e, d, c, creature)
        if creature then
            creature:SendUnitSay("Yippee-ki-yay, mother f--", 0)  -- Shows in chat bubble above boss
        end
    end, 2000, 1)
    
    -- Phase 3: MASSIVE EXPLOSION (3 seconds later)
    boss:RegisterEvent(function(e, d, c, creature)
        if creature then
            print("MASSIVE EXPLOSION TRIGGERED!")
            
            -- LAYERED EXPLOSION EFFECTS
            creature:CastSpell(creature, SPELL_BERYL_EXPLOSION, true)   -- Crystal explosion + damage
            creature:CastSpell(creature, SPELL_FIRE_BOMB, true)         -- Fire visual
            creature:CastSpell(creature, SPELL_EXPLOSION_VISUAL, true)  -- Flame crash
            creature:CastSpell(creature, SPELL_CAMERA_SHAKE, true)      -- Screen shake
            
            -- Find and despawn the explosive wagon
            local nearbyObjects = creature:GetGameObjectsInRange(50, 184700)
            if nearbyObjects then
                for _, wagon in ipairs(nearbyObjects) do
                    if wagon then
                        print("Despawning explosive wagon")
                        wagon:Despawn()
                    end
                end
            end
            
            -- Kill any nearby NPCs in the blast (indiscriminate explosion)
            local nearbyCreatures = creature:GetCreaturesInRange(EXPLOSION_RADIUS)
            if nearbyCreatures then
                for _, npc in ipairs(nearbyCreatures) do
                    if npc and npc:IsAlive() and npc:GetEntry() ~= BOSS_ID then
                        npc:DealDamage(npc, npc:GetHealth())
                        npc:SendUnitEmote("is vaporized by the explosion!")
                        print("NPC " .. npc:GetEntry() .. " vaporized in explosion")
                    end
                end
            end
            
            print("Boss body vaporized")
            -- Vaporize boss body
            creature:DespawnOrUnsummon(500)
        end
    end, 3000, 1)
    
    phases[guid] = nil
end

--------------------------------------------------------------------------------
-- REGISTER EVENTS
--------------------------------------------------------------------------------

-- Boss events
RegisterCreatureEvent(BOSS_ID, 27, OnAIUpdate)       -- Event 27: OnAIUpdate (auto-start idle speech)
RegisterCreatureEvent(BOSS_ID, 1, OnBossCombat)
RegisterCreatureEvent(BOSS_ID, 2, OnBossLeaveCombat)
RegisterCreatureEvent(BOSS_ID, 3, OnBossKilledTarget)
RegisterCreatureEvent(BOSS_ID, 4, OnBossDeath)

print("Foreman Glitzbolt boss script loaded successfully!")
print("Idle speech auto-starts for pre-spawned instance bosses")