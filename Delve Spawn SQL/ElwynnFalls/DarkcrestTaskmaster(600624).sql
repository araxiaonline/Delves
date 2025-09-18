DELETE FROM `creature_template` WHERE (`entry` = 600624);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600624, 0, 0, 0, 0, 0, 'Darkcrest Taskmaster', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 1, 1.19048, 1, 1, 20, 1, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600624, 600624, 0, 0, 0, 169, 225, 'SmartAI', 1, 1, 38, 1, 0.97, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600624);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600624, 0, 17951, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600624);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600624, 0, 34811, 12340),
(600624, 1, 34812, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600624);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600624, 1, 28965, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600624);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600624, 1, 6003, 2, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - (ReferenceTable)'),
(600624, 2, 6001, 90, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - (ReferenceTable)'),
(600624, 13444, 0, 0.5, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Major Mana Potion'),
(600624, 13446, 0, 1, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Major Healing Potion'),
(600624, 17057, 0, 25, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Shiny Fish Scales'),
(600624, 17058, 0, 20, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Fish Oil'),
(600624, 24280, 0, 100, 1, 1, 0, 1, 1, 'Darkcrest Taskmaster - Naga Claws'),
(600624, 24401, 0, 30, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Unidentified Plant Parts'),
(600624, 24476, 0, 15, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Jaggal Clam'),
(600624, 27858, 0, 3, 0, 1, 0, 1, 3, 'Darkcrest Taskmaster - Sunspring Carp'),
(600624, 28399, 0, 1.5, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Filtered Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600624);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600624, 22829, 0, 1.9915, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Super Healing Potion'),
(600624, 27858, 0, 9.2461, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Sunspring Carp'),
(600624, 29569, 0, 7.5391, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Strong Junkbox'),
(600624, 29576, 0, 10.0996, 0, 1, 0, 1, 1, 'Darkcrest Taskmaster - Shark Bait');

DELETE FROM `creature` WHERE (`id1` = 600624);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001168, 600624, 0, 0, 0, 0, 0, 1, 1, 1, -8405.07, -393.481, 140.28, 0.293486, 300, 4, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001175, 600624, 0, 0, 0, 0, 0, 1, 1, 1, -8471, -450.141, 140.04, 4.80737, 300, 8, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001180, 600624, 0, 0, 0, 0, 0, 1, 1, 1, -8525.65, -492.228, 140.158, 3.30212, 300, 7, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001187, 600624, 0, 0, 0, 0, 0, 1, 1, 1, -8566.54, -550.488, 146.418, 4.50718, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001191, 600624, 0, 0, 0, 0, 0, 1, 1, 1, -8591.13, -619.741, 144.688, 1.95982, 300, 8, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001196, 600624, 0, 0, 0, 0, 0, 1, 1, 1, -8622.26, -574.894, 145.433, 5.16809, 300, 5, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001201, 600624, 0, 0, 0, 0, 0, 1, 1, 1, -8652.66, -564.27, 145.37, 1.85794, 300, 7, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600624;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600624);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600624, 0, 0, 0, 0, 0, 100, 0, 4000, 4000, 4000, 7000, 0, 0, 11, 34811, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Taskmaster - In Combat - Cast \'Tail Lash\''),
(600624, 0, 1, 0, 0, 0, 100, 0, 6000, 6000, 8000, 13000, 0, 0, 11, 34812, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Taskmaster - In Combat - Cast \'Curse of Nazjatar\'');
