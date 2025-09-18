DELETE FROM `creature_template` WHERE (`entry` = 600658);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600658, 0, 0, 0, 0, 0, 'Venture Co. Taskmaster', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 1, 1.19048, 1, 1, 20, 1, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600658, 0, 0, 0, 0, 169, 225, 'SmartAI', 1, 1, 38, 1, 0.97, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600658);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600658, 0, 355, 1, 1, 12340),
(600658, 1, 3908, 1, 1, 12340),
(600658, 2, 4099, 1, 1, 12340),
(600658, 3, 7246, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600658);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600658, 1, 1906, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600658);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600658, 1, 1000610, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 6-10'),
(600658, 2, 1010708, 5, 0, 1, 0, 1, 1, 'World Drop - White World Drop - NPC Levels: 7-8'),
(600658, 3, 1020608, 0.5, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 6-8'),
(600658, 4, 1050110, 0.5, 0, 1, 0, 1, 1, 'World Drop - 6 Slot Bag - NPC Levels: 1-10'),
(600658, 5, 1070518, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls I - NPC Levels 5-18'),
(600658, 6, 1080001, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~5-10'),
(600658, 9, 1080013, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 6-10'),
(600658, 117, 0, 6.9269, 0, 1, 0, 1, 1, 'Venture Co. Taskmaster - Tough Jerky'),
(600658, 118, 0, 2.7172, 0, 1, 0, 1, 1, 'Venture Co. Taskmaster - Minor Healing Potion'),
(600658, 159, 0, 3.9418, 0, 1, 0, 1, 1, 'Venture Co. Taskmaster - Refreshing Spring Water'),
(600658, 787, 0, 0.04, 0, 1, 0, 1, 1, 'Venture Co. Taskmaster - Slitherskin Mackerel'),
(600658, 2070, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Taskmaster - Darnassian Bleu'),
(600658, 2589, 0, 28.8557, 0, 1, 0, 1, 2, 'Venture Co. Taskmaster - Linen Cloth'),
(600658, 4536, 0, 0.04, 0, 1, 0, 1, 1, 'Venture Co. Taskmaster - Shiny Red Apple'),
(600658, 4540, 0, 0.04, 0, 1, 0, 1, 1, 'Venture Co. Taskmaster - Tough Hunk of Bread'),
(600658, 4604, 0, 0.04, 0, 1, 0, 1, 1, 'Venture Co. Taskmaster - Forest Mushroom Cap');

DELETE FROM `creature` WHERE (`id1` = 600658);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001353, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2711.23, 2100.15, 262.643, 5.44644, 300, 4, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001354, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2735.42, 2081.22, 264.015, 5.56661, 300, 8, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001355, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2750.41, 2077.54, 264.007, 4.75181, 300, 11, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001356, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2782.24, 2091.45, 263.211, 0.145945, 300, 14, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001357, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2804.08, 2062.2, 285.462, 5.19943, 300, 11, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001358, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2816.04, 2024.84, 299.674, 4.02181, 300, 12, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001359, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2778.47, 2018.71, 287.141, 3.13658, 300, 16, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001373, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2762.31, 2119.08, 249.518, 5.19676, 300, 5, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001374, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2733.52, 2182.74, 236.05, 4.15839, 300, 5, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001386, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2760.64, 2205.11, 228.52, 3.80457, 300, 7, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001392, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2810.2, 2271.12, 203.113, 5.58287, 300, 11, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001393, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2836.67, 2261.21, 205.079, 6.06353, 300, 9, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001397, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2870.99, 2327.57, 203.113, 1.12962, 300, 8, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001399, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 2879.99, 2305.93, 203.114, 3.51728, 300, 5, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001815, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1870.61, 1490.45, 141.419, 3.94815, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001827, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1825.46, 1532.84, 137.841, 2.87451, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001828, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1772.8, 1548.29, 136.497, 2.39385, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001829, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1745.71, 1564.59, 136.668, 2.65821, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001830, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1755.44, 1589.99, 141.983, 0.67948, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001831, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1722.72, 1555.09, 131.227, 3.86505, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001832, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1707.01, 1584.01, 136.46, 1.73144, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001833, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1681.72, 1606.49, 136.516, 2.09995, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001834, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1689.89, 1647.36, 139.675, 1.13862, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001835, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1648.51, 1649.51, 147.288, 3.48186, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001836, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1652.97, 1672.92, 145.06, 0.914311, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001837, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1634.08, 1693.75, 144.542, 2.99719, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001838, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1606.37, 1713.06, 147.489, 2.14802, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001839, 600658, 0, 0, 902, 0, 0, 1, 1, 1, 1631.34, 1672.21, 147.857, 4.3055, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600658;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600658);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600658, 0, 0, 0, 2, 0, 100, 1, 20, 80, 0, 0, 0, 0, 11, 5679, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Taskmaster - Between 20-80% Health - Cast \'Torch Burn\' (No Repeat)');
