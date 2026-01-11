-- ==================================================================================
-- QUEL'THALAS ISLAND DELVE - SQL EXPORT
-- ==================================================================================
-- Delve Name: Quel'Thalas Island
-- Map ID: 908
-- Level Range: 83-85
-- Total NPCs: 7 (IDs 600643-600649)
-- Total Spawns: 58
-- ==================================================================================

-- ==================================================================================
-- CREATURE TEMPLATES
-- ==================================================================================

DELETE FROM creature_template WHERE entry IN (600643, 600644, 600645, 600646, 600647, 600648, 600649);
INSERT INTO creature_template (entry,difficulty_entry_1,difficulty_entry_2,difficulty_entry_3,KillCredit1,KillCredit2,name,subname,IconName,gossip_menu_id,minlevel,maxlevel,`exp`,faction,npcflag,speed_walk,speed_run,speed_swim,speed_flight,detection_range,`scale`,`rank`,dmgschool,DamageModifier,BaseAttackTime,RangeAttackTime,BaseVariance,RangeVariance,unit_class,unit_flags,unit_flags2,dynamicflags,family,trainer_type,trainer_spell,trainer_class,trainer_race,`type`,type_flags,lootid,pickpocketloot,skinloot,PetSpellDataId,VehicleId,mingold,maxgold,AIName,MovementType,HoverHeight,HealthModifier,ManaModifier,ArmorModifier,ExperienceModifier,RacialLeader,movementId,RegenHealth,mechanic_immune_mask,spell_school_immune_mask,flags_extra,ScriptName,VerifiedBuild) VALUES
(600643,0,0,0,0,0,'Bloodsail Raider','Delve',NULL,0,83,83,0,168,0,1.0,1.19048,1.0,1.0,20.0,1.0,1,0,36.9,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,600643,600643,0,0,0,76,350,'SmartAI',1,1.0,38.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600644,0,0,0,0,0,'Bloodsail Swashbuckler','Delve',NULL,0,83,83,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,1,0,35.0,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,600644,600644,0,0,0,61,404,'SmartAI',0,1.0,36.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600645,0,0,0,0,0,'Bloodsail Warlock','Delve',NULL,0,83,83,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,1,0,25.2,2000,2000,1.0,1.0,8,32768,2048,0,0,0,0,0,0,7,0,600645,600645,0,0,0,62,401,'SmartAI',0,1.0,45.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600646,0,0,0,0,0,'Bloodsail Sea Dog','Delve',NULL,0,83,84,0,168,0,1.0,1.15287,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,600646,600646,0,0,0,73,452,'SmartAI',0,1.0,36.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600647,0,0,0,0,0,'Bloodsail Elder Magus','Delve',NULL,0,83,84,0,168,0,1.0,1.71429,1.0,1.0,20.0,1.0,1,0,17.5,2000,2000,1.0,1.0,8,32768,2048,0,0,0,0,0,0,7,0,600647,600647,0,0,0,66,444,'SmartAI',0,1.0,32.0,10.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600648,0,0,0,0,0,'Fleet Master Skaldron','Delve Boss',NULL,0,85,85,0,168,2,1.0,1.8,1.0,1.0,20.0,1.0,3,0,35.0,1800,2000,1.0,1.0,1,64,2048,0,0,0,0,0,0,7,76,600648,0,0,0,0,88,408,'',0,1.0,120.0,2.0,1.0,1.0,0,0,1,608908883,0,0,'',12340),
(600649,0,0,0,0,0,'Lithianawan','Delve Boss',NULL,0,85,85,0,168,0,1.0,1.71426,1.0,1.0,20.0,1.0,3,0,37.3,2000,2000,1.0,1.0,2,64,2048,0,0,0,0,0,0,7,76,600649,0,0,0,0,859,1201,'',1,1.0,95.0,20.0,1.0,2.0,0,0,1,613105499,0,0,'',12340);

-- ==================================================================================
-- CREATURE TEMPLATE MODELS
-- ==================================================================================

DELETE FROM creature_template_model WHERE CreatureID IN (600643, 600644, 600645, 600646, 600647, 600648, 600649);
INSERT INTO creature_template_model (CreatureID,Idx,CreatureDisplayID,DisplayScale,Probability,VerifiedBuild) VALUES
(600643,0,793,1.0,1.0,12340),
(600644,0,796,1.0,1.0,12340),
(600644,1,794,1.0,1.0,12340),
(600645,0,4461,1.0,1.0,12340),
(600645,1,4462,1.0,1.0,12340),
(600646,0,796,1.0,1.0,12340),
(600646,1,1768,1.0,1.0,12340),
(600647,0,2563,1.0,1.0,12340),
(600647,1,2564,1.0,1.0,12340),
(600648,0,797,1.0,1.0,12340),
(600649,0,21012,1.0,1.0,12340);

