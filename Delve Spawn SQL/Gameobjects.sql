-- ######################################################--
--  GAMEOBJECTS
-- ######################################################--

-- Delve Chest Template (Reward Chest - All Elite Zones)
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(130000, 3, 259, 'Delve Chest', '', '', '', 1, 57, 110000, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);

-- Delve Chest Loot
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(110000, 43949, 0, 33, 0, 1, 0, 1, 3, 'Delve Token'),
(110000, 910001, 0, 33, 0, 1, 0, 1, 3, 'Araxia Token'),
(110000, 911000, 0, 10, 0, 1, 0, 1, 3, 'Dice'),
(110000, 911001, 0, 1, 0, 1, 0, 1, 1, 'Onyx Spike Relic');

-- Delve Chest Spawns (Reward Chests in Elite Zones)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001900, 130000, 905, 1, 1, -12893, -1483.39, 132.114, 0.620313, 0, 0, -0.305208, -0.952286, 300, 0, 1, 0), -- Delve Chest - Sandfury Delve (Map 905)
(8001902, 130000, 911, 1, 1, -11984, -2403.69, 5.06639, 0.0805792, 0, 0, -0.0402788, -0.999189, 300, 0, 1, 0), -- Delve Chest - Altar of Storms (Map 911)
(8001903, 130000, 906, 1, 1, -1817.28, -4149.36, 9.89491, 2.84691, 0, 0, -0.989165, -0.146811, 300, 0, 1, 0), -- Delve Chest - Arathi Highlands Farm (Map 906)
(8001904, 130000, 900, 1, 1, 2717.63, 2296.5, 198.01, 0.16838, 0, 0, -0.0840903, -0.996458, 300, 0, 1, 0), -- Delve Chest - Stonetalon Ruins (Map 900)
(8001905, 130000, 902, 1, 1, 1864.6, 1340.18, 142.265, 1.52091, 0, 0, -0.689253, -0.724521, 300, 0, 1, 0), -- Delve Chest - Stonetalon Logging Camp (Map 902)
(8001906, 130000, 907, 1, 1, -8642.92, -547.362, 145.454, 1.00954, 0, 0, -0.483607, -0.875286, 300, 0, 1, 0), -- Delve Chest - Elwynn Falls (Map 907)
(8001907, 130000, 908, 1, 1, 4330.18, -2879.71, 0.939371, 2.23507, 0, 0, -0.899025, -0.437898, 300, 0, 1, 0), -- Delve Chest - Quel'Thalas Island (Map 908)
(8001909, 130000, 910, 1, 1, -6266.36, -833.97, 400.317, 5.71572, 0, 0, -0.27994, 0.960018, 300, 0, 1, 0), -- Delve Chest - Newman's Landing (Map 910)
(8001910, 130000, 901, 1, 1, 9762.49, -33.1352, 11.9533, 3.74739, 0, 0, -0.954475, 0.29829, 300, 0, 1, 0), -- Delve Chest - Demon Hunter Cove (Map 901)
(8101139, 130000, 805, 1, 1, 12771.7, 15055.3, 36.5165, 6.20225, 0, 0, -0.0404548, 0.999181, 300, 0, 1, 0), -- Delve Chest - Additional Spawn (Map 805)
(8101140, 130000, 805, 1, 1, 12785.3, 15124.5, 36.5159, 6.17803, 0, 0, -0.0525529, 0.998618, 300, 0, 1, 0), -- Delve Chest - Additional Spawn (Map 805)
(8101190, 130000, 904, 1, 1, 2472.79, 2493.14, 80.013, 5.16055, 0, 0, -0.532302, 0.846555, 300, 0, 1, 0), -- Delve Chest - Blackchar Cave (Map 904)
(8101215, 130000, 909, 1, 1, -6037.91, 703.096, 491.848, 2.3444, 0, 0, -0.921608, -0.388123, 300, 0, 1, 0); -- Delve Chest - Forgotten Gnome Camp (Map 909)


-- ######################################################--
-- DECORATIONS - EXPLOSIVES AREA (Map 900 - Stonetalon Ruins)
-- ######################################################--

