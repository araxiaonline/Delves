DELETE FROM `creature_template` WHERE (`entry` = 600633);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600633, 0, 0, 0, 0, 0, 'Lord Mwargadon', 'Delve boss', NULL, 0, 83, 83, 1, 168, 0, 1, 1.42857, 1, 1, 20, 1, 3, 0, 24, 2000, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600633, 600633, 0, 0, 0, 1039, 1362, 'SmartAI', 1, 1, 85, 10, 1.1, 1, 0, 0, 1, 1105, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600633);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600633, 0, 17581, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600633);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600633, 1, 30403, 12980, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600633);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600633, 2, 6010, 90, 0, 1, 0, 1, 1, 'Rajah Haghazed - (ReferenceTable)'),
(600633, 13444, 0, 0.5, 0, 1, 0, 1, 1, 'Rajah Haghazed - Major Mana Potion'),
(600633, 13446, 0, 1, 0, 1, 0, 1, 1, 'Rajah Haghazed - Major Healing Potion'),
(600633, 17057, 0, 25, 0, 1, 0, 1, 1, 'Rajah Haghazed - Shiny Fish Scales'),
(600633, 17058, 0, 20, 0, 1, 0, 1, 1, 'Rajah Haghazed - Fish Oil'),
(600633, 22903, 0, 0.12, 0, 1, 0, 1, 1, 'Rajah Haghazed - Recipe: Insane Strength Potion'),
(600633, 23884, 0, 0.12, 0, 1, 0, 1, 1, 'Rajah Haghazed - Schematic: Mana Potion Injector'),
(600633, 24280, 0, 100, 1, 1, 0, 1, 1, 'Rajah Haghazed - Naga Claws'),
(600633, 24476, 0, 26, 0, 1, 0, 1, 1, 'Rajah Haghazed - Jaggal Clam'),
(600633, 27858, 0, 4, 0, 1, 0, 1, 3, 'Rajah Haghazed - Sunspring Carp'),
(600633, 28399, 0, 2, 0, 1, 0, 1, 1, 'Rajah Haghazed - Filtered Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600633);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600633, 22829, 0, 1.8519, 0, 1, 0, 1, 1, 'Rajah Haghazed - Super Healing Potion'),
(600633, 27856, 0, 5.5556, 0, 1, 0, 1, 1, 'Rajah Haghazed - Skethyl Berries'),
(600633, 29569, 0, 6.4815, 0, 1, 0, 1, 1, 'Rajah Haghazed - Strong Junkbox'),
(600633, 29571, 0, 10.1852, 0, 1, 0, 1, 1, 'Rajah Haghazed - A Steamy Romance Novel'),
(600633, 30458, 0, 1.8519, 0, 1, 0, 1, 1, 'Rajah Haghazed - Stromgarde Muenster');

DELETE FROM `creature` WHERE (`id1` = 600633);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001195, 600633, 0, 0, 0, 0, 0, 1, 1, 1, -8635.07, -542.1, 145.242, 1.28288, 300, 0, 0, 846260, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600633;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600633);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600633, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 35472, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rajah Haghazed - On Aggro - Cast \'Shield Charge\' (No Repeat)'),
(600633, 0, 1, 0, 0, 0, 100, 0, 2500, 5000, 10000, 15000, 0, 0, 11, 35473, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rajah Haghazed - In Combat - Cast \'Forceful Cleave\''),
(600633, 0, 2, 0, 2, 0, 100, 1, 20, 80, 0, 0, 0, 0, 11, 16856, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rajah Haghazed - Between 20-80% Health - Cast \'Mortal Strike\' (No Repeat)'),
(600633, 0, 3, 0, 2, 0, 100, 1, 5, 30, 0, 0, 0, 0, 11, 15062, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rajah Haghazed - Between 5-30% Health - Cast \'Shield Wall\' (No Repeat)');
