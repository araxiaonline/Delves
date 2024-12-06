DELETE FROM `creature_template` WHERE (`entry` = 600699);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600699, 0, 0, 0, 0, 0, 'Rhulk The Diseased', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1.62, 1.14286, 1, 1, 20, 1, 3, 0, 75, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600699, 0, 0, 0, 0, 575, 756, 'SmartAI', 0, 1, 90, 10, 1.1, 2, 0, 0, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600699);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600699, 0, 6124, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600699);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600699, 0, 12946, 12340),
(600699, 1, 11441, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600699);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600699, 1708, 0, 2, 0, 1, 0, 1, 1, 'Plaguemaw the Rotting - Sweet Nectar'),
(600699, 4306, 0, 16, 0, 1, 0, 1, 4, 'Plaguemaw the Rotting - Silk Cloth'),
(600699, 4338, 0, 2, 0, 1, 0, 1, 1, 'Plaguemaw the Rotting - Mageweave Cloth'),
(600699, 4539, 0, 3, 0, 1, 0, 1, 1, 'Plaguemaw the Rotting - Goldenbark Apple'),
(600699, 10760, 0, 60, 0, 1, 1, 1, 1, 'Plaguemaw the Rotting - Swine Fists'),
(600699, 10766, 0, 40, 0, 1, 1, 1, 1, 'Plaguemaw the Rotting - Plaguerot Sprig');

DELETE FROM `creature` WHERE (`id1` = 600699);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001764, 600699, 0, 0, 0, 0, 0, 1, 1, 0, -1852.61, -4095.6, 9.07498, 4.66142, 300, 4, 0, 550800, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600699;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600699);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600699, 0, 0, 0, 0, 0, 100, 2, 8000, 12000, 15000, 23000, 0, 0, 11, 12946, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rhulk The Diseased - In Combat - Cast \'Putrid Stench\' (Normal Dungeon)');