-- ==================================================================================
-- CREATURE TEMPLATE SPELLS
-- ==================================================================================

DELETE FROM creature_template_spell WHERE CreatureID IN (600643, 600644, 600645, 600646, 600647, 600648, 600649);
INSERT INTO creature_template_spell (CreatureID,`Index`,Spell,VerifiedBuild) VALUES
(600643,0,6533,12340),
(600643,1,30798,12340),
(600644,0,6713,12340),
(600644,1,11978,12340),
(600645,0,11980,12340),
(600645,1,20825,12340),
(600646,0,37685,12340),
(600646,1,12540,12340),
(600646,2,744,12340),
(600647,0,20823,12340),
(600647,1,20827,12340),
(600648,0,32064,0),
(600649,0,11668,12340),
(600649,1,14887,12340),
(600649,2,22709,0),
(600649,3,22710,0),
(600649,4,16247,0),
(600649,5,13338,0);

-- ==================================================================================
-- CREATURE EQUIPMENT
-- ==================================================================================

DELETE FROM creature_equip_template WHERE CreatureID IN (600643, 600644, 600645, 600646, 600647, 600648, 600649);
INSERT INTO creature_equip_template (CreatureID,ID,ItemID1,ItemID2,ItemID3,VerifiedBuild) VALUES
(600643,1,2184,2184,0,18019),
(600644,1,1897,0,0,18019),
(600645,1,1907,0,0,18019),
(600646,1,2184,0,0,18019),
(600647,1,1907,0,0,18019),
(600648,1,2179,1897,25277,18019),
(600649,1,13698,0,0,18019);

-- ==================================================================================
-- CREATURE LOOT
-- ==================================================================================

