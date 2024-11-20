DELETE FROM `creature_template` WHERE (`entry` = 600616);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600616, 0, 0, 0, 0, 0, 'Sandfury Blood Drinker', 'Delve', NULL, 0, 83, 83, 0, 128, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 9, 2000, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600616, 600616, 0, 0, 0, 209, 1360, 'SmartAI', 1, 1, 6, 4, 1.1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600616);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600616, 0, 6423, 1, 1, 12340),
(600616, 1, 6424, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600616);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600616, 0, 11898, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600616);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600616, 1, 4991, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600616);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600616, 1520, 0, 29.9253, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Troll Sweat'),
(600616, 1645, 0, 2.0957, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Moonberry Juice'),
(600616, 1685, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Troll-hide Bag'),
(600616, 3395, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Recipe: Limited Invulnerability Potion'),
(600616, 3831, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Recipe: Major Troll\'s Blood Elixir'),
(600616, 3832, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Recipe: Elixir of Detect Lesser Invisibility'),
(600616, 3864, 0, 0.1054, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Citrine'),
(600616, 3868, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Frost Tiger Blade'),
(600616, 3869, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Shadow Crescent Axe'),
(600616, 3873, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Golden Scale Cuirass'),
(600616, 3874, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Polished Steel Boots'),
(600616, 3914, 0, 0.14, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Journeyman\'s Backpack'),
(600616, 3928, 0, 1.2143, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Superior Healing Potion'),
(600616, 4300, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Guardian Leather Bracers'),
(600616, 4306, 0, 13.1356, 0, 1, 0, 1, 4, 'Sandfury Blood Drinker - Silk Cloth'),
(600616, 4338, 0, 16.7619, 0, 1, 0, 1, 4, 'Sandfury Blood Drinker - Mageweave Cloth'),
(600616, 4353, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Spider Belt'),
(600616, 4415, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Schematic: Craftsman\'s Monocle'),
(600616, 4416, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Schematic: Goblin Land Mine'),
(600616, 4417, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Schematic: Large Seaforium Charge'),
(600616, 4419, 0, 0.28, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Scroll of Intellect III'),
(600616, 4421, 0, 0.36, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Scroll of Protection III'),
(600616, 4422, 0, 0.26, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Scroll of Stamina III'),
(600616, 4424, 0, 0.42, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Scroll of Spirit III'),
(600616, 4599, 0, 4.5066, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Cured Ham Steak'),
(600616, 4637, 0, 0.3585, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Steel Lockbox'),
(600616, 5974, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Guardian Cloak'),
(600616, 6149, 0, 1.12, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Greater Mana Potion'),
(600616, 7084, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Crimson Silk Shoulders'),
(600616, 7085, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Azure Shoulders'),
(600616, 7086, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Earthen Silk Belt'),
(600616, 7452, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Dusky Boots'),
(600616, 7453, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Swift Boots'),
(600616, 7909, 0, 0.3097, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Aquamarine'),
(600616, 7910, 0, 0.1066, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Star Ruby'),
(600616, 7975, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Heavy Mithril Pants'),
(600616, 7976, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Mithril Shield Spike'),
(600616, 7989, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Mithril Spurs'),
(600616, 7990, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Heavy Mithril Helm'),
(600616, 7991, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Mithril Scale Shoulders'),
(600616, 7992, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Blue Glittering Axe'),
(600616, 7993, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Dazzling Mithril Rapier'),
(600616, 8029, 0, 0.13, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Plans: Wicked Mithril Blade'),
(600616, 8151, 0, 9.2617, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Flask of Mojo'),
(600616, 8385, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Turtle Scale Gloves'),
(600616, 8386, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Big Voodoo Robe'),
(600616, 8387, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Big Voodoo Mask'),
(600616, 8389, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Big Voodoo Pants'),
(600616, 8390, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Big Voodoo Cloak'),
(600616, 8623, 0, 0.8, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - OOX-17/TN Distress Beacon'),
(600616, 9242, 0, 1.7937, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Ancient Tablet'),
(600616, 9243, 0, 0.7892, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Shriveled Heart'),
(600616, 9293, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Recipe: Magic Resistance Potion'),
(600616, 9295, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Recipe: Invisibility Potion'),
(600616, 9297, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Recipe: Elixir of Dream Vision'),
(600616, 9298, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Recipe: Elixir of Giants'),
(600616, 9332, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Crusted Bandages'),
(600616, 9333, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Tarnished Silver Necklace'),
(600616, 9334, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Cracked Pottery'),
(600616, 9335, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Broken Obsidian Club'),
(600616, 9336, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Gold-capped Troll Tusk'),
(600616, 9357, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - A Parrot Skeleton'),
(600616, 9523, 0, 55, 1, 1, 0, 1, 1, 'Sandfury Blood Drinker - Troll Temper'),
(600616, 10300, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Red Mageweave Vest'),
(600616, 10301, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: White Bandit Mask'),
(600616, 10302, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Red Mageweave Pants'),
(600616, 10312, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Red Mageweave Gloves'),
(600616, 10315, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Red Mageweave Shoulders'),
(600616, 10320, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Pattern: Red Mageweave Headband'),
(600616, 10603, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Schematic: Catseye Ultra Goggles'),
(600616, 10604, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Schematic: Mithril Heavy-bore Rifle'),
(600616, 10605, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Schematic: Spellpower Goggles Xtreme'),
(600616, 10606, 0, 0.05, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Schematic: Parachute Cloak'),
(600616, 10608, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Schematic: Sniper Scope'),
(600616, 11167, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Formula: Enchant Boots - Lesser Spirit'),
(600616, 11168, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Formula: Enchant Shield - Lesser Block'),
(600616, 11202, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Formula: Enchant Shield - Stamina'),
(600616, 11204, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Formula: Enchant Bracer - Greater Spirit'),
(600616, 11208, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Formula: Enchant Weapon - Demonslaying'),
(600616, 11225, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Formula: Enchant Bracer - Greater Stamina'),
(600616, 13068, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Obsidian Greaves'),
(600616, 20976, 0, 0.08, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Design: Citrine Pendant of Golden Healing'),
(600616, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24037, 24037, 1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24039, 24039, 1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24040, 24040, 0.5, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24041, 24041, 1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24042, 24042, 0.5, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24043, 24043, 1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24044, 24044, 0.5, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24045, 24045, 1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24046, 24046, 0.5, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24080, 24080, 0.1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24081, 24081, 0.1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24082, 24082, 0.1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)'),
(600616, 24083, 24083, 0.1, 0, 1, 1, 1, 1, 'Sandfury Blood Drinker - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600616);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600616, 3928, 0, 2.7719, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Superior Healing Potion'),
(600616, 4599, 0, 3.9979, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Cured Ham Steak'),
(600616, 4601, 0, 3.5181, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Soft Banana Bread'),
(600616, 5428, 0, 10.0213, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - An Exotic Cookbook'),
(600616, 7909, 0, 0.3198, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Aquamarine'),
(600616, 7910, 0, 0.2132, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Star Ruby'),
(600616, 16884, 0, 7.9957, 0, 1, 0, 1, 1, 'Sandfury Blood Drinker - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600616);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001090, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -13030.3, -1304.7, 45.122, 5.78549, 300, 10, 0, 38260, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001114, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -13016.4, -1543.03, 61.7491, 1.98141, 300, 0, 0, 38260, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001117, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -13046, -1451.25, 58.0254, 0.398049, 300, 4, 0, 38260, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001118, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -12960.5, -1371.25, 70.6544, 5.22188, 300, 4, 0, 38260, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001119, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -12941, -1384.8, 87.969, 5.56636, 300, 5, 0, 38260, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001123, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -12901.4, -1420.01, 107.464, 1.43933, 300, 6, 0, 38260, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001126, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -12864.1, -1400.16, 114.801, 2.93889, 300, 0, 0, 38260, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001127, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -12868.7, -1392.76, 114.484, 3.66389, 300, 0, 0, 38260, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001141, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -12742.8, -1485.68, 130.013, 2.86813, 300, 0, 0, 38260, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001146, 600616, 0, 0, 0, 0, 0, 1, 1, 1, -12987.5, -1315.92, 43.9582, 2.26164, 300, 10, 0, 38260, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600616;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600616);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600616, 0, 0, 0, 0, 0, 100, 0, 3000, 7000, 5000, 10000, 0, 0, 11, 11898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Blood Drinker - In Combat - Cast \'Blood Leech\''),
(600616, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Blood Drinker - Between 0-15% Health - Flee For Assist (No Repeat)');
