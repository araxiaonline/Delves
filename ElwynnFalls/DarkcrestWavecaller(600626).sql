DELETE FROM `creature_template` WHERE (`entry` = 600626);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600626, 0, 0, 0, 0, 0, 'Darkcrest Wavecaller', 'Delve', NULL, 0, 83, 83, 1, 128, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 8.9, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600626, 600626, 0, 0, 0, 139, 186, 'SmartAI', 1, 1, 6, 20, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600626);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600626, 0, 17953, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600626);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600626, 0, 32011, 12340),
(600626, 1, 34827, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600626);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600626, 1, 29107, 6618, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600626);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600626, 1, 6003, 2, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - (ReferenceTable)'),
(600626, 2, 6010, 90, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - (ReferenceTable)'),
(600626, 13444, 0, 0.5, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Major Mana Potion'),
(600626, 13446, 0, 1, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Major Healing Potion'),
(600626, 17057, 0, 25, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Shiny Fish Scales'),
(600626, 17058, 0, 20, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Fish Oil'),
(600626, 24280, 0, 100, 1, 1, 0, 1, 1, 'Bloodscale Wavecaller - Naga Claws'),
(600626, 24330, 0, 2, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Drain Schematics'),
(600626, 24401, 0, 30, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Unidentified Plant Parts'),
(600626, 24476, 0, 15, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Jaggal Clam'),
(600626, 27858, 0, 4, 0, 1, 0, 1, 3, 'Bloodscale Wavecaller - Sunspring Carp'),
(600626, 28399, 0, 2, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Filtered Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600626);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600626, 22829, 0, 0.7813, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Super Healing Potion'),
(600626, 27858, 0, 7.4219, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Sunspring Carp'),
(600626, 29569, 0, 8.5938, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Strong Junkbox'),
(600626, 29576, 0, 10.1563, 0, 1, 0, 1, 1, 'Bloodscale Wavecaller - Shark Bait');

DELETE FROM `creature` WHERE (`id1` = 600626);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001165, 600626, 0, 0, 0, 0, 0, 1, 1, 1, -8321.71, -375.9, 140.279, 3.2299, 300, 6, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001171, 600626, 0, 0, 0, 0, 0, 1, 1, 1, -8453.78, -418.773, 140.076, 3.54257, 300, 6, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001188, 600626, 0, 0, 0, 0, 0, 1, 1, 1, -8549.13, -559.684, 145.099, 1.89573, 300, 8, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001189, 600626, 0, 0, 0, 0, 0, 1, 1, 1, -8573.08, -563.993, 145.124, 3.21088, 300, 8, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001190, 600626, 0, 0, 0, 0, 0, 1, 1, 1, -8586.62, -592.527, 145.687, 4.9159, 300, 13, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600626;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600626);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600626, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 34827, 33, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodscale Wavecaller - Out of Combat - Cast \'Water Shield\' (No Repeat)'),
(600626, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 32011, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodscale Wavecaller - In Combat CMC - Cast \'Water Bolt\'');
