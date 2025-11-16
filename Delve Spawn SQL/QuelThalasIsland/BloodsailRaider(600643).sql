DELETE FROM `creature_template` WHERE (`entry` = 600643);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600643, 0, 0, 0, 0, 0, 'Bloodsail Raider', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.19048, 1, 1, 20, 1, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600643, 600643, 0, 0, 0, 76, 350, 'SmartAI', 1, 1, 38, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600643);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600643, 0, 793, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600643);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600643, 0, 6533, 12340),
(600643, 1, 30798, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600643);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600643, 1, 2184, 2184, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600643);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600643, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600643, 2, 1024041, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 40-41'),
(600643, 3, 1034041, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 40-41'),
(600643, 4, 1044041, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 40-41'),
(600643, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600643, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600643, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600643, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600643, 9, 1080021, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 41-45'),
(600643, 1707, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Raider - Stormwind Brie'),
(600643, 1708, 0, 3, 0, 1, 0, 1, 1, 'Bloodsail Raider - Sweet Nectar'),
(600643, 2955, 0, 0.1, 0, 1, 1, 1, 1, 'Bloodsail Raider - First Mate Hat'),
(600643, 3897, 0, 10, 1, 1, 0, 1, 1, 'Bloodsail Raider - Dizzy\'s Eye'),
(600643, 3910, 0, 80, 1, 1, 0, 1, 1, 'Bloodsail Raider - Snuff'),
(600643, 4306, 0, 30, 0, 1, 2, 1, 3, 'Bloodsail Raider - Silk Cloth'),
(600643, 4338, 0, 10, 0, 1, 2, 1, 1, 'Bloodsail Raider - Mageweave Cloth'),
(600643, 8494, 0, 0.01, 0, 1, 1, 1, 1, 'Bloodsail Raider - Parrot Cage (Hyacinth Macaw)'),
(600643, 9260, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Raider - Volatile Rum'),
(600643, 44011, 44011, 10, 0, 1, 0, 1, 1, 'Bloodsail Raider - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600643);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600643, 3927, 0, 2.8604, 0, 1, 0, 1, 1, 'Bloodsail Raider - Fine Aged Cheddar'),
(600643, 3928, 0, 3.2037, 0, 1, 0, 1, 1, 'Bloodsail Raider - Superior Healing Potion'),
(600643, 4601, 0, 2.5172, 0, 1, 0, 1, 1, 'Bloodsail Raider - Soft Banana Bread'),
(600643, 4602, 0, 1.8307, 0, 1, 0, 1, 1, 'Bloodsail Raider - Moon Harvest Pumpkin'),
(600643, 5432, 0, 10.7551, 0, 1, 0, 1, 1, 'Bloodsail Raider - Hickory Pipe'),
(600643, 7909, 0, 0.5721, 0, 1, 0, 1, 1, 'Bloodsail Raider - Aquamarine'),
(600643, 7910, 0, 0.4577, 0, 1, 0, 1, 1, 'Bloodsail Raider - Star Ruby'),
(600643, 16884, 0, 7.8947, 0, 1, 0, 1, 1, 'Bloodsail Raider - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600643);

INSERT INTO `creature` (
    `guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`,
    `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
    `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`,
    `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`,
    `VerifiedBuild`, `CreateObject`, `Comment`
) VALUES
(9001264, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4282.94, -2759.79, 6.61324, 5.04418, 300, 8, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001265, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4269.73, -2791.84, 5.59546, 3.60619, 300, 6, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001266, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4250.11, -2796.52, 6.48945, 3.01738, 300, 7, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001267, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4237.6, -2787.15, 6.57313, 1.9519, 300, 0, 0, 242314, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001268, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4216.41, -2775.66, 6.13163, 5.65168, 300, 8, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001269, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4223.89, -2741.94, 5.47301, 0.793129, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001277, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4278.59, -2811.81, 6.25477, 1.31102, 300, 20, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001278, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4296.85, -2770.59, 7.51424, 2.3805, 300, 8, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001279, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4307.38, -2776.39, 7.54322, 4.24558, 300, 4, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001298, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4295.26, -2837.91, 5.43581, 4.57136, 300, 11, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001299, 600643, 0, 0, 908, 0, 0, 1, 1, 1, 4327.68, -2837.18, 4.61261, 2.26151, 300, 14, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600643;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600643);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600643, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 29651, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Raider - On Aggro - Cast \'Dual Wield\' (No Repeat)'),
(600643, 0, 1, 0, 0, 0, 100, 0, 9800, 11300, 18500, 31400, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Raider - In Combat - Cast \'Net\''),
(600643, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Raider - Between 0-15% Health - Flee For Assist (No Repeat)');
