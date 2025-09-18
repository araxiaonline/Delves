DELETE FROM `creature_template` WHERE (`entry` = 600625);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600625, 0, 0, 0, 0, 0, 'Darkcrest Siren', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 3.2, 1.71429, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600625, 600625, 0, 0, 0, 145, 195, 'SmartAI', 1, 1, 25, 10, 0.97, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600625);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600625, 0, 17952, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600625);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600625, 0, 9672, 12340),
(600625, 1, 11831, 12340),
(600625, 2, 34787, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600625);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600625, 1, 18122, 6618, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600625);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600625, 1, 6001, 90, 0, 1, 0, 1, 1, 'Darkcrest Siren - (ReferenceTable)'),
(600625, 13444, 0, 0.5, 0, 1, 0, 1, 1, 'Darkcrest Siren - Major Mana Potion'),
(600625, 13446, 0, 1, 0, 1, 0, 1, 1, 'Darkcrest Siren - Major Healing Potion'),
(600625, 17057, 0, 25, 0, 1, 0, 1, 1, 'Darkcrest Siren - Shiny Fish Scales'),
(600625, 17058, 0, 20, 0, 1, 0, 1, 1, 'Darkcrest Siren - Fish Oil'),
(600625, 24280, 0, 100, 1, 1, 0, 1, 1, 'Darkcrest Siren - Naga Claws'),
(600625, 24401, 0, 30, 0, 1, 0, 1, 1, 'Darkcrest Siren - Unidentified Plant Parts'),
(600625, 24476, 0, 15, 0, 1, 0, 1, 1, 'Darkcrest Siren - Jaggal Clam'),
(600625, 27858, 0, 3, 0, 1, 0, 1, 3, 'Darkcrest Siren - Sunspring Carp'),
(600625, 28399, 0, 1.5, 0, 1, 0, 1, 1, 'Darkcrest Siren - Filtered Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600625);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600625, 21929, 0, 0.2381, 0, 1, 0, 1, 1, 'Darkcrest Siren - Flame Spessarite'),
(600625, 22829, 0, 3.5714, 0, 1, 0, 1, 1, 'Darkcrest Siren - Super Healing Potion'),
(600625, 27858, 0, 8.8095, 0, 1, 0, 1, 1, 'Darkcrest Siren - Sunspring Carp'),
(600625, 29569, 0, 12.381, 0, 1, 0, 1, 1, 'Darkcrest Siren - Strong Junkbox'),
(600625, 29576, 0, 11.6667, 0, 1, 0, 1, 1, 'Darkcrest Siren - Shark Bait');

DELETE FROM `creature` WHERE (`id1` = 600625);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001156, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8370.48, -372.574, 145.368, 4.42438, 300, 7, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001174, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8470.66, -433.585, 140.039, 4.1785, 300, 6, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001183, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8545.94, -516.417, 144.617, 1.81963, 300, 12, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001197, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8641.32, -584.835, 144.688, 3.07987, 300, 8, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001207, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8681.55, -497.089, 152.448, 3.86747, 300, 7, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600625;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600625);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600625, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Siren - In Combat - Cast \'Frostbolt\''),
(600625, 0, 1, 0, 106, 0, 100, 0, 7000, 10000, 14000, 18000, 0, 10, 11, 11831, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Siren - On Hostile in Range - Cast \'Frost Nova\''),
(600625, 0, 2, 0, 0, 0, 100, 0, 5000, 7000, 12000, 17000, 0, 0, 11, 6726, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Siren - In Combat - Cast \'Silence\''),
(600625, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Siren - Between 0-15% Health - Flee For Assist (No Repeat)');
