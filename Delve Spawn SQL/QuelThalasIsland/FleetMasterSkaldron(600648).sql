DELETE FROM `creature_template` WHERE (`entry` = 600648);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600648, 0, 0, 0, 0, 0, 'Fleet Master Skaldron', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 2, 1.6, 2.85714, 1, 1, 20, 1, 3, 0, 15.8, 1300, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600648, 600648, 0, 0, 0, 88, 408, 'SmartAI', 0, 1, 138, 20, 1.1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600648);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600648, 0, 797, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600648);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600648, 0, 32064, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600648);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600648, 1, 2179, 1897, 25277, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600648);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600648, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600648, 2, 1024242, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 42-42'),
(600648, 3, 1034242, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 42-42'),
(600648, 4, 1044242, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 42-42'),
(600648, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600648, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600648, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600648, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600648, 9, 1080021, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 41-45'),
(600648, 1645, 0, 2.4816, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Moonberry Juice'),
(600648, 2725, 0, 0.8272, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 1'),
(600648, 2728, 0, 0.9191, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 4'),
(600648, 2730, 0, 0.5515, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 6'),
(600648, 2732, 0, 1.1029, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 8'),
(600648, 2734, 0, 0.2757, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 10'),
(600648, 2735, 0, 0.6434, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 11'),
(600648, 2738, 0, 0.6434, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 14'),
(600648, 2740, 0, 0.3676, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 16'),
(600648, 2742, 0, 0.9191, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 18'),
(600648, 2744, 0, 0.3676, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 20'),
(600648, 2745, 0, 0.4596, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 21'),
(600648, 2748, 0, 0.1838, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 24'),
(600648, 2749, 0, 0.6434, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 25'),
(600648, 2750, 0, 1.1029, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 26'),
(600648, 2751, 0, 1.011, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Green Hills of Stranglethorn - Page 27'),
(600648, 2955, 0, 0.1, 0, 1, 1, 1, 1, 'Fleet Master Firallon - First Mate Hat'),
(600648, 3897, 0, 10, 1, 1, 0, 1, 1, 'Fleet Master Firallon - Dizzy\'s Eye'),
(600648, 3910, 0, 80, 1, 1, 0, 1, 1, 'Fleet Master Firallon - Snuff'),
(600648, 3927, 0, 4.3199, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Fine Aged Cheddar'),
(600648, 4306, 0, 9.8346, 0, 1, 0, 1, 2, 'Fleet Master Firallon - Silk Cloth'),
(600648, 4338, 0, 25.4596, 0, 1, 0, 1, 2, 'Fleet Master Firallon - Mageweave Cloth'),
(600648, 4638, 0, 0.25, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Reinforced Steel Lockbox'),
(600648, 8494, 0, 0.01, 0, 1, 1, 1, 1, 'Fleet Master Firallon - Parrot Cage (Hyacinth Macaw)'),
(600648, 9260, 0, 9.2831, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Volatile Rum');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600648);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600648, 3928, 0, 8.3333, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Superior Healing Potion'),
(600648, 5432, 0, 16.6667, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Hickory Pipe'),
(600648, 16884, 0, 16.6667, 0, 1, 0, 1, 1, 'Fleet Master Firallon - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600648);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001292, 600648, 0, 0, 908, 0, 0, 1, 1, 1, 4303.04, -2759.2, 16.7152, 3.50856, 300, 3, 0, 844560, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600648;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600648);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600648, 0, 0, 0, 0, 0, 100, 0, 0, 500, 1400, 4900, 0, 0, 11, 32064, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Fleet Master Skaldron - In Combat - Cast \'Battle Shout\'');
