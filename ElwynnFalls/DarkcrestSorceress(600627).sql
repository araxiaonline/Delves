DELETE FROM `creature_template` WHERE (`entry` = 600627);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600627, 0, 0, 0, 0, 0, 'Darkcrest Sorceress', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 1, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600627, 600627, 0, 0, 0, 138, 1303, 'SmartAI', 1, 1, 25, 5, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600627);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600627, 0, 17952, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600627);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600627, 0, 13901, 12340),
(600627, 1, 12544, 12340),
(600627, 2, 34787, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600627);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600627, 1, 14618, 6618, 0, 18019);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600627, 1, 6003, 2, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - (ReferenceTable)'),
(600627, 2, 6001, 90, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - (ReferenceTable)'),
(600627, 13444, 0, 0.5, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Major Mana Potion'),
(600627, 13446, 0, 1, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Major Healing Potion'),
(600627, 17057, 0, 25, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Shiny Fish Scales'),
(600627, 17058, 0, 20, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Fish Oil'),
(600627, 24280, 0, 100, 1, 1, 0, 1, 1, 'Darkcrest Sorceress - Naga Claws'),
(600627, 24401, 0, 30, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Unidentified Plant Parts'),
(600627, 24476, 0, 15, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Jaggal Clam'),
(600627, 27858, 0, 3, 0, 1, 0, 1, 3, 'Darkcrest Sorceress - Sunspring Carp'),
(600627, 28399, 0, 1.5, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Filtered Draenic Water');

INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600627, 22829, 0, 2.2161, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Super Healing Potion'),
(600627, 27858, 0, 7.0637, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Sunspring Carp'),
(600627, 29569, 0, 8.5873, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Strong Junkbox'),
(600627, 29576, 0, 8.1717, 0, 1, 0, 1, 1, 'Darkcrest Sorceress - Shark Bait');

INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001176, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8500.84, -460.555, 140.198, 5.95507, 300, 5, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001184, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8559.63, -529.361, 145.844, 0.225583, 300, 6, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001192, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8601.27, -581.298, 145.774, 2.15209, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001194, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8589.3, -534.467, 145.479, 3.68604, 300, 4, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001199, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8617.75, -524.22, 145.761, 2.50943, 300, 6, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001200, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8673.27, -533.745, 151.791, 2.94862, 300, 10, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600627;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600627);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600627, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 12544, 33, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Sorceress - Out of Combat - Cast \'Frost Armor\''),
(600627, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 13901, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Sorceress - In Combat - Cast \'Arcane Bolt\''),
(600627, 0, 2, 0, 0, 0, 100, 0, 10000, 15000, 20000, 25000, 0, 0, 11, 34787, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Sorceress - In Combat - Cast \'Freezing Circle\''),
(600627, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Sorceress - Between 0-15% Health - Flee For Assist (No Repeat)');
