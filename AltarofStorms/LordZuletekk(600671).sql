DELETE FROM `creature_template` WHERE (`entry` = 600671);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600671, 0, 0, 0, 0, 0, 'Lord Zul\'etekk', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 18.37, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600671, 600671, 0, 0, 0, 399, 1620, 'SmartAI', 1, 1, 110.7, 40, 1.2, 2, 0, 0, 1, 646659935, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600671);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600671, 0, 14556, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600671);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600671, 6, 248, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600671);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600671, 0, 17146, 0),
(600671, 1, 23224, 0),
(600671, 2, 18670, 0),
(600671, 3, 20989, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600671);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600671, 12662, 0, 6, 0, 1, 0, 1, 1, 'Lord Hel\'nurath - Demonic Rune'),
(600671, 14047, 0, 15, 0, 1, 0, 2, 5, 'Lord Hel\'nurath - Runecloth'),
(600671, 18754, 0, 0, 0, 1, 1, 1, 1, 'Lord Hel\'nurath - Fel Hardened Bracers'),
(600671, 18755, 0, 0, 0, 1, 1, 1, 1, 'Lord Hel\'nurath - Xorothian Firestick'),
(600671, 18756, 0, 0, 0, 1, 1, 1, 1, 'Lord Hel\'nurath - Dreadguard\'s Protector'),
(600671, 18757, 0, 0, 0, 1, 1, 1, 1, 'Lord Hel\'nurath - Diabolic Mantle');

DELETE FROM `creature` WHERE (`id1` = 600671);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001455, 600671, 0, 0, 309, 0, 0, 1, 1, 0, -11888.2, -2708.79, 3.40174, 1.17846, 300, 7, 0, 659440, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600671;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600671);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600671, 0, 0, 0, 0, 0, 100, 2, 5000, 9000, 22000, 25000, 0, 0, 11, 17146, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Zul\'etekk - In Combat - Cast \'Shadow Word: Pain\' (Normal Dungeon)'),
(600671, 0, 1, 0, 0, 0, 100, 2, 11000, 14000, 14000, 20000, 0, 0, 11, 23224, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Zul\'etekk - In Combat - Cast \'Veil of Shadow\' (Normal Dungeon)'),
(600671, 0, 2, 0, 0, 0, 100, 2, 4000, 9000, 9000, 15000, 0, 0, 11, 18670, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Zul\'etekk - In Combat - Cast \'Knock Away\' (Normal Dungeon)'),
(600671, 0, 3, 0, 0, 0, 100, 2, 9000, 13000, 14000, 17000, 0, 0, 11, 20989, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Lord Zul\'etekk - In Combat - Cast \'Sleep\' (Normal Dungeon)');
