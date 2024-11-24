DELETE FROM `creature_template` WHERE (`entry` = 600654);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600654, 0, 0, 0, 0, 0, 'Deadwood Shaman', 'Delve', NULL, 0, 83, 85, 0, 168, 0, 1.6, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 36829, 0, 0, 0, 0, 176, 235, 'SmartAI', 1, 1, 40, 10, 1, 1, 0, 51, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600654);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600654, 0, 6746, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600654);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600654, 0, 13585, 12340),
(600654, 1, 9532, 12340),
(600654, 2, 12058, 12340),
(600654, 3, 13583, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600654);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600654, 576, 0, 5, 0, 20, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600654);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600654, 1, 5303, 0, 0, 18019);

DELETE FROM `creature` WHERE (`id1` = 600654);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001308, 600654, 0, 0, 0, 0, 0, 1, 1, 1, -6264.08, -831.186, 400.424, 5.43795, 300, 0, 0, 183524, 95080, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001313, 600654, 0, 0, 0, 0, 0, 1, 1, 1, -6288.93, -762.614, 400.959, 4.79274, 300, 4, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001318, 600654, 0, 0, 0, 0, 0, 1, 1, 1, -6239.26, -771.342, 414.858, 4.79941, 300, 8, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001326, 600654, 0, 0, 0, 0, 0, 1, 1, 1, -6173.62, -807.248, 424.461, 1.46115, 300, 0, 0, 183524, 95080, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001333, 600654, 0, 0, 0, 0, 0, 1, 1, 1, -6166.43, -727.178, 424.634, 4.78959, 300, 4, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001336, 600654, 0, 0, 0, 0, 0, 1, 1, 1, -6201.85, -731.931, 424.551, 5.11003, 300, 6, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001340, 600654, 0, 0, 0, 0, 0, 1, 1, 1, -6311.49, -796.013, 408.727, 0.0286623, 300, 4, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600654;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600654);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600654, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 13585, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman - Out of Combat - Cast \'Lightning Shield\''),
(600654, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman - In Combat - Cast \'Lightning Bolt\''),
(600654, 0, 2, 0, 0, 0, 100, 0, 2500, 7000, 120000, 130000, 0, 0, 11, 13583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman - In Combat - Cast \'Curse of the Deadwood\''),
(600654, 0, 3, 0, 0, 0, 100, 0, 5500, 9000, 6500, 9500, 0, 0, 11, 12058, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Shaman - In Combat - Cast \'Chain Lightning\'');
