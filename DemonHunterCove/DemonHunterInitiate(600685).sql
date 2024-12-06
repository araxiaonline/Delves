DELETE FROM `creature_template` WHERE (`entry` = 600685);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600685, 0, 0, 0, 0, 0, 'Demon Hunter Initiate', 'Delve', NULL, 0, 84, 84, 1, 168, 0, 1.3, 1.42857, 1, 1, 20, 1, 1, 0, 32, 1600, 1600, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600685, 600685, 0, 0, 0, 178, 237, 'SmartAI', 1, 1, 28, 15, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600685);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600685, 0, 20756, 1, 1, 12340),
(600685, 1, 20757, 1, 1, 12340),
(600685, 2, 20758, 1, 1, 12340),
(600685, 3, 20759, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600685);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600685, 0, 35871, 12340),
(600685, 1, 37833, 12340),
(600685, 2, 33651, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600685);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600685, 1, 5597, 5597, 0, 18019);

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600685);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600685, 22829, 0, 2.7772, 0, 1, 0, 1, 1, 'Demon Hunter Initiate - Super Healing Potion'),
(600685, 27856, 0, 2.3713, 0, 1, 0, 1, 1, 'Demon Hunter Initiate - Skethyl Berries'),
(600685, 29569, 0, 9.3142, 0, 1, 0, 1, 1, 'Demon Hunter Initiate - Strong Junkbox'),
(600685, 29571, 0, 9.891, 0, 1, 0, 1, 1, 'Demon Hunter Initiate - A Steamy Romance Novel'),
(600685, 30458, 0, 2.4567, 0, 1, 0, 1, 1, 'Demon Hunter Initiate - Stromgarde Muenster');

DELETE FROM `creature` WHERE (`id1` = 600685);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001616, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9773.07, -20.2394, 13.7954, 4.13131, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001617, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9773.75, -66.8845, 6.6318, 3.26462, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001618, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9746.63, -79.4327, 4.5011, 3.74929, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001619, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9711.05, -90.9418, 4.60604, 3.05634, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001620, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9677.02, -81.3425, 4.93029, 3.10841, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001621, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9650.48, -68.4506, 3.53487, 2.46752, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001622, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9671.77, -46.6532, 10.7009, 0.586258, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001623, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9726.99, -16.4661, 19.4152, 1.0509, 300, 5, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001624, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9749.56, 25.7192, 26.3616, 5.95618, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001625, 600685, 0, 0, 1, 0, 0, 1, 1, 1, 9741.76, -54.2346, 11.2766, 2.98808, 300, 10, 0, 251728, 65325, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600685;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600685);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600685, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 36051, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Hunter Initiate - On Aggro - Cast \'Fel Immolation\' (No Repeat)'),
(600685, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 15000, 20000, 0, 0, 11, 35871, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Hunter Initiate - In Combat - Cast \'Spellbreaker\''),
(600685, 0, 2, 0, 2, 0, 100, 1, 10, 30, 0, 0, 0, 0, 11, 27565, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Hunter Initiate - Between 10-30% Health - Cast \'Banish\' (No Repeat)');
