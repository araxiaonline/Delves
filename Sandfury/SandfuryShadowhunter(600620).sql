DELETE FROM `creature_template` WHERE (`entry` = 600620);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600620, 0, 0, 0, 0, 0, 'Sandfury Shadowhunter', 'Delve Boss', NULL, 0, 83, 83, 0, 128, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 6.4, 2000, 2000, 1, 1, 2, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600620, 600620, 0, 0, 0, 208, 1318, 'SmartAI', 1, 1, 8.2, 8, 1.1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600620);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600620, 0, 6425, 1, 1, 12340),
(600620, 1, 6426, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600620);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600620, 0, 15547, 12340),
(600620, 1, 11641, 12340),
(600620, 2, 18395, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600620);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600620, 1, 2179, 0, 5258, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600620);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600620, 1520, 0, 30.4015, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Troll Sweat'),
(600620, 1645, 0, 2.2463, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Moonberry Juice'),
(600620, 1685, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Troll-hide Bag'),
(600620, 2289, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Scroll of Strength II'),
(600620, 3395, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Recipe: Limited Invulnerability Potion'),
(600620, 3831, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Recipe: Major Troll\'s Blood Elixir'),
(600620, 3832, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Recipe: Elixir of Detect Lesser Invisibility'),
(600620, 3864, 0, 0.0619, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Citrine'),
(600620, 3868, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Frost Tiger Blade'),
(600620, 3869, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Shadow Crescent Axe'),
(600620, 3873, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Golden Scale Cuirass'),
(600620, 3874, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Polished Steel Boots'),
(600620, 3914, 0, 0.1, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Journeyman\'s Backpack'),
(600620, 3928, 0, 1.198, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Superior Healing Potion'),
(600620, 4300, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Guardian Leather Bracers'),
(600620, 4301, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Barbaric Belt'),
(600620, 4306, 0, 13.1641, 0, 1, 0, 1, 4, 'Sandfury Shadowhunter - Silk Cloth'),
(600620, 4338, 0, 16.9419, 0, 1, 0, 1, 4, 'Sandfury Shadowhunter - Mageweave Cloth'),
(600620, 4353, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Spider Belt'),
(600620, 4416, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Schematic: Goblin Land Mine'),
(600620, 4417, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Schematic: Large Seaforium Charge'),
(600620, 4419, 0, 0.26, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Scroll of Intellect III'),
(600620, 4421, 0, 0.38, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Scroll of Protection III'),
(600620, 4422, 0, 0.28, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Scroll of Stamina III'),
(600620, 4424, 0, 0.38, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Scroll of Spirit III'),
(600620, 4599, 0, 4.5085, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Cured Ham Steak'),
(600620, 4637, 0, 0.1877, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Steel Lockbox'),
(600620, 4638, 0, 0.2336, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Reinforced Steel Lockbox'),
(600620, 5974, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Guardian Cloak'),
(600620, 6149, 0, 1.16, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Greater Mana Potion'),
(600620, 7084, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Crimson Silk Shoulders'),
(600620, 7085, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Azure Shoulders'),
(600620, 7086, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Earthen Silk Belt'),
(600620, 7453, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Swift Boots'),
(600620, 7909, 0, 0.2975, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Aquamarine'),
(600620, 7910, 0, 0.1837, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Star Ruby'),
(600620, 7971, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Black Pearl'),
(600620, 7975, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Heavy Mithril Pants'),
(600620, 7976, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Mithril Shield Spike'),
(600620, 7989, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Mithril Spurs'),
(600620, 7990, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Heavy Mithril Helm'),
(600620, 7991, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Mithril Scale Shoulders'),
(600620, 7992, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Blue Glittering Axe'),
(600620, 7993, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Dazzling Mithril Rapier'),
(600620, 8029, 0, 0.11, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Wicked Mithril Blade'),
(600620, 8151, 0, 9.4264, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Flask of Mojo'),
(600620, 8385, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Turtle Scale Gloves'),
(600620, 8386, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Big Voodoo Robe'),
(600620, 8387, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Big Voodoo Mask'),
(600620, 8389, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Big Voodoo Pants'),
(600620, 8390, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Big Voodoo Cloak'),
(600620, 8623, 0, 0.9, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - OOX-17/TN Distress Beacon'),
(600620, 9242, 0, 1.9528, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Ancient Tablet'),
(600620, 9243, 0, 0.8586, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Shriveled Heart'),
(600620, 9293, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Recipe: Magic Resistance Potion'),
(600620, 9295, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Recipe: Invisibility Potion'),
(600620, 9297, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Recipe: Elixir of Dream Vision'),
(600620, 9298, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Recipe: Elixir of Giants'),
(600620, 9332, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Crusted Bandages'),
(600620, 9333, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Tarnished Silver Necklace'),
(600620, 9334, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Cracked Pottery'),
(600620, 9335, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Broken Obsidian Club'),
(600620, 9336, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Gold-capped Troll Tusk'),
(600620, 9523, 0, 55, 1, 1, 0, 1, 1, 'Sandfury Shadowhunter - Troll Temper'),
(600620, 10300, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Red Mageweave Vest'),
(600620, 10301, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: White Bandit Mask'),
(600620, 10302, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Red Mageweave Pants'),
(600620, 10312, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Red Mageweave Gloves'),
(600620, 10315, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Red Mageweave Shoulders'),
(600620, 10320, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Red Mageweave Headband'),
(600620, 10603, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Schematic: Catseye Ultra Goggles'),
(600620, 10604, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Schematic: Mithril Heavy-bore Rifle'),
(600620, 10605, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Schematic: Spellpower Goggles Xtreme'),
(600620, 10606, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Schematic: Parachute Cloak'),
(600620, 11167, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Boots - Lesser Spirit'),
(600620, 11202, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Shield - Stamina'),
(600620, 11204, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Bracer - Greater Spirit'),
(600620, 11208, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Weapon - Demonslaying'),
(600620, 11225, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Bracer - Greater Stamina'),
(600620, 11226, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Gloves - Riding Skill'),
(600620, 12682, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Thorium Armor'),
(600620, 12683, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Thorium Belt'),
(600620, 12684, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Thorium Bracers'),
(600620, 12689, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Radiant Breastplate'),
(600620, 12691, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Wildthorn Mail'),
(600620, 12692, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Plans: Thorium Shield Spike'),
(600620, 13486, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Recipe: Transmute Undeath to Water'),
(600620, 14466, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Frostweave Tunic'),
(600620, 14467, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Frostweave Robe'),
(600620, 14470, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Runecloth Tunic'),
(600620, 14474, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Frostweave Gloves'),
(600620, 14478, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Brightcloth Robe'),
(600620, 14479, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Brightcloth Gloves'),
(600620, 14484, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Brightcloth Cloak'),
(600620, 15731, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Runic Leather Gauntlets'),
(600620, 15737, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Pattern: Chimeric Boots'),
(600620, 16043, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Schematic: Thorium Rifle'),
(600620, 16215, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Boots - Greater Stamina'),
(600620, 16218, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Bracer - Superior Spirit'),
(600620, 16220, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Formula: Enchant Boots - Spirit'),
(600620, 24025, 24025, 1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24037, 24037, 1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24039, 24039, 1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24040, 24040, 0.5, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24041, 24041, 1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24042, 24042, 0.5, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24043, 24043, 1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24044, 24044, 0.5, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24045, 24045, 1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24046, 24046, 0.5, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24058, 24058, 5, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24080, 24080, 0.1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24081, 24081, 0.1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24082, 24082, 0.1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)'),
(600620, 24083, 24083, 0.1, 0, 1, 1, 1, 1, 'Sandfury Shadowhunter - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600620);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600620, 3928, 0, 3.253, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Superior Healing Potion'),
(600620, 4599, 0, 4.5783, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Cured Ham Steak'),
(600620, 4601, 0, 3.7349, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Soft Banana Bread'),
(600620, 5428, 0, 7.7108, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - An Exotic Cookbook'),
(600620, 16884, 0, 9.1566, 0, 1, 0, 1, 1, 'Sandfury Shadowhunter - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600620);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001095, 600620, 0, 0, 0, 0, 0, 1, 1, 1, -12991.9, -1376.86, 59.4264, 0.138865, 300, 4, 0, 41835, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001134, 600620, 0, 0, 0, 0, 0, 1, 1, 1, -12805.9, -1466.86, 123.715, 2.98327, 300, 8, 0, 41835, 34096, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600620;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600620);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600620, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 18396, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Shadowhunter - On Aggro - Cast \'Dismounting Blast\''),
(600620, 0, 1, 0, 0, 0, 100, 0, 0, 1000, 2000, 2000, 0, 0, 11, 15547, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Shadowhunter - In Combat - Cast \'Shoot\''),
(600620, 0, 2, 0, 0, 0, 100, 0, 4000, 10000, 13000, 24000, 0, 0, 11, 11641, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Shadowhunter - In Combat - Cast \'Hex\''),
(600620, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Shadowhunter - Between 0-15% Health - Flee For Assist (No Repeat)');
