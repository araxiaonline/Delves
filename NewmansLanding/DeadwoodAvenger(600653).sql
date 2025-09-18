DELETE FROM `creature_template` WHERE (`entry` = 600653);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600653, 0, 0, 0, 0, 0, 'Deadwood Avenger', 'Delve', NULL, 0, 83, 85, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.8, 2600, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 26115, 0, 0, 0, 0, 483, 1191, 'SmartAI', 1, 1, 16.2, 8, 1.1, 1, 0, 0, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600653);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600653, 0, 2003, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600653);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600653, 0, 13583, 12340),
(600653, 1, 8599, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600653);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600653, 576, 0, 5, 0, 20, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600653);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600653, 1, 1899, 0, 0, 18019);

DELETE FROM `creature` WHERE (`id1` = 600653);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001310, 600653, 0, 0, 610, 0, 0, 1, 1, 1, -6248.16, -832.927, 401.649, 3.40714, 300, 3, 0, 80599, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001317, 600653, 0, 0, 610, 0, 0, 1, 1, 1, -6258.5, -811.826, 401.147, 2.64593, 300, 6, 0, 82803, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001337, 600653, 0, 0, 610, 0, 0, 1, 1, 1, -6173.76, -771.589, 420.789, 3.37029, 300, 8, 0, 78434, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600653;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600653);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600653, 0, 0, 0, 0, 0, 100, 1, 0, 0, 5000, 5000, 0, 0, 11, 13583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Avenger - In Combat - Cast \'Curse of the Deadwood\' (No Repeat)'),
(600653, 0, 1, 2, 2, 0, 100, 1, 0, 30, 15000, 15000, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Avenger - Between 0-30% Health - Cast \'Enrage\' (No Repeat)'),
(600653, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Avenger - Between 0-30% Health - Say Line 0 (No Repeat)');
