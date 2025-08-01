DELETE FROM `creature_template` WHERE (`entry` = 600678);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600678, 0, 0, 0, 0, 0, 'Rockjaw Brawler', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 35, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600678, 600678, 0, 0, 0, 61, 404, 'SmartAI', 0, 1, 90, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600678);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600678, 0, 11166, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600678);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600678, 0, 3391, 12340),
(600678, 1, 8599, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600678);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600678, 1210, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Shadowgem'),
(600678, 1529, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Jade'),
(600678, 1645, 0, 2.5045, 0, 1, 0, 1, 1, 'Stonevault Brawler - Moonberry Juice'),
(600678, 1685, 0, 0.0347, 0, 1, 0, 1, 1, 'Stonevault Brawler - Troll-hide Bag'),
(600678, 1707, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Stormwind Brie'),
(600678, 2838, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Heavy Stone'),
(600678, 3395, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Recipe: Limited Invulnerability Potion'),
(600678, 3771, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Wild Hog Shank'),
(600678, 3831, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Recipe: Major Troll\'s Blood Elixir'),
(600678, 3832, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Recipe: Elixir of Detect Lesser Invisibility'),
(600678, 3864, 0, 0.1537, 0, 1, 0, 1, 1, 'Stonevault Brawler - Citrine'),
(600678, 3868, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Frost Tiger Blade'),
(600678, 3869, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Shadow Crescent Axe'),
(600678, 3873, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Golden Scale Cuirass'),
(600678, 3874, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Polished Steel Boots'),
(600678, 3914, 0, 0.16, 0, 1, 0, 1, 1, 'Stonevault Brawler - Journeyman\'s Backpack'),
(600678, 3928, 0, 1.4878, 0, 1, 0, 1, 1, 'Stonevault Brawler - Superior Healing Potion'),
(600678, 4300, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Guardian Leather Bracers'),
(600678, 4306, 0, 14.6846, 0, 1, 0, 1, 4, 'Stonevault Brawler - Silk Cloth'),
(600678, 4338, 0, 18.3297, 0, 1, 0, 1, 4, 'Stonevault Brawler - Mageweave Cloth'),
(600678, 4353, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Spider Belt'),
(600678, 4375, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Whirring Bronze Gizmo'),
(600678, 4416, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Schematic: Goblin Land Mine'),
(600678, 4417, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Schematic: Large Seaforium Charge'),
(600678, 4419, 0, 0.28, 0, 1, 0, 1, 1, 'Stonevault Brawler - Scroll of Intellect III'),
(600678, 4421, 0, 0.48, 0, 1, 0, 1, 1, 'Stonevault Brawler - Scroll of Protection III'),
(600678, 4422, 0, 0.36, 0, 1, 0, 1, 1, 'Stonevault Brawler - Scroll of Stamina III'),
(600678, 4424, 0, 0.48, 0, 1, 0, 1, 1, 'Stonevault Brawler - Scroll of Spirit III'),
(600678, 4539, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Goldenbark Apple'),
(600678, 4544, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Mulgore Spice Bread'),
(600678, 4599, 0, 5.3362, 0, 1, 0, 1, 1, 'Stonevault Brawler - Cured Ham Steak'),
(600678, 4637, 0, 0.4315, 0, 1, 0, 1, 1, 'Stonevault Brawler - Steel Lockbox'),
(600678, 5974, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Guardian Cloak'),
(600678, 6149, 0, 1.36, 0, 1, 0, 1, 1, 'Stonevault Brawler - Greater Mana Potion'),
(600678, 7084, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Crimson Silk Shoulders'),
(600678, 7085, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Azure Shoulders'),
(600678, 7086, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Earthen Silk Belt'),
(600678, 7453, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Swift Boots'),
(600678, 7909, 0, 0.4364, 0, 1, 0, 1, 1, 'Stonevault Brawler - Aquamarine'),
(600678, 7910, 0, 0.1785, 0, 1, 0, 1, 1, 'Stonevault Brawler - Star Ruby'),
(600678, 7912, 0, 0.08, 0, 1, 0, 1, 1, 'Stonevault Brawler - Solid Stone'),
(600678, 7975, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Heavy Mithril Pants'),
(600678, 7976, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Mithril Shield Spike'),
(600678, 7989, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Mithril Spurs'),
(600678, 7990, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Heavy Mithril Helm'),
(600678, 7992, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Blue Glittering Axe'),
(600678, 7993, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Dazzling Mithril Rapier'),
(600678, 8029, 0, 0.18, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Wicked Mithril Blade'),
(600678, 8364, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Mithril Head Trout'),
(600678, 8385, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Turtle Scale Gloves'),
(600678, 8386, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Big Voodoo Robe'),
(600678, 8387, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Big Voodoo Mask'),
(600678, 8389, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Big Voodoo Pants'),
(600678, 8390, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Big Voodoo Cloak'),
(600678, 9293, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Recipe: Magic Resistance Potion'),
(600678, 9295, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Recipe: Invisibility Potion'),
(600678, 9298, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Recipe: Elixir of Giants'),
(600678, 9381, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Earthen Rod'),
(600678, 9383, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Obsidian Cleaver'),
(600678, 9384, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Stonevault Shiv'),
(600678, 9386, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Excavator\'s Brand'),
(600678, 9391, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - The Shoveler'),
(600678, 9392, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Annealed Blade'),
(600678, 9393, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Beacon of Hope'),
(600678, 9396, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Legguards of the Vault'),
(600678, 9397, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Energy Cloak'),
(600678, 9406, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Spirewind Fetter'),
(600678, 9420, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Adventurer\'s Pith Helmet'),
(600678, 9422, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Shadowforge Bushmaster'),
(600678, 9423, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - The Jackhammer'),
(600678, 9424, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Ginn-su Sword'),
(600678, 9425, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pendulum of Doom'),
(600678, 9426, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Monolithic Bow'),
(600678, 9427, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Stonevault Bonebreaker'),
(600678, 9428, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Unearthed Bands'),
(600678, 9429, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Miner\'s Hat of the Deep'),
(600678, 9430, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Spaulders of a Lost Age'),
(600678, 9431, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Papal Fez'),
(600678, 9432, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Skullplate Bracers'),
(600678, 9465, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Digmaster 5000'),
(600678, 10300, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Red Mageweave Vest'),
(600678, 10301, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: White Bandit Mask'),
(600678, 10302, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Red Mageweave Pants'),
(600678, 10312, 0, 0.06, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Red Mageweave Gloves'),
(600678, 10315, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Red Mageweave Shoulders'),
(600678, 10320, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Pattern: Red Mageweave Headband'),
(600678, 10603, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Schematic: Catseye Ultra Goggles'),
(600678, 10604, 0, 0.06, 0, 1, 0, 1, 1, 'Stonevault Brawler - Schematic: Mithril Heavy-bore Rifle'),
(600678, 10605, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Schematic: Spellpower Goggles Xtreme'),
(600678, 10606, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Schematic: Parachute Cloak'),
(600678, 11167, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Formula: Enchant Boots - Lesser Spirit'),
(600678, 11202, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Formula: Enchant Shield - Stamina'),
(600678, 11204, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Brawler - Formula: Enchant Bracer - Greater Spirit'),
(600678, 11208, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Formula: Enchant Weapon - Demonslaying'),
(600678, 11225, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Formula: Enchant Bracer - Greater Stamina'),
(600678, 12261, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Brawler - Plans: Searing Golden Blade'),
(600678, 20976, 0, 0.09, 0, 1, 0, 1, 1, 'Stonevault Brawler - Design: Citrine Pendant of Golden Healing'),
(600678, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24037, 24037, 1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24039, 24039, 1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24041, 24041, 1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24043, 24043, 1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24045, 24045, 1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24079, 24079, 0.1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24080, 24080, 0.1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24081, 24081, 0.1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)'),
(600678, 24082, 24082, 0.1, 0, 1, 1, 1, 1, 'Stonevault Brawler - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600678);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600678, 3928, 0, 2.3256, 0, 1, 0, 1, 1, 'Stonevault Brawler - Superior Healing Potion'),
(600678, 4599, 0, 8.1395, 0, 1, 0, 1, 1, 'Stonevault Brawler - Cured Ham Steak'),
(600678, 5430, 0, 9.6899, 0, 1, 0, 1, 1, 'Stonevault Brawler - Intricate Bauble'),
(600678, 7909, 0, 0.3876, 0, 1, 0, 1, 1, 'Stonevault Brawler - Aquamarine'),
(600678, 16884, 0, 10.0775, 0, 1, 0, 1, 1, 'Stonevault Brawler - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600678);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001540, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5764.57, 881.352, 481.305, 2.93468, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001541, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5830.35, 879.562, 485.737, 3.88399, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001542, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5900.64, 883.301, 485.761, 3.75582, 300, 8, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001543, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5878.34, 841.708, 485.761, 4.42992, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001544, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5882.02, 783.908, 485.761, 4.47398, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001545, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5847.88, 766.018, 485.765, 5.97606, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001556, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5888.24, 686.586, 485.77, 4.19776, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001557, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5981.7, 669.751, 481.603, 5.66763, 300, 3, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001563, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5894.49, 625.083, 502.944, 5.23755, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001564, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5924.65, 611.99, 502.627, 4.01986, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001573, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5909.9, 516.51, 505.417, 3.96079, 300, 6, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001577, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5930.88, 453.534, 508.902, 2.55603, 300, 0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001578, 600678, 0, 0, 0, 0, 0, 1, 1, 0, -5941.22, 456.485, 508.292, 5.97675, 300, 0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600678;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600678);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600678, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Brawler - On Reset - Cast \'Thrash\''),
(600678, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Brawler - Between 0-30% Health - Cast \'Enrage\' (No Repeat)');
