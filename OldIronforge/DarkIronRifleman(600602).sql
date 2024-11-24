DELETE FROM `creature_template` WHERE (`entry` = 600602);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600602, 0, 0, 0, 0, 0, 'Dark Iron Rifleman', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600602, 600602, 0, 0, 0, 94, 357, 'SmartAI', 1, 1, 6.5, 5, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600602);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600602, 0, 825, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600602);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600602, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600602);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600602, 0, 7891, 12340),
(600602, 1, 8996, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600602);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600602, 1, 1909, 0, 2552, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600602);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600602, 1, 1002630, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 26-30'),
(600602, 2, 1022728, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 27-28'),
(600602, 3, 1032728, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 27-28'),
(600602, 4, 1052130, 0.5, 0, 1, 0, 1, 1, 'World Drop - 10 Slot Bag - NPC Levels: 21-30'),
(600602, 5, 1062029, 3, 0, 1, 0, 1, 1, 'World Drop - Potions II - NPC Levels 20-29'),
(600602, 6, 1071930, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls II - NPC Levels 19-30'),
(600602, 7, 1080003, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~25'),
(600602, 9, 1080018, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 28-30'),
(600602, 1205, 0, 2.651, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Melon Juice'),
(600602, 2592, 0, 8.6892, 0, 1, 0, 1, 3, 'Dark Iron Rifleman - Wool Cloth'),
(600602, 4306, 0, 22.975, 0, 1, 0, 1, 3, 'Dark Iron Rifleman - Silk Cloth'),
(600602, 4542, 0, 4.5655, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Moist Cornbread'),
(600602, 4633, 0, 0.2209, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Heavy Bronze Lockbox'),
(600602, 6315, 0, 3, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Steelarrow Crossbow');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600602);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600602, 422, 0, 15.7895, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Dwarven Mild'),
(600602, 1705, 0, 5.2632, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Lesser Moonstone'),
(600602, 4538, 0, 5.2632, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Snapvine Watermelon'),
(600602, 5374, 0, 5.2632, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Small Pocket Watch'),
(600602, 16882, 0, 21.0526, 0, 1, 0, 1, 1, 'Dark Iron Rifleman - Battered Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600602);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001037, 600602, 0, 0, 0, 0, 0, 1, 1, 1, -4813.68, -984.533, 399.042, 0.960329, 300, 8, 0, 32275, 20845, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001048, 600602, 0, 0, 0, 0, 0, 1, 1, 1, -4809.69, -962.732, 429.907, 2.52051, 300, 3, 0, 32275, 20845, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001053, 600602, 0, 0, 0, 0, 0, 1, 1, 1, -4817.85, -991.531, 439.936, 0.10918, 300, 2, 0, 32275, 20845, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001060, 600602, 0, 0, 0, 0, 0, 1, 1, 1, -4835.99, -1029.13, 447.431, 1.29866, 300, 0, 0, 32275, 20845, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001063, 600602, 0, 0, 0, 0, 0, 1, 1, 1, -4864.62, -995.947, 453.764, 5.26398, 300, 0, 0, 32275, 20845, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600602;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600602);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600602, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2300, 5000, 0, 0, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Rifleman - In Combat - Cast \'Shoot\''),
(600602, 0, 2, 0, 0, 0, 100, 512, 16100, 16100, 20100, 32200, 0, 0, 11, 7891, 3, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Rifleman - In Combat - Cast \'Gift of Ragnaros\''),
(600602, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Rifleman - Between 0-15% Health - Flee For Assist (No Repeat)');
