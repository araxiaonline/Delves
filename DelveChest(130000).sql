DELETE FROM `gameobject_template` WHERE (`entry` = 130000);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(130000, 3, 259, 'Delve Chest', '', '', '', 1, 57, 110000, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);


DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 110000);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(110000, 43949, 0, 33, 0, 1, 0, 1, 3, 'Delve Token'),
(110000, 910001, 0, 33, 0, 1, 0, 1, 3, 'Araxia Token'),
(110000, 911000, 0, 10, 0, 1, 0, 1, 3, 'Dice'),
(110000, 911001, 0, 1, 0, 1, 0, 1, 1, 'Onyx Spike Relic');



DELETE FROM `gameobject` WHERE (`id` = 130000);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(8001899, 130000, 0, 0, 0, 1, 1, -4822.14, -933.174, 399.043, 4.80978, 0, 0, -0.671849, 0.740688, 300, 0, 1, '', NULL, NULL),
(8001900, 130000, 905, 0, 0, 1, 1, -12893, -1483.39, 132.114, 0.620313, 0, 0, -0.305208, -0.952286, 300, 0, 1, '', NULL, NULL),
(8001901, 130000, 904, 0, 0, 1, 1, -7284.45, -715.253, 286.528, 0.911379, 0, 0, -0.440081, -0.897958, 300, 0, 1, '', NULL, NULL),
(8001902, 130000, 911, 0, 0, 1, 1, -11984, -2403.69, 5.06639, 0.0805792, 0, 0, -0.0402788, -0.999189, 300, 0, 1, '', NULL, NULL),
(8001903, 130000, 906, 0, 0, 1, 1, -1817.28, -4149.36, 9.89491, 2.84691, 0, 0, -0.989165, -0.146811, 300, 0, 1, '', NULL, NULL),
(8001904, 130000, 900, 0, 0, 1, 1, 2717.63, 2296.5, 198.01, 0.16838, 0, 0, -0.0840903, -0.996458, 300, 0, 1, '', NULL, NULL),
(8001905, 130000, 902, 0, 0, 1, 1, 1864.6, 1340.18, 142.265, 1.52091, 0, 0, -0.689253, -0.724521, 300, 0, 1, '', NULL, NULL),
(8001906, 130000, 907, 0, 0, 1, 1, -8642.92, -547.362, 145.454, 1.00954, 0, 0, -0.483607, -0.875286, 300, 0, 1, '', NULL, NULL),
(8001907, 130000, 908, 0, 0, 1, 1, 4330.18, -2879.71, 0.939371, 2.23507, 0, 0, -0.899025, -0.437898, 300, 0, 1, '', NULL, NULL),
(8001908, 130000, 909, 0, 0, 1, 1, -5746.92, 879.706, 482.507, 3.07089, 0, 0, -0.999375, -0.0353415, 300, 0, 1, '', NULL, NULL),
(8001909, 130000, 910, 0, 0, 1, 1, -6266.36, -833.97, 400.317, 5.71572, 0, 0, -0.27994, 0.960018, 300, 0, 1, '', NULL, NULL),
(8001910, 130000, 901, 0, 0, 1, 1, 9762.49, -33.1352, 11.9533, 3.74739, 0, 0, -0.954475, 0.29829, 300, 0, 1, '', NULL, NULL);

