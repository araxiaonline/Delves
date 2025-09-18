DELETE FROM `creature_template` WHERE (`entry` = 600644);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600644, 0, 0, 0, 0, 0, 'Bloodsail Swashbuckler', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 35, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600644, 600644, 0, 0, 0, 61, 404, 'SmartAI', 0, 1, 90, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600644);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600644, 0, 796, 1, 1, 12340),
(600644, 1, 794, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600644);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600644, 0, 6713, 12340),
(600644, 1, 11978, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600644);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600644, 1, 1897, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600644);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600644, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600644, 2, 1024041, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 40-41'),
(600644, 3, 1034041, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 40-41'),
(600644, 4, 1044041, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 40-41'),
(600644, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600644, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600644, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600644, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600644, 9, 1080021, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 41-45'),
(600644, 1707, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Stormwind Brie'),
(600644, 1708, 0, 3, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Sweet Nectar'),
(600644, 2955, 0, 0.1, 0, 1, 1, 1, 1, 'Bloodsail Swashbuckler - First Mate Hat'),
(600644, 3897, 0, 10, 1, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Dizzy\'s Eye'),
(600644, 3910, 0, 80, 1, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Snuff'),
(600644, 4306, 0, 30, 0, 1, 2, 1, 3, 'Bloodsail Swashbuckler - Silk Cloth'),
(600644, 4338, 0, 10, 0, 1, 2, 1, 1, 'Bloodsail Swashbuckler - Swashbucklerweave Cloth'),
(600644, 8494, 0, 0.01, 0, 1, 1, 1, 1, 'Bloodsail Swashbuckler - Parrot Cage (Hyacinth Macaw)'),
(600644, 9260, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Volatile Rum'),
(600644, 44011, 44011, 10, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600644);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600644, 3927, 0, 2.5612, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Fine Aged Cheddar'),
(600644, 3928, 0, 2.2272, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Superior Healing Potion'),
(600644, 4601, 0, 3.0067, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Soft Banana Bread'),
(600644, 4602, 0, 2.6726, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Moon Harvest Pumpkin'),
(600644, 5432, 0, 10.1336, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Hickory Pipe'),
(600644, 7909, 0, 0.5568, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Aquamarine'),
(600644, 16884, 0, 10.3563, 0, 1, 0, 1, 1, 'Bloodsail Swashbuckler - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600644);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001263, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4274.8, -2744.02, 9.32747, 1.94272, 300, 4, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001270, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4243.55, -2732.38, 6.16056, 0.0961661, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001271, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4267.99, -2727.12, 7.92764, 3.53142, 300, 4, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001272, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4252.68, -2753.08, 7.73278, 4.44067, 300, 13, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001273, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4259.46, -2767.39, 6.84523, 5.402, 300, 6, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001274, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4232.99, -2792.97, 6.48193, 1.41383, 300, 3, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001275, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4259.64, -2805.61, 5.45215, 5.18688, 300, 12, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001276, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4269.14, -2826.95, 4.77221, 0.670134, 300, 0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001286, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4292.59, -2796.7, 5.52817, 1.32288, 300, 13, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001287, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4243.08, -2770.5, 6.82621, 2.68075, 300, 12, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001296, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4287.17, -2845.66, 5.45495, 2.95697, 300, 6, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001297, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4289.52, -2865.22, 4.78618, 0.68466, 300, 7, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001301, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4314.6, -2853.63, 4.73791, 2.20409, 300, 0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001302, 600644, 0, 0, 608, 0, 0, 1, 1, 1, 4305.48, -2859.27, 4.97083, 1.9958, 300, 0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600644;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600644);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600644, 0, 0, 0, 0, 0, 100, 0, 10600, 12400, 22000, 26200, 0, 0, 11, 6713, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Swashbuckler - In Combat - Cast \'Disarm\' (No Repeat)'),
(600644, 0, 1, 0, 105, 0, 100, 0, 7000, 11000, 12000, 16000, 0, 5, 11, 11978, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Swashbuckler - In Combat - Cast \'Kick\' (No Repeat)'),
(600644, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Swashbuckler - Between 0-15% Health - Flee For Assist (No Repeat)');

