DELETE FROM `creature_template` WHERE (`entry` = 600646);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600646, 0, 0, 0, 0, 0, 'Bloodsail Sea Dog', 'Delve', NULL, 0, 83, 84, 0, 168, 0, 1, 1.15287, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600646, 600646, 0, 0, 0, 73, 452, 'SmartAI', 0, 1, 25, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600646);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600646, 0, 796, 1, 1, 12340),
(600646, 1, 1768, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600646);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600646, 0, 37685, 12340),
(600646, 1, 12540, 12340),
(600646, 2, 744, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600646);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600646, 1, 2184, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600646);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600646, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600646, 2, 1024142, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 41-42'),
(600646, 3, 1034142, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 41-42'),
(600646, 4, 1044142, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 41-42'),
(600646, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600646, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600646, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600646, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600646, 9, 1080021, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 41-45'),
(600646, 1707, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Stormwind Brie'),
(600646, 1708, 0, 3, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Sweet Nectar'),
(600646, 2955, 0, 0.1, 0, 1, 1, 1, 1, 'Bloodsail Sea Dog - First Mate Hat'),
(600646, 3897, 0, 10, 1, 1, 0, 1, 1, 'Bloodsail Sea Dog - Dizzy\'s Eye'),
(600646, 3910, 0, 80, 1, 1, 0, 1, 1, 'Bloodsail Sea Dog - Snuff'),
(600646, 4306, 0, 30, 0, 1, 2, 1, 3, 'Bloodsail Sea Dog - Silk Cloth'),
(600646, 4338, 0, 10, 0, 1, 2, 1, 1, 'Bloodsail Sea Dog - Sea Dogweave Cloth'),
(600646, 8494, 0, 0.01, 0, 1, 1, 1, 1, 'Bloodsail Sea Dog - Parrot Cage (Hyacinth Macaw)'),
(600646, 9260, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Volatile Rum'),
(600646, 44011, 44011, 10, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600646);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600646, 3927, 0, 1.7241, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Fine Aged Cheddar'),
(600646, 3928, 0, 0.8621, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Superior Healing Potion'),
(600646, 4601, 0, 1.7241, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Soft Banana Bread'),
(600646, 4602, 0, 2.5862, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Moon Harvest Pumpkin'),
(600646, 5432, 0, 5.1724, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Hickory Pipe'),
(600646, 7909, 0, 0.8621, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Aquamarine'),
(600646, 16884, 0, 5.1724, 0, 1, 0, 1, 1, 'Bloodsail Sea Dog - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600646);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001261, 600646, 0, 0, 0, 0, 0, 1, 1, 1, 4282.13, -2744.56, 9.20716, 2.48614, 300, 3, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001262, 600646, 0, 0, 0, 0, 0, 1, 1, 1, 4280.35, -2725.2, 8.1807, 3.35667, 300, 3, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001282, 600646, 0, 0, 0, 0, 0, 1, 1, 1, 4339.49, -2799.66, 4.89009, 4.39645, 300, 12, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001283, 600646, 0, 0, 0, 0, 0, 1, 1, 1, 4339.56, -2816.83, 5.8363, 3.96519, 300, 14, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001291, 600646, 0, 0, 0, 0, 0, 1, 1, 1, 4276.05, -2779.42, 5.63728, 3.24286, 300, 0, 0, 163817, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001294, 600646, 0, 0, 0, 0, 0, 1, 1, 1, 4317.81, -2817.34, 5.18361, 4.25477, 300, 8, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600646;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600646);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600646, 0, 0, 0, 0, 0, 100, 0, 10100, 12000, 32400, 37700, 0, 0, 11, 744, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Sea Dog - In Combat - Cast \'Poison\''),
(600646, 0, 1, 0, 0, 0, 100, 0, 2000, 3500, 6000, 8500, 0, 0, 11, 37685, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Sea Dog - In Combat - Cast \'Backstab\''),
(600646, 0, 2, 0, 0, 0, 100, 0, 11800, 14100, 21100, 24200, 0, 0, 11, 12540, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Sea Dog - In Combat - Cast \'Gouge\''),
(600646, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Sea Dog - Between 0-15% Health - Flee For Assist (No Repeat)');