-- Bomb Stack Inactive
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101223, 193401, 900, 1, 1, 2881.57, 2478.51, 138.235, 5.9866, 0, 0, -0.147749, 0.989025, 300, 0, 1, 0),
(8101224, 193401, 900, 1, 1, 2883.81, 2481.21, 138.234, 5.64354, 0, 0, -0.314399, 0.949291, 300, 0, 1, 0),
(8101225, 193401, 900, 1, 1, 2880.93, 2473.5, 138.234, 5.9998, 0, 0, -0.141221, 0.989978, 300, 0, 1, 0),
(8101226, 193401, 900, 1, 1, 2880.84, 2475.64, 138.234, 5.9778, 0, 0, -0.152098, 0.988365, 300, 0, 1, 0),
(8101227, 193401, 900, 1, 1, 2888.63, 2480.24, 138.235, 4.96999, 0, 0, -0.610427, 0.792072, 300, 0, 1, 0),
(8101228, 193401, 900, 1, 1, 2892.38, 2477.71, 138.234, 4.0953, 0, 0, -0.888444, 0.458984, 300, 0, 1, 0),
(8101229, 193401, 900, 1, 1, 2885.9, 2477.79, 138.235, 5.16218, 0, 0, -0.531612, 0.846988, 300, 0, 1, 0),
(8101230, 193401, 900, 1, 1, 2884.43, 2472.71, 138.235, 6.24389, 0, 0, -0.0196482, 0.999807, 300, 0, 1, 0);

-- Barrel of Powder
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101232, 1670, 900, 1, 1, 2885.71, 2469.65, 138.235, 1.37812, 0, 0, -0.635813, -0.771844, 300, 0, 1, 0),
(8101233, 1670, 900, 1, 1, 2886.44, 2468.78, 138.235, 1.08155, 0, 0, -0.514802, -0.857309, 300, 0, 1, 0),
(8101234, 1670, 900, 1, 1, 2884.95, 2470.68, 138.237, 6.06226, 0, 0, -0.110236, 0.993906, 300, 0, 1, 0),
(8101235, 1670, 900, 1, 1, 2886.3, 2470.6, 138.236, 0.364044, 0, 0, -0.181018, -0.98348, 300, 0, 1, 0),
(8101236, 1670, 900, 1, 1, 2886.86, 2469.52, 138.235, 0.577358, 0, 0, -0.284686, -0.958621, 300, 0, 1, 0);

-- Rocket Delivery System
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101237, 201906, 900, 1, 1, 2884.1, 2475.28, 138.235, 6.20081, 0, 0, -0.0411765, 0.999152, 300, 0, 1, 0),
(8101238, 201906, 900, 1, 1, 2889.74, 2477.06, 138.234, 4.83045, 0, 0, -0.664159, 0.747591, 300, 0, 1, 0),
(8101239, 201906, 900, 1, 1, 2888.2, 2468.95, 138.234, 1.9262, 0, 0, -0.820967, -0.570976, 300, 0, 1, 0),
(8101240, 201906, 900, 1, 1, 2889.87, 2469.44, 138.235, 1.87562, 0, 0, -0.806266, -0.591554, 300, 0, 1, 0),
(8101241, 201906, 900, 1, 1, 2888.78, 2470.69, 138.235, 1.91411, 0, 0, -0.817499, -0.57593, 300, 0, 1, 0);

-- Charred Remains
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101242, 184445, 900, 1, 1, 2890.81, 2473.68, 138.234, 5.34376, 0, 0, -0.452628, 0.891699, 300, 0, 1, 0),
(8101243, 184445, 900, 1, 1, 2887.89, 2472.48, 138.235, 3.06108, 0, 0, -0.99919, -0.0402444, 300, 0, 1, 0),
(8101244, 184445, 900, 1, 1, 2893.05, 2473.3, 138.234, 1.70203, 0, 0, -0.751949, -0.659221, 300, 0, 1, 0);

-- Hardpacked Explosive Bundle
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101220, 191841, 900, 1, 1, 2883.46, 2470.11, 138.25, 6.20651, 0, 0, -0.0383272, 0.999265, 300, 0, 1, 0),
(8101221, 191841, 900, 1, 1, 2884.52, 2469.79, 138.238, 1.44511, 0, 0, -0.661305, -0.750117, 300, 0, 1, 0);

-- Big Wagon Full of Explosives
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101217, 184700, 900, 1, 1, 2943.25, 2528, 138.699, 2.68712, 0, 0, -0.974292, -0.225287, 300, 0, 1, 0),
(8101218, 184700, 900, 1, 1, 2934.56, 2531.69, 138.799, 5.94872, 0, 0, -0.166456, 0.986049, 300, 0, 1, 0);

