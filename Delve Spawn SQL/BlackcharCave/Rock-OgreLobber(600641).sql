DELETE FROM `creature_template` WHERE (`entry` = 600641);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600641, 0, 0, 0, 0, 0, 'Rock-Ogre Lobber', 'Delve', '', 0, 83, 83, 0, 168, 0, 3.2, 1.71429, 1, 1, 20, 0.78, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 20, 10, 1, 1, 0, 0, 1, 0, 0, 0, '', 9767);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600641);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600641, 0, 11549, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600641);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600641, 1, 2884, 0, 0, 18019);

DELETE FROM `creature` WHERE (`id1` = 600641);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001226, 600641, 0, 0, 0, 0, 0, 1, 1, 1, -7241.39, -665.042, 285.93, 5.28657, 300, 5, 0, 102036, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001238, 600641, 0, 0, 0, 0, 0, 1, 1, 1, -7324.61, -631.471, 293.225, 0.454405, 300, 7, 0, 102036, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001241, 600641, 0, 0, 0, 0, 0, 1, 1, 1, -7327.35, -651.267, 284.103, 4.05506, 300, 5, 0, 102036, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001257, 600641, 0, 0, 0, 0, 0, 1, 1, 1, -7238.73, -632.727, 290.206, 4.8786, 300, 5, 0, 102036, 42620, 1, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600641;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600641);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600641, 0, 0, 0, 0, 0, 100, 0, 5000, 6000, 8000, 12000, 0, 0, 11, 65128, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Lobber - In Combat - Cast \'Throw Dynamite\''),
(600641, 0, 1, 0, 0, 0, 100, 0, 8000, 9000, 6000, 13000, 0, 0, 11, 65130, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Lobber - In Combat - Cast \'Time Bomb\'');
