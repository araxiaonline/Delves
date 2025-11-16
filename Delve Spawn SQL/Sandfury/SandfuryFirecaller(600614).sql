DELETE FROM `creature_template` WHERE (`entry` = 600614);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600614, 0, 0, 0, 0, 0, 'Sandfury Firecaller', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.3, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600614, 600614, 0, 0, 0, 232, 878, 'SmartAI', 1, 1, 7.6, 4, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600614);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600614, 0, 6415, 1, 1, 12340),
(600614, 1, 6416, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600614);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600614, 0, 11990, 12340),
(600614, 1, 20832, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600614);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600614, 1, 5276, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600614);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600614, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600614, 2, 1024344, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 43-44'),
(600614, 3, 1034344, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 43-44'),
(600614, 4, 1044344, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 43-44'),
(600614, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600614, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600614, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600614, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600614, 9, 1080021, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 41-45'),
(600614, 1520, 0, 30.1064, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Troll Sweat'),
(600614, 1645, 0, 2.3741, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Moonberry Juice'),
(600614, 3927, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Fine Aged Cheddar'),
(600614, 4306, 0, 15.002, 0, 1, 0, 1, 4, 'Sandfury Firecaller - Silk Cloth'),
(600614, 4338, 0, 18.9112, 0, 1, 0, 1, 4, 'Sandfury Firecaller - Mageweave Cloth'),
(600614, 4599, 0, 4.4413, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Cured Ham Steak'),
(600614, 4601, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Soft Banana Bread'),
(600614, 4602, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Moon Harvest Pumpkin'),
(600614, 4637, 0, 0.3479, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Steel Lockbox'),
(600614, 8151, 0, 10.9701, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Flask of Mojo'),
(600614, 8623, 0, 0.5, 0, 1, 0, 1, 1, 'Sandfury Firecaller - OOX-17/TN Distress Beacon');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600614);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600614, 3928, 0, 2.963, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Superior Healing Potion'),
(600614, 4599, 0, 3.3333, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Cured Ham Steak'),
(600614, 4601, 0, 5.1852, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Soft Banana Bread'),
(600614, 5428, 0, 9.2593, 0, 1, 0, 1, 1, 'Sandfury Firecaller - An Exotic Cookbook'),
(600614, 7909, 0, 0.3704, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Aquamarine'),
(600614, 16884, 0, 8.8889, 0, 1, 0, 1, 1, 'Sandfury Firecaller - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600614);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001097, 600614, 0, 0, 905, 0, 0, 1, 1, 1, -13041.8, -1395.99, 58.0322, 0.96, 300, 4, 0, 38773, 17048, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001098, 600614, 0, 0, 905, 0, 0, 1, 1, 1, -13046.7, -1380.1, 54.9529, 0.683618, 300, 4, 0, 38773, 17048, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001108, 600614, 0, 0, 905, 0, 0, 1, 1, 1, -13019.2, -1470.38, 58.8017, 2.63682, 300, 4, 0, 38773, 17048, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001128, 600614, 0, 0, 905, 0, 0, 1, 1, 1, -12902.5, -1426.9, 110.464, 1.16311, 300, 2, 0, 38773, 17048, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001136, 600614, 0, 0, 905, 0, 0, 1, 1, 1, -12779.8, -1471.99, 128.581, 2.6272, 300, 4, 0, 38773, 17048, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001139, 600614, 0, 0, 905, 0, 0, 1, 1, 1, -12744.9, -1496.94, 131.564, 1.84971, 300, 0, 0, 38773, 17048, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001142, 600614, 0, 0, 905, 0, 0, 1, 1, 1, -12880.8, -1472.92, 132.647, 1.24455, 300, 0, 0, 38773, 17048, 0, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600614;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600614);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600614, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Firecaller - In Combat - Cast \'Fireball\''),
(600614, 0, 1, 0, 0, 0, 85, 0, 8000, 14000, 20000, 26000, 0, 0, 11, 11990, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Firecaller - In Combat - Cast \'Rain of Fire\''),
(600614, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Firecaller - Between 0-15% Health - Flee For Assist (No Repeat)');
