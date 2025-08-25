DELETE FROM `creature_template` WHERE (`entry` = 600672);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600672, 0, 0, 0, 0, 0, 'Rugoldt The Corrupt', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1, 2.14286, 1, 1, 20, 1, 3, 0, 36.28, 1000, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600672, 0, 0, 0, 0, 553, 727, 'SmartAI', 1, 1, 110, 2, 1.3, 1, 0, 0, 1, 613105499, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600672);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600672, 0, 10543, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600672);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600672, 2, 50, 12340),
(600672, 5, 50, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600672);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600672, 0, 8255, 12340),
(600672, 1, 13459, 12340),
(600672, 2, 12745, 12340),
(600672, 3, 8269, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600672);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600672, 4500, 0, 0.1, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Traveler\'s Backpack'),
(600672, 5759, 0, 0.56, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Thorium Lockbox'),
(600672, 7909, 0, 0.8403, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Aquamarine'),
(600672, 8766, 0, 1.6807, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Morning Glory Dew'),
(600672, 8948, 0, 4.2017, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Dried King Bolete'),
(600672, 10305, 0, 0.56, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Scroll of Protection IV'),
(600672, 10306, 0, 0.1, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Scroll of Spirit IV'),
(600672, 10308, 0, 0.28, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Scroll of Intellect IV'),
(600672, 10309, 0, 0.1, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Scroll of Agility IV'),
(600672, 10593, 0, 3, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Imperfect Draenethyst Fragment'),
(600672, 10759, 0, 100, 1, 1, 0, 1, 1, 'Razelikh the Defiler - Severed Horn of the Defiler'),
(600672, 12662, 0, 13.4454, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Demonic Rune'),
(600672, 13444, 0, 0.1, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Major Mana Potion'),
(600672, 13446, 0, 0.84, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Major Healing Potion'),
(600672, 14047, 0, 18.4874, 0, 1, 0, 2, 4, 'Razelikh the Defiler - Runecloth'),
(600672, 14256, 0, 3.3613, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Felcloth'),
(600672, 14492, 0, 0.56, 0, 1, 0, 1, 1, 'Razelikh the Defiler - Pattern: Felcloth Boots'),
(600672, 24016, 24016, 1, 0, 1, 1, 1, 1, 'Razelikh the Defiler - (ReferenceTable)'),
(600672, 24017, 24017, 0.5, 0, 1, 1, 1, 1, 'Razelikh the Defiler - (ReferenceTable)'),
(600672, 24018, 24018, 1, 0, 1, 1, 1, 1, 'Razelikh the Defiler - (ReferenceTable)'),
(600672, 24024, 24024, 5, 0, 1, 1, 1, 1, 'Razelikh the Defiler - (ReferenceTable)'),
(600672, 24033, 24033, 1, 0, 1, 1, 1, 1, 'Razelikh the Defiler - (ReferenceTable)'),
(600672, 24034, 24034, 0.5, 0, 1, 1, 1, 1, 'Razelikh the Defiler - (ReferenceTable)'),
(600672, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Razelikh the Defiler - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600672);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001473, 600672, 0, 0, 911, 0, 0, 1, 1, 0, -12049.4, -2580.74, -27.1813, 6.01399, 300, 0, 0, 655270, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600672;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600672);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600672, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 16000, 22000, 0, 0, 11, 8255, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rugoldt The Corrupt - In Combat - Cast \'Strong Cleave\''),
(600672, 0, 1, 0, 0, 0, 100, 0, 11000, 15000, 12000, 17000, 0, 0, 11, 12745, 257, 0, 0, 0, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 'Rugoldt The Corrupt - In Combat - Cast \'Mana Burn\''),
(600672, 0, 2, 0, 0, 0, 100, 0, 3000, 5000, 13000, 24000, 0, 0, 11, 13459, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rugoldt The Corrupt - In Combat - Cast \'Decimate\''),
(600672, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10864, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rugoldt The Corrupt - Between 0-75% Health - Cast \'Razelikh`s Tear I\' (No Repeat)'),
(600672, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10854, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rugoldt The Corrupt - Between 0-50% Health - Cast \'Flames of Chaos\' (No Repeat)'),
(600672, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10866, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rugoldt The Corrupt - Between 0-25% Health - Cast \'Razelikh`s Tear II\' (No Repeat)'),
(600672, 0, 9, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 11, 8269, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rugoldt The Corrupt - Between 0-15% Health - Cast \'Frenzy\' (No Repeat)');