DELETE FROM creature_loot_template WHERE Entry IN (600643, 600644, 600645, 600646, 600647, 600648, 600649);
INSERT INTO creature_loot_template (Entry,Item,Reference,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) VALUES
-- Bloodsail Raider
(600643,1,1004150,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600643,2,1024041,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 40-41'),
(600643,3,1034041,0.1,0,1,0,1,1,'World Drop - Blue World Drop - NPC Levels: 40-41'),
(600643,4,1044041,0.01,0,1,0,1,1,'World Drop - Purple World Drop - NPC Levels: 40-41'),
(600643,5,1054162,0.1,0,1,0,1,1,'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600643,6,1064049,3.0,0,1,0,1,1,'World Drop - Potions IV - NPC Levels 40-49'),
(600643,7,1073545,1.0,0,1,0,1,1,'World Drop - Scrolls III - NPC Levels 35-45'),
(600643,8,1080005,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~45'),
(600643,9,1080021,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 41-45'),
(600643,1707,0,5.0,0,1,0,1,1,'Bloodsail Raider - Stormwind Brie'),
(600643,1708,0,3.0,0,1,0,1,1,'Bloodsail Raider - Sweet Nectar'),
(600643,2955,0,0.1,0,1,1,1,1,'Bloodsail Raider - First Mate Hat'),
(600643,3897,0,10.0,1,1,0,1,1,'Bloodsail Raider - Dizzy''s Eye'),
(600643,3910,0,80.0,1,1,0,1,1,'Bloodsail Raider - Snuff'),
(600643,4306,0,30.0,0,1,2,1,3,'Bloodsail Raider - Silk Cloth'),
(600643,4338,0,10.0,0,1,2,1,1,'Bloodsail Raider - Mageweave Cloth'),
(600643,8494,0,0.01,0,1,1,1,1,'Bloodsail Raider - Parrot Cage (Hyacinth Macaw)'),
(600643,9260,0,5.0,0,1,0,1,1,'Bloodsail Raider - Volatile Rum'),
(600643,44011,44011,10.0,0,1,0,1,1,'Bloodsail Raider - (ReferenceTable)'),

-- Bloodsail Swashbuckler
(600644,1,1004150,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600644,2,1024041,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 40-41'),
(600644,3,1034041,0.1,0,1,0,1,1,'World Drop - Blue World Drop - NPC Levels: 40-41'),
(600644,4,1044041,0.01,0,1,0,1,1,'World Drop - Purple World Drop - NPC Levels: 40-41'),
(600644,5,1054162,0.1,0,1,0,1,1,'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600644,6,1064049,3.0,0,1,0,1,1,'World Drop - Potions IV - NPC Levels 40-49'),
(600644,7,1073545,1.0,0,1,0,1,1,'World Drop - Scrolls III - NPC Levels 35-45'),
(600644,8,1080005,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~45'),
(600644,9,1080021,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 41-45'),
(600644,1707,0,5.0,0,1,0,1,1,'Bloodsail Swashbuckler - Stormwind Brie'),
(600644,1708,0,3.0,0,1,0,1,1,'Bloodsail Swashbuckler - Sweet Nectar'),
(600644,2955,0,0.1,0,1,1,1,1,'Bloodsail Swashbuckler - First Mate Hat'),
(600644,3897,0,10.0,1,1,0,1,1,'Bloodsail Swashbuckler - Dizzy''s Eye'),
(600644,3910,0,80.0,1,1,0,1,1,'Bloodsail Swashbuckler - Snuff'),
(600644,4306,0,30.0,0,1,2,1,3,'Bloodsail Swashbuckler - Silk Cloth'),
(600644,4338,0,10.0,0,1,2,1,1,'Bloodsail Swashbuckler - Swashbucklerweave Cloth'),
(600644,8494,0,0.01,0,1,1,1,1,'Bloodsail Swashbuckler - Parrot Cage (Hyacinth Macaw)'),
(600644,9260,0,5.0,0,1,0,1,1,'Bloodsail Swashbuckler - Volatile Rum'),
(600644,44011,44011,10.0,0,1,0,1,1,'Bloodsail Swashbuckler - (ReferenceTable)'),

-- Bloodsail Warlock
(600645,1,1004150,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600645,2,1024041,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 40-41'),
(600645,3,1034041,0.1,0,1,0,1,1,'World Drop - Blue World Drop - NPC Levels: 40-41'),
(600645,4,1044041,0.01,0,1,0,1,1,'World Drop - Purple World Drop - NPC Levels: 40-41'),
(600645,5,1054162,0.1,0,1,0,1,1,'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600645,6,1064049,3.0,0,1,0,1,1,'World Drop - Potions IV - NPC Levels 40-49'),
(600645,7,1073545,1.0,0,1,0,1,1,'World Drop - Scrolls III - NPC Levels 35-45'),
(600645,8,1080005,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~45'),
(600645,9,1080021,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 41-45'),
(600645,1707,0,5.0,0,1,0,1,1,'Bloodsail Warlock - Stormwind Brie'),
(600645,1708,0,3.0,0,1,0,1,1,'Bloodsail Warlock - Sweet Nectar'),
(600645,2955,0,0.1,0,1,1,1,1,'Bloodsail Warlock - First Mate Hat'),
(600645,3897,0,10.0,1,1,0,1,1,'Bloodsail Warlock - Dizzy''s Eye'),
(600645,3910,0,80.0,1,1,0,1,1,'Bloodsail Warlock - Snuff'),
(600645,4306,0,30.0,0,1,2,1,3,'Bloodsail Warlock - Silk Cloth'),
(600645,4338,0,10.0,0,1,2,1,1,'Bloodsail Warlock - Warlockweave Cloth'),
(600645,8494,0,0.01,0,1,1,1,1,'Bloodsail Warlock - Parrot Cage (Hyacinth Macaw)'),
(600645,9260,0,5.0,0,1,0,1,1,'Bloodsail Warlock - Volatile Rum'),
(600645,44011,44011,10.0,0,1,0,1,1,'Bloodsail Warlock - (ReferenceTable)'),

-- Bloodsail Sea Dog
(600646,1,1004150,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600646,2,1024142,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 41-42'),
(600646,3,1034142,0.1,0,1,0,1,1,'World Drop - Blue World Drop - NPC Levels: 41-42'),
(600646,4,1044142,0.01,0,1,0,1,1,'World Drop - Purple World Drop - NPC Levels: 41-42'),
(600646,5,1054162,0.1,0,1,0,1,1,'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600646,6,1064049,3.0,0,1,0,1,1,'World Drop - Potions IV - NPC Levels 40-49'),
(600646,7,1073545,1.0,0,1,0,1,1,'World Drop - Scrolls III - NPC Levels 35-45'),
(600646,8,1080005,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~45'),
(600646,9,1080021,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 41-45'),
(600646,1707,0,5.0,0,1,0,1,1,'Bloodsail Sea Dog - Stormwind Brie'),
(600646,1708,0,3.0,0,1,0,1,1,'Bloodsail Sea Dog - Sweet Nectar'),
(600646,2955,0,0.1,0,1,1,1,1,'Bloodsail Sea Dog - First Mate Hat'),
(600646,3897,0,10.0,1,1,0,1,1,'Bloodsail Sea Dog - Dizzy''s Eye'),
(600646,3910,0,80.0,1,1,0,1,1,'Bloodsail Sea Dog - Snuff'),
(600646,4306,0,30.0,0,1,2,1,3,'Bloodsail Sea Dog - Silk Cloth'),
(600646,4338,0,10.0,0,1,2,1,1,'Bloodsail Sea Dog - Sea Dogweave Cloth'),
(600646,8494,0,0.01,0,1,1,1,1,'Bloodsail Sea Dog - Parrot Cage (Hyacinth Macaw)'),
(600646,9260,0,5.0,0,1,0,1,1,'Bloodsail Sea Dog - Volatile Rum'),
(600646,44011,44011,10.0,0,1,0,1,1,'Bloodsail Sea Dog - (ReferenceTable)'),

-- Bloodsail Elder Magus
(600647,1,1004150,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600647,2,1024142,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 41-42'),
(600647,3,1034142,0.1,0,1,0,1,1,'World Drop - Blue World Drop - NPC Levels: 41-42'),
(600647,4,1044142,0.01,0,1,0,1,1,'World Drop - Purple World Drop - NPC Levels: 41-42'),
(600647,5,1054162,0.1,0,1,0,1,1,'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600647,6,1064049,3.0,0,1,0,1,1,'World Drop - Potions IV - NPC Levels 40-49'),
(600647,7,1073545,1.0,0,1,0,1,1,'World Drop - Scrolls III - NPC Levels 35-45'),
(600647,8,1080005,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~45'),
(600647,9,1080021,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 41-45'),
(600647,1707,0,5.0,0,1,0,1,1,'Bloodsail Elder Magus - Stormwind Brie'),
(600647,1708,0,3.0,0,1,0,1,1,'Bloodsail Elder Magus - Sweet Nectar'),
(600647,2955,0,0.1,0,1,1,1,1,'Bloodsail Elder Magus - First Mate Hat'),
(600647,3897,0,10.0,1,1,0,1,1,'Bloodsail Elder Magus - Dizzy''s Eye'),
(600647,3910,0,80.0,1,1,0,1,1,'Bloodsail Elder Magus - Snuff'),
(600647,4306,0,30.0,0,1,2,1,2,'Bloodsail Elder Magus - Silk Cloth'),
(600647,4338,0,10.0,0,1,2,1,2,'Bloodsail Elder Magus - Mageweave Cloth'),
(600647,8494,0,0.01,0,1,1,1,1,'Bloodsail Elder Magus - Parrot Cage (Hyacinth Macaw)'),
(600647,9260,0,5.0,0,1,0,1,1,'Bloodsail Elder Magus - Volatile Rum'),
(600647,44011,44011,10.0,0,1,0,1,1,'Bloodsail Elder Magus - (ReferenceTable)'),

-- Fleet Master Skaldron (Boss)
(600648,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600648,43949,0,100.0,0,1,0,1,2,'Delve Token'),
(600648,50255,0,100.0,0,1,0,1,1,'Dread Pirate Ring'),

-- Lithianawan (Boss)
(600649,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600649,43949,0,100.0,0,1,0,1,2,'Delve Token');

-- ==================================================================================
-- CREATURE SPAWNS
-- ==================================================================================

DELETE FROM `creature` WHERE `id1` IN (600643, 600644, 600645, 600646, 600647, 600648, 600649) AND `map` = 908;

INSERT INTO `creature` 
(`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES
-- Bloodsail Raider - 10 spawns
(9001264, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4282.94, -2759.79, 7.11324, 5.04418, 1800, 8.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001265, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4269.73, -2791.84, 6.09546, 3.60619, 1800, 6.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001266, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4250.11, -2796.52, 6.98945, 3.01738, 1800, 7.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001267, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4237.6, -2787.15, 7.07313, 1.9519, 1800, 0.0, 0, 242314, 0, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001268, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4216.41, -2775.66, 6.63163, 5.65168, 1800, 8.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001269, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4223.89, -2741.94, 5.97301, 0.793129, 1800, 10.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001277, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4278.59, -2811.81, 6.75477, 1.31102, 1800, 20.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001278, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4296.85, -2770.59, 8.01424, 2.3805, 1800, 8.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001279, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4307.38, -2776.39, 8.04322, 4.24558, 1800, 4.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001298, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4295.26, -2837.91, 5.93581, 4.57136, 1800, 11.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),
(9001299, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4327.68, -2837.18, 5.11261, 2.26151, 1800, 14.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Raider'),

-- Bloodsail Swashbuckler - 13 spawns
(9001263, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4274.8, -2744.02, 9.82747, 1.94272, 1800, 4.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001270, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4243.55, -2732.38, 6.66056, 0.0961661, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001271, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4267.99, -2727.12, 8.42764, 3.53142, 1800, 4.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001272, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4252.68, -2753.08, 8.23278, 4.44067, 1800, 13.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001273, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4259.46, -2767.39, 7.34523, 5.402, 1800, 6.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001274, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4232.99, -2792.97, 6.98193, 1.41383, 1800, 3.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001275, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4259.64, -2805.61, 5.95215, 5.18688, 1800, 12.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001276, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4269.14, -2826.95, 5.27221, 0.670134, 1800, 0.0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001286, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4292.59, -2796.7, 6.02817, 1.32288, 1800, 13.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001287, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4243.08, -2770.5, 7.32621, 2.68075, 1800, 12.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001296, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4287.17, -2845.66, 5.95495, 2.95697, 1800, 6.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001297, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4289.52, -2865.22, 5.28618, 0.68466, 1800, 7.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001301, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4314.6, -2853.63, 5.23791, 2.20409, 1800, 0.0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),
(9001302, 600644, 0, 0, 908, 0, 0, 1, 1, 1, 4305.48, -2859.27, 5.47083, 1.9958, 1800, 0.0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Swashbuckler'),

-- Bloodsail Warlock - 7 spawns
(9001280, 600645, 0, 0, 908, 0, 0, 1, 1, 1, 4308.99, -2784.32, 7.68651, 3.30695, 1800, 0.0, 0, 402237, 9330, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Warlock'),
(9001281, 600645, 0, 0, 908, 0, 0, 1, 1, 1, 4350.1, -2799.93, 5.28358, 3.82099, 1800, 0.0, 0, 402237, 9330, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Warlock'),
(9001288, 600645, 0, 0, 908, 0, 0, 1, 1, 1, 4221.36, -2787.13, 6.10646, 0.648771, 1800, 0.0, 0, 402237, 9330, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Warlock'),
(9001290, 600645, 0, 0, 908, 0, 0, 1, 1, 1, 4234.59, -2749.43, 7.56713, 1.07736, 1800, 11.0, 0, 402237, 9330, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Warlock'),
(9001293, 600645, 0, 0, 908, 0, 0, 1, 1, 1, 4275.71, -2770.81, 7.17532, 3.68464, 1800, 5.0, 0, 402237, 9330, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Warlock'),
(9001295, 600645, 0, 0, 908, 0, 0, 1, 1, 1, 4304.27, -2836.19, 5.94437, 3.23736, 1800, 16.0, 0, 402237, 9330, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Warlock'),

-- Bloodsail Sea Dog - 6 spawns
(9001261, 600646, 0, 0, 908, 0, 0, 1, 1, 1, 4282.13, -2744.56, 9.70716, 2.48614, 1800, 3.0, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Sea Dog'),
(9001262, 600646, 0, 0, 908, 0, 0, 1, 1, 1, 4280.35, -2725.2, 8.6807, 3.35667, 1800, 3.0, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Sea Dog'),
(9001282, 600646, 0, 0, 908, 0, 0, 1, 1, 1, 4339.49, -2799.66, 5.39009, 4.39645, 1800, 12.0, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Sea Dog'),
(9001283, 600646, 0, 0, 908, 0, 0, 1, 1, 1, 4339.56, -2816.83, 6.3363, 3.96519, 1800, 14.0, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Sea Dog'),
(9001291, 600646, 0, 0, 908, 0, 0, 1, 1, 1, 4276.05, -2779.42, 6.13728, 3.24286, 1800, 0.0, 0, 163817, 0, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Sea Dog'),
(9001294, 600646, 0, 0, 908, 0, 0, 1, 1, 1, 4317.81, -2817.34, 5.68361, 4.25477, 1800, 8.0, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Sea Dog'),

-- Bloodsail Elder Magus - 4 spawns
(9001260, 600647, 0, 0, 908, 0, 0, 1, 1, 1, 4283.62, -2734.14, 10.3376, 3.14304, 1800, 0.0, 0, 114702, 95080, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Elder Magus'),
(9001284, 600647, 0, 0, 908, 0, 0, 1, 1, 1, 4343.71, -2810.58, 5.35582, 3.35101, 1800, 0.0, 0, 111732, 93300, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Elder Magus'),
(9001285, 600647, 0, 0, 908, 0, 0, 1, 1, 1, 4304.22, -2803.65, 5.60636, 3.74222, 1800, 3.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, 'Bloodsail Elder Magus'),
(9001289, 600647, 0, 0, 908, 0, 0, 1, 1, 1, 4216.77, -2780.83, 6.61184, 0.521929, 1800, 0.0, 0, 114702, 95080, 0, 0, 0, 0, '', NULL, 0, 'Bloodsail Elder Magus'),

-- Fleet Master Skaldron (Boss) - 1 spawn
(9001292, 600648, 0, 0, 908, 0, 0, 1, 1, 1, 4303.04, -2759.2, 17.2152, 3.50856, 1800, 3.0, 0, 844560, 0, 1, 0, 0, 0, '', NULL, 0, 'Fleet Master Skaldron'),

-- Lithianawan (Boss) - 1 spawn
(9001300, 600649, 0, 0, 908, 0, 0, 1, 1, 1, 4322.96, -2869.1, 2.2454, 2.21611, 1800, 0.0, 0, 559728, 89000, 0, 0, 0, 0, '', NULL, 0, 'Lithianawan');

-- ==================================================================================
-- SMART SCRIPTS (AI)
-- ==================================================================================

DELETE FROM smart_scripts WHERE entryorguid IN (600644, 600645, 600646, 600647) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,event_param5,event_param6,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_param4,target_x,target_y,target_z,target_o,comment) VALUES
-- Bloodsail Swashbuckler
(600644,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Swashbuckler - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Bloodsail Warlock
(600645,0,0,0,25,0,100,512,0,0,0,0,0,0,31,1,2,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Warlock - On Reset - Set Phase Random Between 1-2'),
(600645,0,1,0,1,1,100,513,0,1000,0,0,0,0,11,8722,3,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Warlock - Out of Combat - Cast ''Summon Succubus'' (Phase 1) (No Repeat)'),
(600645,0,2,0,1,2,100,513,0,1000,0,0,0,0,11,11939,3,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Warlock - Out of Combat - Cast ''Summon Imp'' (Phase 2) (No Repeat)'),
(600645,0,3,0,0,0,100,0,0,0,2400,3800,0,0,11,20825,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Warlock - In Combat - Cast ''Shadow Bolt'''),
(600645,0,4,0,0,0,100,0,6900,20900,15900,15900,0,0,11,11980,32,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Warlock - In Combat - Cast ''Curse of Weakness'''),
(600645,0,5,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Warlock - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Bloodsail Sea Dog
(600646,0,0,0,0,0,100,0,10100,12000,32400,37700,0,0,11,744,33,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Sea Dog - In Combat - Cast ''Poison'''),
(600646,0,1,0,0,0,100,0,2000,3500,6000,8500,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Sea Dog - In Combat - Cast ''Backstab'''),
(600646,0,2,0,0,0,100,0,11800,14100,21100,24200,0,0,11,12540,1,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Sea Dog - In Combat - Cast ''Gouge'''),
(600646,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Sea Dog - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Bloodsail Elder Magus
(600647,0,0,0,0,0,100,0,0,0,2400,3800,0,0,11,20823,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Elder Magus - In Combat - Cast ''Fireball'''),
(600647,0,1,0,0,0,100,0,14900,14900,43000,43000,0,0,11,11969,1,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Elder Magus - In Combat - Cast ''Fire Nova'''),
(600647,0,2,0,0,0,100,0,28700,28700,45200,45200,0,0,11,20827,1,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Elder Magus - In Combat - Cast ''Flamestrike'''),
(600647,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodsail Elder Magus - Between 0-15% Health - Flee For Assist (No Repeat)');

-- ==================================================================================
-- END OF QUEL'THALAS ISLAND DELVE EXPORT
-- ==================================================================================