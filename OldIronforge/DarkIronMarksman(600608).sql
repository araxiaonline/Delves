DELETE FROM `creature_template` WHERE (`entry` = 600608);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600608, 0, 0, 0, 0, 0, 'Dark Iron Marksman', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 14, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 3.915, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600608);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600608, 0, 7765, 1, 1, 12340),
(600608, 1, 7766, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600608);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600608, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600608);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600608, 0, 6660, 0),
(600608, 1, 14443, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600608);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600608, 1, 2183, 0, 2552, 18019);

DELETE FROM `creature` WHERE (`id1` = 600608);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001034, 600608, 0, 0, 0, 0, 0, 1, 1, 1, -4811.18, -961.033, 399.042, 5.02995, 300, 7, 0, 24297, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001068, 600608, 0, 0, 0, 0, 0, 1, 1, 1, -4823.54, -1070.11, 450.735, 1.45323, 300, 4, 0, 24297, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600608;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600608);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600608, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, 0, 0, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Marksman - In Combat - Cast \'Shoot\''),
(600608, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 5, 30, 11, 14443, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Marksman - Within 5-30 Range - Cast \'Multi-Shot\''),
(600608, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Marksman - Between 0-15% Health - Flee For Assist (No Repeat)');
