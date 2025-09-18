DELETE FROM `creature_template` WHERE (`entry` = 600693);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600693, 30097, 0, 0, 0, 0, 'Plagued Ghoul', 'Delve', '', 0, 82, 85, 2, 168, 0, 1, 1.42868, 1, 1, 20, 1, 1, 0, 33, 1500, 2000, 1, 1, 1, 32832, 2048, 8, 0, 0, 0, 0, 0, 6, 72, 100003, 0, 0, 0, 0, 4011, 5242, 'SmartAI', 0, 1, 28, 1, 1, 1, 0, 144, 1, 1019421200, 0, 0, '', 12340);

DELETE FROM `creature_template_addon` WHERE (`entry` = 600693);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(600693, 0, 0, 0, 1, 0, 3, '19818');

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600693);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600693, 0, 24998, 1, 1, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 100003);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100003, 1, 35083, 100, 0, 1, 0, 1, 1, 'Naxxramas Cultist - (ReferenceTable)');

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600693);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600693, 0, 55876, 0);

DELETE FROM `creature` WHERE (`id1` = 600693);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001652, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1883.99, -4086.46, 9.9143, 6.18581, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001653, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1881.65, -4102.45, 10.4582, 4.90404, 300, 10, 0, 406683, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001654, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1868.51, -4123.04, 12.211, 5.22448, 300, 10, 0, 410841, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001655, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1894.66, -4137.48, 2.86877, 3.80118, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001656, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1903.87, -4114, 2.65507, 1.66623, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001657, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1923.95, -4089.52, 2.03272, 1.29372, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001658, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1950.07, -4074.82, 2.03542, 1.02534, 300, 10, 0, 406683, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001659, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1963.27, -4070.53, 2.44965, 2.87991, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001660, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1975.58, -4065.4, 3.80854, 2.61554, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001661, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1996.13, -4083.98, 1.85581, 3.67701, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001662, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1990.59, -4094.52, 1.9729, 6.02825, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001663, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1966.14, -4097.25, 2.03085, 5.54358, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001664, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1952.02, -4125.61, 2.03178, 5.17107, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001665, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1958.6, -4151.5, 1.99776, 4.26181, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001666, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1978.72, -4148.3, 1.65044, 2.17627, 300, 10, 0, 406683, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001667, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1933.31, -4176.85, 1.94418, 5.89992, 300, 10, 0, 406683, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001668, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1910.37, -4190.41, 2.0306, 5.68762, 300, 10, 0, 410841, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001669, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1899.07, -4181.72, 2.25264, 0.950575, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001670, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1909.7, -4165.34, 2.033, 2.9253, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001671, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1929.31, -4150.97, 2.033, 2.44464, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001672, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1925.75, -4118.26, 2.033, 2.18428, 300, 10, 0, 410841, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001712, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1762.4, -4072.16, 33.8395, 0.440004, 300, 10, 0, 410841, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001713, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1727.01, -4109.67, 21.1616, 4.66034, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001714, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1737.6, -4142.35, 14.0332, 4.06352, 300, 10, 0, 406683, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001715, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1751.37, -4172.69, 3.44404, 4.11959, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001716, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1778.57, -4245.58, 2.68239, 4.56405, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001720, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1829.34, -4238.11, 2.13493, 0.921748, 300, 10, 0, 410841, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001722, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1856.18, -4245.5, 2.13484, 0.433008, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001734, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1702.77, -4143.54, 17.8173, 0.466068, 300, 0, 0, 395934, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001735, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1656.63, -4167.54, 13.1958, 5.41541, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001736, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1714.21, -4168.95, 3.6745, 4.80225, 300, 10, 0, 406683, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001737, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1666.22, -4211.6, 1.99915, 5.73986, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001738, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1645.85, -4213.16, 3.52176, 0.149631, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001739, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1629.02, -4200.72, 6.60647, 0.578223, 300, 10, 0, 406683, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001740, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1613.66, -4186.26, 7.93929, 0.638306, 300, 10, 0, 406683, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001741, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1576.44, -4200.32, 4.82932, 5.74787, 300, 0, 0, 406683, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001742, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1628.52, -4250.53, 1.98016, 3.57287, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001743, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1648.95, -4268.26, 2.82111, 4.15367, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001744, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1680.63, -4292.98, 2.63617, 3.72508, 300, 10, 0, 410841, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001745, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1705.89, -4299.05, 2.65824, 3.35256, 300, 10, 0, 401724, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001746, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1737, -4310.29, 1.84097, 3.4527, 300, 10, 0, 395934, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001747, 600693, 0, 0, 0, 0, 0, 1, 1, 0, -1743.49, -4286.04, 2.0004, 1.8852, 300, 10, 0, 410841, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600693;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600693);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600693, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 55876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagued Ghoul - On Just Died - Cast \'Plague Contamination\'');