-- DANGER: EXPLOSIVES ON PREMISES! (Sign)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101219, 192787, 900, 1, 1, 2896.91, 2461.47, 138.56, 5.03218, 0, 0, -0.585503, 0.81067, 300, 0, 1, 0);

-- Cannon - 0.50
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101272, 190228, 900, 1, 1, 2891.55, 2457.21, 139.205, 0.176785, 0, 0, -0.0882775, -0.996096, 300, 0, 1, 0);

-- Dark Iron Mole Machine
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101271, 186763, 900, 1, 1, 2952.29, 2555.84, 138.963, 1.72833, 0, 0, -0.760553, -0.649276, 300, 0, 1, 0);

-- Highland Mixed School (Fishing Node)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101269, 182957, 900, 1, 1, 3012.53, 2472.67, 122.001, 1.97244, 0, 0, -0.833946, -0.551846, 300, 0, 1, 0);

-- Strange Pool (Fishing Node)
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8101270, 184845, 900, 1, 1, 3019.01, 2491.49, 123.811, 2.74324, 0, 0, -0.98023, -0.197861, 300, 0, 1, 0);


-- ######################################################--
-- DECORATIONS - TROLL VILLAGE (Map 905 - Sandfury Delve)
-- ######################################################--

-- Troll Bonfire
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001487, 20977, 905, 1, 1, -12995.7, -1384.91, 59.2437, 3.84829, 0, 0, -0.938218, 0.346044, 300, 0, 1, 0),
(8001488, 20977, 905, 1, 1, -13037.7, -1386.28, 57.0242, 4.54926, 0, 0, -0.762366, 0.647146, 300, 0, 1, 0);

-- Beer Wagon
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001483, 186250, 905, 1, 1, -13012.1, -1546.06, 62.6451, 1.20278, 0, 0, -0.56579, -0.824549, 300, 0, 1, 0);

-- Campfire
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001479, 1799, 905, 1, 1, -13029.3, -1549.22, 60.1333, 3.82046, 0, 0, -0.942944, 0.332952, 300, 0, 1, 0);

-- Barrel of Melon Juice
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001475, 3659, 905, 1, 1, -13022.2, -1555.4, 61.5941, 1.65989, 0, 0, -0.737893, -0.674918, 300, 0, 1, 0);

-- Food Crate
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001478, 3695, 905, 1, 1, -13034.4, -1553.52, 60.2539, 0.777588, 0, 0, -0.379073, -0.925367, 300, 0, 1, 0);

-- Troll Skull Pile
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001484, 185167, 905, 1, 1, -13044.5, -1550.47, 59.7525, 0.927896, 0, 0, -0.447482, -0.894293, 300, 0, 1, 0);

-- Sen'jin Tent
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001474, 202886, 905, 1, 1, -13030.7, -1549.52, 59.9955, 1.40204, 0, 0, -0.644996, -0.764186, 300, 0, 1, 0);


-- ######################################################--
-- DECORATIONS - PIRATE CAMP (Map 908 - Quel'Thalas Island)
-- ######################################################--

-- Free Standing Torch 01
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001544, 180043, 908, 1, 1, 4310.7, -2776.59, 7.8313, 3.78923, 0, 0, -0.948027, 0.318189, 300, 0, 1, 0),
(8001545, 180043, 908, 1, 1, 4287.91, -2745.11, 9.3185, 3.18039, 0, 0, -0.999812, 0.0193973, 300, 0, 1, 0),
(8001546, 180043, 908, 1, 1, 4284.78, -2720.75, 7.84853, 3.21623, 0, 0, -0.999304, 0.03731, 300, 0, 1, 0);

-- Beer Wagon
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001541, 186250, 908, 1, 1, 4227.42, -2791.79, 6.07261, 5.89267, 0, 0, -0.194019, 0.980998, 300, 0, 1, 0);

-- Campfire
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001539, 1801, 908, 1, 1, 4226.68, -2783.84, 6.48757, 0.874889, 0, 0, -0.423626, -0.905837, 300, 0, 1, 0);

-- Pirate Flag
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(8001540, 187083, 908, 1, 1, 4244.34, -2789.51, 6.66095, 2.79789, 0, 0, -0.98527, -0.171007, 300, 0, 1, 0);