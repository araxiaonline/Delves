DELETE FROM `creature_template` WHERE (`entry` = 600697);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600697, 0, 0, 0, 0, 0, 'Plagued Maggot', 'Delve', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 34, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 13.5, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600697);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600697, 0, 9903, 1, 1, 12340),
(600697, 1, 9904, 1, 1, 12340),
(600697, 2, 9905, 1, 1, 12340),
(600697, 3, 9906, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600697);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600697, 0, 16449, 0);

DELETE FROM `creature` WHERE (`id1` = 600697);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001692, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1847.67, -4091.81, 9.07486, 3.66493, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001693, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1848.68, -4096.02, 9.07486, 3.30977, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001694, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1859.32, -4097.52, 8.74154, 6.01751, 300, 10, 0, 88462, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001695, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1857.55, -4095.56, 8.74158, 0.871898, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001696, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1850.73, -4093.09, 9.07549, 4.79198, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001697, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1856.27, -4099.09, 8.74165, 1.05898, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001698, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1848.16, -4099.72, 9.07531, 3.00017, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001699, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1848.43, -4093.78, 9.07531, 3.65959, 300, 10, 0, 88462, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001700, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1857.84, -4098.06, 8.74151, 0.297772, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001701, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1846.44, -4094.9, 9.07557, 3.30844, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001702, 600697, 0, 0, 906, 0, 0, 1, 1, 0, -1851.02, -4098.92, 9.07557, 2.99216, 300, 0, 0, 88462, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600697;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600697);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600697, 0, 0, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0, 'Plagued Maggot - Out of Combat - Start Attacking'),
(600697, 0, 1, 0, 0, 0, 100, 0, 0, 11000, 20000, 30000, 0, 0, 11, 16449, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagued Maggot - In Combat - Cast \'Maggot Slime\'');
