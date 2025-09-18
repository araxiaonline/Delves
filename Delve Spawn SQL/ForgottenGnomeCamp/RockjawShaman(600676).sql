DELETE FROM `creature_template` WHERE (`entry` = 600676);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600676, 0, 0, 0, 0, 0, 'Rockjaw Shaman', 'Delve', NULL, 0, 83, 85, 0, 168, 0, 1.6, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 36829, 0, 0, 0, 0, 176, 235, 'SmartAI', 1, 1, 40, 10, 1, 1, 0, 51, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600676);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600676, 0, 10285, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600676);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600676, 0, 12492, 0),
(600676, 1, 15786, 0),
(600676, 2, 15801, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600676);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600676, 1, 5276, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 36829);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(36829, 1, 35069, 100, 0, 1, 0, 1, 2, 'Deathspeaker High Priest - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600676);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001547, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -5861.31, 801.854, 485.715, 1.91461, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001548, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -5900.28, 787.961, 485.761, 4.43275, 300, 0, 0, 188408, 96870, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001549, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -5889.2, 738.956, 485.765, 4.20844, 300, 10, 0, 188408, 96870, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001550, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -5932.42, 679.922, 485.77, 3.87598, 300, 10, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001561, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -6002.71, 661.843, 481.678, 0.0360135, 300, 3, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001565, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -5920.58, 584.951, 503.188, 4.26821, 300, 10, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001566, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -5892.1, 546.923, 503.929, 3.15467, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001575, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -5934.89, 492.772, 510.162, 0.142187, 300, 0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001581, 600676, 0, 0, 0, 0, 0, 1, 1, 1, -5919.56, 468.644, 515.95, 2.89383, 300, 0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600676;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600676);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600676, 0, 0, 0, 0, 0, 100, 2, 0, 0, 3400, 4800, 0, 0, 11, 15801, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Irondeep Shaman - Combat CMC - Cast \'Lightning Bolt\' (Normal Dungeon)'),
(600676, 0, 1, 0, 0, 0, 100, 2, 7000, 9000, 55000, 65000, 0, 0, 11, 15786, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Irondeep Shaman - Combat - Cast \'Earthbind Totem\' (Normal Dungeon)'),
(600676, 0, 2, 0, 2, 0, 100, 2, 0, 50, 15000, 20000, 0, 0, 11, 12492, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Irondeep Shaman - 0-50% Health - Cast \'Healing Wave\' (Normal Dungeon)'),
(600676, 0, 3, 0, 2, 0, 100, 3, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Irondeep Shaman - 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)');
