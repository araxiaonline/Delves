DELETE FROM `creature_template` WHERE (`entry` = 600649);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600649, 0, 0, 0, 0, 0, 'Lithianawan', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1, 1.71426, 1, 1, 20, 1, 3, 0, 35.3, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600649, 0, 0, 0, 0, 859, 1201, 'SmartAI', 1, 1, 114.3, 20, 1.1, 2, 0, 0, 1, 613105499, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600649);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600649, 0, 21012, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600649);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600649, 0, 11668, 12340),
(600649, 1, 14887, 12340),
(600649, 2, 22709, 0),
(600649, 3, 22710, 0),
(600649, 4, 16247, 0),
(600649, 5, 13338, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600649);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600649, 1, 13698, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600649);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600649, 8948, 0, 8, 0, 1, 0, 2, 4, 'Lethtendris - Dried King Bolete'),
(600649, 14047, 0, 23, 0, 1, 0, 2, 4, 'Lethtendris - Runecloth'),
(600649, 18301, 0, 0, 0, 1, 1, 1, 1, 'Lethtendris - Lethtendris\'s Wand'),
(600649, 18302, 0, 0, 0, 1, 1, 1, 1, 'Lethtendris - Band of Vigor'),
(600649, 18311, 0, 10, 0, 1, 1, 1, 1, 'Lethtendris - Quel\'dorei Channeling Rod'),
(600649, 18325, 0, 0, 0, 1, 1, 1, 1, 'Lethtendris - Felhide Cap'),
(600649, 18426, 0, 100, 1, 1, 0, 1, 1, 'Lethtendris - Lethtendris\'s Web'),
(600649, 35016, 35016, 2, 0, 1, 2, 1, 1, 'Lethtendris - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600649);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001300, 600649, 0, 0, 908, 0, 0, 1, 1, 1, 4322.96, -2869.1, 1.7454, 2.21611, 300, 0, 0, 559728, 89000, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600649;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600649);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600649, 0, 0, 0, 0, 0, 100, 0, 0, 2000, 5000, 6000, 0, 0, 11, 22709, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Lithianawan - In Combat - Cast \'Void Bolt\''),
(600649, 0, 1, 0, 0, 0, 100, 0, 3000, 7000, 11000, 16000, 0, 0, 11, 14887, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lithianawan - In Combat - Cast \'Shadow Bolt Volley\''),
(600649, 0, 2, 0, 0, 0, 100, 0, 5000, 11000, 15000, 24000, 0, 0, 11, 20787, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Lithianawan - In Combat - Cast \'Immolate\''),
(600649, 0, 3, 0, 0, 0, 100, 0, 11000, 11000, 30000, 30000, 0, 0, 11, 22710, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lithianawan - In Combat - Cast \'Enlarge\''),
(600649, 0, 4, 0, 0, 0, 100, 0, 11000, 22000, 22000, 33000, 0, 0, 11, 16247, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Lithianawan - In Combat - Cast \'Curse of Thorns\''),
(600649, 0, 5, 0, 0, 0, 100, 0, 11000, 22000, 22000, 33000, 0, 0, 11, 13338, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Lithianawan - In Combat - Cast \'Curse of Tongues\'');
