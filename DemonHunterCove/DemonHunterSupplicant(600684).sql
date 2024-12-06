DELETE FROM `creature_template` WHERE (`entry` = 600684);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600684, 0, 0, 0, 0, 0, 'Demon Hunter Supplicant', 'Delve', NULL, 0, 84, 84, 1, 168, 0, 1.6, 1.42857, 1, 1, 20, 1, 1, 0, 28, 1600, 1600, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600684, 600684, 0, 0, 0, 205, 273, 'SmartAI', 1, 1, 17.5, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600684);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600684, 0, 20131, 1, 1, 12340),
(600684, 1, 20132, 1, 1, 12340),
(600684, 2, 20133, 1, 1, 12340),
(600684, 3, 20134, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600684);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600684, 0, 37683, 12340),
(600684, 1, 32720, 0);


DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600684);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600684, 1, 14882, 20417, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600684);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600684, 21877, 0, 4.2223, 0, 1, 0, 1, 3, 'Demon Hunter Supplicant - Netherweave Cloth'),
(600684, 22903, 0, 0.05, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Recipe: Insane Strength Potion'),
(600684, 23884, 0, 0.05, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Schematic: Mana Potion Injector'),
(600684, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Demon Hunter Supplicant - (ReferenceTable)'),
(600684, 24009, 24009, 1, 0, 1, 1, 1, 1, 'Demon Hunter Supplicant - (ReferenceTable)'),
(600684, 24011, 24011, 1, 0, 1, 1, 1, 1, 'Demon Hunter Supplicant - (ReferenceTable)'),
(600684, 24012, 24012, 0.5, 0, 1, 1, 1, 1, 'Demon Hunter Supplicant - (ReferenceTable)'),
(600684, 27854, 0, 0.4429, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Smoked Talbuk Venison'),
(600684, 27860, 0, 0.2013, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Purified Draenic Water'),
(600684, 29739, 0, 1.8, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Arcane Tome'),
(600684, 30679, 0, 80, 1, 1, 0, 1, 1, 'Demon Hunter Supplicant - Sunfury Glaive'),
(600684, 30810, 0, 24, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Sunfury Signet'),
(600684, 31952, 0, 0.0058, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Khorium Lockbox');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600684);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600684, 22829, 0, 4.3478, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Super Healing Potion'),
(600684, 29569, 0, 4.3478, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Strong Junkbox'),
(600684, 29571, 0, 21.7391, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - A Steamy Romance Novel'),
(600684, 30458, 0, 4.3478, 0, 1, 0, 1, 1, 'Demon Hunter Supplicant - Stromgarde Muenster');

DELETE FROM `creature` WHERE (`id1` = 600684);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001614, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9725.63, -45.9773, 13.5417, 3.46549, 300, 4, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001626, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9760.75, -34.5086, 11.9596, 3.50495, 300, 0, 0, 196658, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001627, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9745.8, -33.9862, 14.8503, 3.10173, 300, 10, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001628, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9722.18, -33.0439, 16.01, 3.10173, 300, 6, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001629, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9695.39, -47.4049, 13.6345, 4.11914, 300, 6, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001630, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9691.32, -72.6115, 9.60593, 0.707919, 300, 7, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001631, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9721.77, -78.5098, 8.37055, 5.9777, 300, 8, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001632, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9687.5, -26.5993, 17.6015, 2.39959, 300, 10, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001633, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9735.6, 6.85084, 17.5806, 0.332733, 300, 10, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001634, 600684, 0, 0, 1, 0, 0, 1, 1, 1, 9781.77, -43.8977, 16.1254, 5.00169, 300, 10, 0, 196658, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600684;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600684);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600684, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 32720, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Hunter Supplicant - On Aggro - Cast \'Sprint\' (No Repeat)'),
(600684, 0, 1, 0, 2, 0, 100, 1, 20, 80, 0, 0, 0, 0, 11, 37683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Hunter Supplicant - Between 20-80% Health - Cast \'Evasion\' (No Repeat)');
