DELETE FROM `creature_template` WHERE (`entry` = 600657);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600657, 0, 0, 0, 0, 0, 'Venture Co. Shredder', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1.6, 1.19048, 1, 1, 20, 0.84, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600657, 0, 0, 0, 0, 180, 240, 'SmartAI', 1, 1, 38, 1, 1, 1, 0, 51, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600657);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600657, 0, 1269, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600657);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600657, 0, 36203, 0);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600657);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600657, 21, 0, 5, 0, 5, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600657);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600657, 1, 1003140, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 31-40'),
(600657, 2, 1023737, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 37-37'),
(600657, 3, 1033737, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 37-37'),
(600657, 4, 1053140, 0.4, 0, 1, 0, 1, 1, 'World Drop - 12 Slot Bag - NPC Levels: 31-40'),
(600657, 5, 1063039, 3, 0, 1, 0, 1, 1, 'World Drop - Potions III - NPC Levels 30-39'),
(600657, 6, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600657, 7, 1080004, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~35'),
(600657, 9, 1080020, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 36-40'),
(600657, 1708, 0, 2.1189, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Sweet Nectar'),
(600657, 2725, 0, 0.801, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 1'),
(600657, 2728, 0, 0.6718, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 4'),
(600657, 2730, 0, 0.6202, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 6'),
(600657, 2732, 0, 0.6202, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 8'),
(600657, 2734, 0, 0.6718, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 10'),
(600657, 2735, 0, 1.0336, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 11'),
(600657, 2738, 0, 0.646, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 14'),
(600657, 2740, 0, 0.7235, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 16'),
(600657, 2742, 0, 0.6977, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 18'),
(600657, 2744, 0, 0.7494, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 20'),
(600657, 2745, 0, 0.5943, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 21'),
(600657, 2748, 0, 0.6202, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 24'),
(600657, 2749, 0, 0.5426, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 25'),
(600657, 2750, 0, 0.5685, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 26'),
(600657, 2751, 0, 0.491, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Green Hills of Stranglethorn - Page 27'),
(600657, 3771, 0, 4.5478, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Wild Hog Shank'),
(600657, 4306, 0, 29.6382, 0, 1, 0, 1, 3, 'Venture Co. Shredder - Silk Cloth'),
(600657, 4338, 0, 4.7287, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Mageweave Cloth'),
(600657, 4377, 0, 6.4083, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Heavy Blasting Powder'),
(600657, 4382, 0, 1.0594, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Bronze Framework'),
(600657, 4387, 0, 2.3514, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Iron Strut'),
(600657, 4389, 0, 0.4134, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Gyrochronatom'),
(600657, 4539, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Goldenbark Apple'),
(600657, 4614, 0, 0.0258, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Pendant of Myzrael'),
(600657, 4636, 0, 0.1292, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Strong Iron Lockbox'),
(600657, 5755, 0, 1, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Onyx Shredder Plate'),
(600657, 7191, 0, 6.3307, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Fused Wiring'),
(600657, 8364, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Shredder - Mithril Head Trout');

DELETE FROM `creature` WHERE (`id1` = 600657);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001348, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2741.86, 2056.46, 271.568, 5.90825, 300, 5, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001349, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2785.08, 2033.22, 283.518, 5.54108, 300, 13, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001350, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2783.55, 2142.79, 242.027, 1.44091, 300, 12, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001351, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2709.19, 2185.16, 243.09, 3.8963, 300, 8, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001352, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2711.44, 2124.54, 254.809, 4.21674, 300, 5, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001384, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2813.99, 2216.31, 218.148, 4.26387, 300, 7, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001385, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2826.26, 2231.97, 210.932, 4.89007, 300, 8, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001400, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2782.77, 2009.84, 291.138, 3.69023, 300, 8, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001401, 600657, 0, 0, 1, 0, 0, 1, 1, 0, 2688.46, 2055.64, 282.883, 3.23494, 300, 0, 0, 242314, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600657;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600657);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600657, 0, 0, 0, 2, 0, 100, 1, 20, 80, 0, 0, 0, 0, 11, 36203, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Shredder - Between 20-80% Health - Cast \'Doomsaw\' (No Repeat)');
