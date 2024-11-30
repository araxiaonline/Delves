DELETE FROM `creature_template` WHERE (`entry` = 600668);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600668, 0, 0, 0, 0, 0, 'Eredar Sorcerer', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 1, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 138, 1303, 'SmartAI', 1, 1, 25, 5, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600668);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600668, 0, 22833, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600668);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600668, 0, 45046, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600668);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600668, 1, 29362, 0, 0, 18019);

DELETE FROM `creature` WHERE (`id1` = 600668);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001433, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11715.5, -2435.59, -7.49556, 2.51278, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001434, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11745.9, -2387.18, -7.49176, 2.08019, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001459, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11811.9, -2613.36, 5.18821, 0.776572, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001460, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11854, -2616.06, -3.7423, 3.5202, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001474, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -12021.7, -2581.3, -29.6503, 6.21961, 300, 0, 0, 219037, 21310, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001475, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -12021.8, -2589.12, -29.6614, 6.19691, 300, 0, 0, 219037, 21310, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001491, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -12046.3, -2681.97, -16.7557, 3.47716, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001492, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -12098.8, -2610.71, -31.771, 6.12733, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001493, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -12117.2, -2572.99, -27.2071, 0.13254, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001495, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11949.2, -2562.49, -42.6262, 0.0884773, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001496, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11870.9, -2539.51, -28.0703, 6.24482, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001497, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11880.7, -2466.32, -11.7318, 1.85091, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001498, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11932.8, -2410.51, -0.285263, 0.423606, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001524, 600668, 0, 0, 309, 0, 0, 1, 1, 1, -11940.4, -2529.95, -45.5328, 2.16404, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600668;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600668);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600668, 0, 0, 0, 0, 0, 100, 0, 2000, 4500, 12000, 20000, 0, 0, 11, 45046, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Eredar Sorcerer - In Combat - Cast \'Flames of Doom\'');
