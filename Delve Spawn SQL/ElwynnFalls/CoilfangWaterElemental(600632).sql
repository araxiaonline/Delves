DELETE FROM `creature_template` WHERE (`entry` = 600632);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600632, 20627, 0, 0, 0, 0, 'Coilfang Water Elemental', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 1, 1.28968, 1, 1, 20, 1, 1, 4, 13, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 4, 8, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 5, 8, 1, 1, 0, 144, 1, 0, 0, 0, '', 12340);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600632, 0, 5564, 1, 1, 12340);

INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600632, 0, 34449, 12340);

DELETE FROM `creature` WHERE (`id1` = 600632);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001162, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8336.9, -296.276, 141.986, 4.50818, 300, 4, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001166, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8368.21, -389.868, 141.991, 0.715499, 300, 4, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001167, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8418.06, -395.057, 141.991, 6.06005, 300, 5, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001172, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8448.86, -439.495, 141.903, 1.52408, 300, 10, 0, 43807, 34096, 1, 0, 32768, 0, '', NULL, 0, NULL),
(9001173, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8477.78, -407.396, 141.903, 4.92211, 300, 10, 0, 43807, 34096, 1, 0, 32768, 0, '', NULL, 0, NULL),
(9001179, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8531.21, -469.836, 141.998, 0.0169186, 300, 8, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001181, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8559.28, -490.448, 141.999, 0.264503, 300, 10, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL);




UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600632;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600632);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600632, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 7000, 12000, 0, 0, 11, 34449, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Water Elemental - In Combat - Cast Water Bolt Volley');
