DELETE FROM `creature_template` WHERE (`entry` = 600609);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600609, 0, 0, 0, 0, 0, 'Dark Iron Sentry', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 1, 0.992063, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600609, 600609, 0, 0, 0, 287, 380, '', 1, 1, 30, 25, 1, 1, 0, 0, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600609);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600609, 0, 7814, 1, 1, 12340),
(600609, 1, 7815, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600609);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600609, 6, 100, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600609);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600609, 1, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600609);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600609, 1645, 0, 2.2755, 0, 1, 0, 1, 2, 'Dark Iron Sentry - Moonberry Juice'),
(600609, 1710, 0, 0.0489, 0, 1, 0, 2, 3, 'Dark Iron Sentry - Greater Healing Potion'),
(600609, 2838, 0, 0.06, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Heavy Stone'),
(600609, 3356, 0, 0.06, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Kingsblood'),
(600609, 3357, 0, 0.04, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Liferoot'),
(600609, 3395, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Recipe: Limited Invulnerability Potion'),
(600609, 3827, 0, 0.0734, 0, 1, 0, 3, 3, 'Dark Iron Sentry - Mana Potion'),
(600609, 3864, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Citrine'),
(600609, 3914, 0, 0.04, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Journeyman\'s Backpack'),
(600609, 3927, 0, 0.0245, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Fine Aged Cheddar'),
(600609, 3928, 0, 1.4681, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Superior Healing Potion'),
(600609, 4306, 0, 0.06, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Silk Cloth'),
(600609, 4338, 0, 34.1571, 0, 1, 0, 1, 3, 'Dark Iron Sentry - Mageweave Cloth'),
(600609, 4419, 0, 0.56, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Scroll of Intellect III'),
(600609, 4422, 0, 0.64, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Scroll of Stamina III'),
(600609, 4425, 0, 0.48, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Scroll of Agility III'),
(600609, 4426, 0, 0.36, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Scroll of Strength III'),
(600609, 4599, 0, 0.0979, 0, 1, 0, 1, 2, 'Dark Iron Sentry - Cured Ham Steak'),
(600609, 4601, 0, 4.4776, 0, 1, 0, 1, 2, 'Dark Iron Sentry - Soft Banana Bread'),
(600609, 4602, 0, 0.2, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Moon Harvest Pumpkin'),
(600609, 4608, 0, 0.0245, 0, 1, 0, 2, 2, 'Dark Iron Sentry - Raw Black Truffle'),
(600609, 4638, 0, 0.1468, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Reinforced Steel Lockbox'),
(600609, 6149, 0, 1.5, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Greater Mana Potion'),
(600609, 7909, 0, 0.0245, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Aquamarine'),
(600609, 7910, 0, 0.0245, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Star Ruby'),
(600609, 7912, 0, 0.06, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Solid Stone'),
(600609, 7989, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Plans: Mithril Spurs'),
(600609, 7990, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Plans: Heavy Mithril Helm'),
(600609, 7993, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Plans: Dazzling Mithril Rapier'),
(600609, 8387, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Pattern: Big Voodoo Mask'),
(600609, 9295, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Recipe: Invisibility Potion'),
(600609, 9298, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Recipe: Elixir of Giants'),
(600609, 10312, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Pattern: Red Mageweave Gloves'),
(600609, 10551, 0, 80, 1, 1, 0, 1, 1, 'Dark Iron Sentry - Thorium Plated Dagger'),
(600609, 10606, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Schematic: Parachute Cloak'),
(600609, 11818, 0, 3, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Grimesilt Outhouse Key'),
(600609, 12365, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Dense Stone'),
(600609, 12683, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Plans: Thorium Belt'),
(600609, 14470, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Pattern: Runecloth Tunic'),
(600609, 15737, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Pattern: Chimeric Boots'),
(600609, 16218, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Formula: Enchant Bracer - Superior Spirit'),
(600609, 16220, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Formula: Enchant Boots - Spirit'),
(600609, 22528, 0, 18.3019, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Dark Iron Scraps'),
(600609, 24025, 24025, 1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24027, 24027, 1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24037, 24037, 1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24039, 24039, 1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24041, 24041, 1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24043, 24043, 1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24044, 24044, 0.5, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24045, 24045, 1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24046, 24046, 0.5, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24082, 24082, 0.1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)'),
(600609, 24083, 24083, 0.1, 0, 1, 1, 1, 1, 'Dark Iron Sentry - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600609);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600609, 3927, 0, 2.809, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Fine Aged Cheddar'),
(600609, 3928, 0, 4.4944, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Superior Healing Potion'),
(600609, 4601, 0, 2.809, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Soft Banana Bread'),
(600609, 4602, 0, 6.1798, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Moon Harvest Pumpkin'),
(600609, 5432, 0, 13.4831, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Hickory Pipe'),
(600609, 7909, 0, 0.5618, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Aquamarine'),
(600609, 7910, 0, 1.1236, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Star Ruby'),
(600609, 16884, 0, 8.9888, 0, 1, 0, 1, 1, 'Dark Iron Sentry - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600609);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001065, 600609, 0, 0, 0, 0, 0, 1, 1, 0, -4848.97, -1002.89, 453.764, 3.90878, 300, 0, 0, 148962, 104225, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001066, 600609, 0, 0, 0, 0, 0, 1, 1, 0, -4852.44, -998.932, 453.765, 3.90344, 300, 0, 0, 148962, 104225, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001070, 600609, 0, 0, 0, 0, 0, 1, 1, 0, -4828.49, -1085.2, 456.683, 1.1715, 300, 0, 0, 148962, 104225, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001071, 600609, 0, 0, 0, 0, 0, 1, 1, 0, -4823.83, -1087.08, 456.683, 1.45456, 300, 0, 0, 148962, 104225, 0, 0, 0, 0, '', NULL, 0, NULL);
