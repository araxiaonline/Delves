DELETE FROM `creature_template` WHERE (`entry` = 600600);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600600, 0, 0, 0, 0, 0, 'Dark Iron Taskmaster', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 1, 0.992063, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600600, 600600, 0, 0, 0, 78, 536, 'SmartAI', 0, 1, 25, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600600);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600600, 0, 7798, 1, 1, 12340),
(600600, 1, 7799, 1, 1, 12340),
(600600, 2, 7800, 1, 1, 12340),
(600600, 3, 7801, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600600);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600600, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600600);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600600, 0, 5115, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600600);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600600, 1, 5278, 5278, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600600);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600600, 1645, 0, 2.4078, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Moonberry Juice'),
(600600, 1708, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Sweet Nectar'),
(600600, 3927, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Fine Aged Cheddar'),
(600600, 4306, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Silk Cloth'),
(600600, 4338, 0, 34.6231, 0, 1, 0, 1, 3, 'Dark Iron Taskmaster - Mageweave Cloth'),
(600600, 4539, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Goldenbark Apple'),
(600600, 4599, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Cured Ham Steak'),
(600600, 4601, 0, 4.6961, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Soft Banana Bread'),
(600600, 4602, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Moon Harvest Pumpkin'),
(600600, 4608, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Raw Black Truffle'),
(600600, 4638, 0, 0.0772, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Reinforced Steel Lockbox'),
(600600, 10551, 0, 80, 1, 1, 0, 1, 1, 'Dark Iron Taskmaster - Thorium Plated Dagger'),
(600600, 10575, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Black Dragonflight Molt'),
(600600, 21547, 0, 1, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Recipe: Elixir of Greater Firepower'),
(600600, 22528, 0, 18.3536, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Dark Iron Scraps');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600600);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600600, 3927, 0, 2.1357, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Fine Aged Cheddar'),
(600600, 3928, 0, 2.9523, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Superior Healing Potion'),
(600600, 4601, 0, 3.4548, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Soft Banana Bread'),
(600600, 4602, 0, 2.9523, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Moon Harvest Pumpkin'),
(600600, 5432, 0, 10.9296, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Hickory Pipe'),
(600600, 7909, 0, 0.2513, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Aquamarine'),
(600600, 7910, 0, 0.8166, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Star Ruby'),
(600600, 16884, 0, 10.4899, 0, 1, 0, 1, 1, 'Dark Iron Taskmaster - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600600);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001038, 600600, 0, 0, 0, 0, 0, 1, 1, 1, -4802.44, -974.901, 399.042, 0.427592, 300, 0, 0, 155155, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001043, 600600, 0, 0, 0, 0, 0, 1, 1, 1, -4840.18, -974.105, 424.692, 3.63271, 300, 2, 0, 155155, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001044, 600600, 0, 0, 0, 0, 0, 1, 1, 1, -4846.84, -972.824, 424.251, 3.91577, 300, 2, 0, 155155, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001049, 600600, 0, 0, 0, 0, 0, 1, 1, 1, -4834.51, -985.026, 442.587, 5.45774, 300, 0, 0, 155155, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001073, 600600, 0, 0, 0, 0, 0, 1, 1, 1, -4848.95, -1089.27, 464.368, 0.364896, 300, 3, 0, 155155, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001076, 600600, 0, 0, 0, 0, 0, 1, 1, 1, -4865.45, -1088.67, 471.388, 0.0858437, 300, 4, 0, 155155, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001079, 600600, 0, 0, 0, 0, 0, 1, 1, 1, -4870.2, -1079.4, 484.238, 3.04577, 300, 4, 0, 155155, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600600;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600600);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600600, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 10000, 15000, 0, 0, 11, 5115, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Taskmaster - In Combat - Cast \'Battle Command\''),
(600600, 0, 1, 0, 6, 0, 100, 513, 0, 0, 0, 0, 0, 0, 11, 12613, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Taskmaster - On Just Died - Cast \'Dark Iron Taskmaster Death\' (No Repeat)');
