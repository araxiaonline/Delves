DELETE FROM `creature_template` WHERE (`entry` = 600605);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600605, 0, 0, 0, 0, 0, 'Dark Iron Raider', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 3.2, 1.71429, 1, 1, 20, 1, 1, 0, 35.1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600605, 0, 0, 0, 0, 16, 25, 'SmartAI', 0, 1, 30, 10, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600605);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600605, 0, 3451, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600605);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600605, 6, 100, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600605);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600605, 1, 1900, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600605);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600605, 774, 0, 0.2, 0, 1, 0, 1, 1, 'Dark Iron Raider - Malachite'),
(600605, 818, 0, 0.6, 0, 1, 0, 1, 1, 'Dark Iron Raider - Tigerseye'),
(600605, 856, 0, 0.75, 0, 1, 0, 1, 1, 'Dark Iron Raider - Blue Leather Bag'),
(600605, 858, 0, 1.5299, 0, 1, 0, 1, 1, 'Dark Iron Raider - Lesser Healing Potion'),
(600605, 955, 0, 0.36, 0, 1, 0, 1, 1, 'Dark Iron Raider - Scroll of Intellect'),
(600605, 1179, 0, 2.3644, 0, 1, 0, 1, 1, 'Dark Iron Raider - Ice Cold Milk'),
(600605, 1180, 0, 0.32, 0, 1, 0, 1, 1, 'Dark Iron Raider - Scroll of Stamina'),
(600605, 1181, 0, 0.54, 0, 1, 0, 1, 1, 'Dark Iron Raider - Scroll of Spirit'),
(600605, 1210, 0, 0.2, 0, 1, 0, 1, 1, 'Dark Iron Raider - Shadowgem'),
(600605, 2406, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Pattern: Fine Leather Boots'),
(600605, 2408, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Pattern: Fine Leather Gloves'),
(600605, 2447, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Peacebloom'),
(600605, 2455, 0, 0.2782, 0, 1, 0, 1, 1, 'Dark Iron Raider - Minor Mana Potion'),
(600605, 2555, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Recipe: Swiftness Potion'),
(600605, 2589, 0, 38.3866, 0, 1, 0, 1, 3, 'Dark Iron Raider - Linen Cloth'),
(600605, 2598, 0, 0.04, 0, 1, 0, 1, 1, 'Dark Iron Raider - Pattern: Red Linen Robe'),
(600605, 2657, 0, 0.06, 0, 1, 0, 1, 1, 'Dark Iron Raider - Red Leather Bag'),
(600605, 2700, 0, 0.18, 0, 1, 0, 1, 1, 'Dark Iron Raider - Recipe: Succulent Pork Ribs'),
(600605, 2835, 0, 0.16, 0, 1, 0, 1, 1, 'Dark Iron Raider - Rough Stone'),
(600605, 2971, 0, 0.1391, 0, 1, 0, 1, 1, 'Dark Iron Raider - Spellbinder Boots'),
(600605, 2972, 0, 0.14, 0, 1, 0, 1, 1, 'Dark Iron Raider - Spellbinder Gloves'),
(600605, 2975, 0, 0.2, 0, 1, 0, 1, 1, 'Dark Iron Raider - Hunting Boots'),
(600605, 2979, 0, 0.2, 0, 1, 0, 1, 1, 'Dark Iron Raider - Veteran Boots'),
(600605, 3013, 0, 0.5, 0, 1, 0, 1, 1, 'Dark Iron Raider - Scroll of Protection'),
(600605, 3207, 0, 0.2782, 0, 1, 0, 1, 1, 'Dark Iron Raider - Hunting Bracers'),
(600605, 3213, 0, 0.08, 0, 1, 0, 1, 1, 'Dark Iron Raider - Veteran Bracers'),
(600605, 3609, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Plans: Copper Chain Vest'),
(600605, 3643, 0, 0.1391, 0, 1, 0, 1, 1, 'Dark Iron Raider - Spellbinder Bracers'),
(600605, 4346, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Pattern: Heavy Woolen Cloak'),
(600605, 4408, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Schematic: Mechanical Squirrel Box'),
(600605, 4541, 0, 4.3115, 0, 1, 0, 1, 1, 'Dark Iron Raider - Freshly Baked Bread'),
(600605, 4678, 0, 0.1391, 0, 1, 0, 1, 1, 'Dark Iron Raider - Veteran Girdle'),
(600605, 4683, 0, 0.1391, 0, 1, 0, 1, 1, 'Dark Iron Raider - Spellbinder Cloak'),
(600605, 4684, 0, 0.1391, 0, 1, 0, 1, 1, 'Dark Iron Raider - Spellbinder Belt'),
(600605, 4689, 0, 0.1391, 0, 1, 0, 1, 1, 'Dark Iron Raider - Hunting Cloak'),
(600605, 4690, 0, 0.1391, 0, 1, 0, 1, 1, 'Dark Iron Raider - Hunting Belt'),
(600605, 5573, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Green Leather Bag'),
(600605, 5574, 0, 0.1391, 0, 1, 0, 1, 1, 'Dark Iron Raider - White Leather Bag'),
(600605, 6271, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Pattern: Red Linen Vest'),
(600605, 6342, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Formula: Enchant Chest - Minor Mana'),
(600605, 6347, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Formula: Enchant Bracer - Minor Strength'),
(600605, 6348, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Raider - Formula: Enchant Weapon - Minor Beastslayer'),
(600605, 6549, 0, 0.24, 0, 1, 0, 1, 1, 'Dark Iron Raider - Soldier\'s Cloak'),
(600605, 6555, 0, 0.38, 0, 1, 0, 1, 1, 'Dark Iron Raider - Bard\'s Cloak'),
(600605, 6716, 0, 0.04, 0, 1, 0, 1, 1, 'Dark Iron Raider - Schematic: EZ-Thro Dynamite'),
(600605, 7288, 0, 0.1, 0, 1, 0, 1, 1, 'Dark Iron Raider - Pattern: Rugged Leather Pants'),
(600605, 9746, 0, 0.14, 0, 1, 0, 1, 1, 'Dark Iron Raider - Simple Gloves'),
(600605, 9755, 0, 0.24, 0, 1, 0, 1, 1, 'Dark Iron Raider - Gypsy Gloves'),
(600605, 9759, 0, 0.14, 0, 1, 0, 1, 1, 'Dark Iron Raider - Cadet Boots'),
(600605, 9762, 0, 0.12, 0, 1, 0, 1, 1, 'Dark Iron Raider - Cadet Gauntlets'),
(600605, 24071, 24071, 5, 0, 1, 1, 1, 1, 'Dark Iron Raider - (ReferenceTable)'),
(600605, 24075, 24075, 1, 0, 1, 1, 1, 1, 'Dark Iron Raider - (ReferenceTable)'),
(600605, 24076, 24076, 1, 0, 1, 1, 1, 1, 'Dark Iron Raider - (ReferenceTable)'),
(600605, 24077, 24077, 1, 0, 1, 1, 1, 1, 'Dark Iron Raider - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600605);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001035, 600605, 0, 0, 0, 0, 0, 1, 1, 1, -4807.83, -971.443, 399.042, 5.52664, 300, 5, 0, 186186, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001045, 600605, 0, 0, 0, 0, 0, 1, 1, 1, -4817.17, -959.947, 430.401, 1.71139, 300, 2, 0, 186186, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001046, 600605, 0, 0, 0, 0, 0, 1, 1, 1, -4822.07, -955.269, 430.245, 3.81296, 300, 2, 0, 186186, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001050, 600605, 0, 0, 0, 0, 0, 1, 1, 1, -4810.95, -989.483, 439.066, 0.669955, 300, 1, 0, 186186, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001051, 600605, 0, 0, 0, 0, 0, 1, 1, 1, -4807.93, -988.993, 438.575, 1.02778, 300, 3, 0, 186186, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001061, 600605, 0, 0, 0, 0, 0, 1, 1, 1, -4846.17, -1011.1, 453.765, 5.40685, 300, 0, 0, 186186, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001062, 600605, 0, 0, 0, 0, 0, 1, 1, 1, -4850.32, -1014.2, 453.765, 5.21859, 300, 0, 0, 186186, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600605;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600605);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600605, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 19, 1379, 30, 0, 0, 0, 0, 0, 0, 'Dark Iron Raider - On Respawn - Start Attacking');
