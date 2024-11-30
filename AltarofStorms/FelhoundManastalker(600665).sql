DELETE FROM `creature_template` WHERE (`entry` = 600665);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600665, 0, 0, 0, 0, 0, 'Felhound Manastalker', 'Delve', NULL, 0, 83, 84, 0, 168, 0, 1, 1.15287, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600665, 0, 600665, 0, 0, 73, 452, 'SmartAI', 0, 1, 25, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600665);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600665, 0, 1913, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600665);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600665, 0, 13321, 12340),
(600665, 1, 30849, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600665);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600665, 946, 947, 5, 0, 1, 5, 0, 1, 1);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600665);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600665, 5760, 0, 0.4638, 0, 1, 0, 1, 1, 'Felhound Manastalker - Eternium Lockbox'),
(600665, 24000, 24000, 5, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 24003, 24003, 1, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 24004, 24004, 0.5, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 24006, 24006, 0.5, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 24009, 24009, 1, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 24011, 24011, 1, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 24022, 24022, 1, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 24023, 24023, 1, 0, 1, 1, 1, 1, 'Felhound Manastalker - (ReferenceTable)'),
(600665, 25417, 0, 66.4645, 0, 1, 0, 2, 4, 'Felhound Manastalker - Bloody Fang'),
(600665, 25418, 0, 6.3503, 0, 1, 0, 2, 8, 'Felhound Manastalker - Razor Sharp Fang'),
(600665, 25420, 0, 16.8034, 0, 1, 0, 2, 4, 'Felhound Manastalker - Severed Claw'),
(600665, 25421, 0, 1.6054, 0, 1, 0, 2, 7, 'Felhound Manastalker - Gnarled Claw');

DELETE FROM `skinning_loot_template` WHERE (`Entry` = 600665);
INSERT INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600665, 21887, 0, 25, 0, 1, 1, 1, 1, NULL),
(600665, 25649, 0, 0, 0, 1, 1, 1, 1, NULL),
(600665, 25707, 0, 5, 0, 1, 1, 1, 1, NULL),
(600665, 35229, 0, 25, 1, 1, 0, 1, 1, NULL);

DELETE FROM `creature` WHERE (`id1` = 600665);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001414, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11644.6, -2368.22, 4.63168, 4.48265, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001418, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11658.1, -2350.02, 6.39931, 4.91242, 300, 10, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001441, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11763.9, -2546.16, -0.669582, 4.85821, 300, 10, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001442, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11736.6, -2498.2, -7.13576, 1.05295, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001443, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11704.5, -2479.32, -4.1972, 0.732512, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001444, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11685.7, -2431.39, -2.04968, 2.01028, 300, 20, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001445, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11732.3, -2400.79, -7.49547, 2.6298, 300, 5, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001447, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11813.7, -2401.77, -7.38766, 5.2052, 300, 0, 0, 159417, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001448, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11806.2, -2451.8, -20.8099, 4.39207, 300, 0, 0, 159417, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001449, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11842.5, -2485.72, -21.3605, 3.47881, 300, 0, 0, 159417, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001450, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11807.6, -2511.4, -18.2124, 3.93678, 300, 0, 0, 163817, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001451, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11823, -2561.78, -11.0586, 4.47352, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001452, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11817.2, -2586.91, -1.92781, 4.56298, 300, 10, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001453, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11888, -2647.61, -4.71875, 3.01283, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001454, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11901.2, -2665.11, -0.556919, 4.43613, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001478, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11967.1, -2593.63, -42.5745, 4.93784, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001479, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11963.9, -2617.34, -35.3643, 5.09806, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001480, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11990.8, -2611.21, -38.8343, 2.67872, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001481, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11981.7, -2570.9, -43.7243, 1.46772, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001500, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11953.4, -2397.48, -0.283816, 2.93091, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001501, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11977.7, -2419.77, -0.75252, 3.73335, 300, 10, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001507, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11892.5, -2424.8, -4.23343, 0.504733, 300, 10, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001515, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11836.9, -2518.8, -19.1296, 4.18299, 300, 10, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001517, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11887.9, -2509.41, -27.3904, 3.43513, 300, 10, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001518, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11908.5, -2537.42, -38.5985, 3.61671, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001519, 600665, 0, 0, 309, 0, 0, 1, 1, 0, -11878, -2574.47, -21.614, 5.51667, 300, 10, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600665;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600665);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600665, 0, 0, 0, 0, 0, 100, 6, 1000, 2500, 11100, 11300, 0, 0, 11, 13321, 256, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0, 'Felhound Manastalker - In Combat - Cast \'Mana Burn\' (Dungeon)'),
(600665, 0, 1, 0, 105, 0, 100, 6, 3300, 8700, 12900, 12900, 0, 30, 11, 30849, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Felhound Manastalker - On Hostile Casting in Range - Cast \'Spell Lock\' (Dungeon)'),
(600665, 0, 2, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 0, 'Felhound Manastalker - Out of Combat - Start Attacking (No Repeat)');
