DELETE FROM `creature_template` WHERE (`entry` = 600673);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600673, 0, 0, 0, 0, 0, 'Rockjaw Flameweaver', 'Delve', NULL, 0, 83, 84, 0, 168, 0, 1, 1.71429, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600673, 600673, 0, 0, 0, 66, 444, 'SmartAI', 0, 1, 25, 10, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600673);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600673, 0, 160, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600673);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600673, 0, 7739, 12340),
(600673, 1, 2941, 12340),
(600673, 2, 2602, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600673);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600673, 1, 1908, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600673);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600673, 1645, 0, 2.0399, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Moonberry Juice'),
(600673, 1685, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Troll-hide Bag'),
(600673, 3395, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Recipe: Limited Invulnerability Potion'),
(600673, 3771, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Wild Hog Shank'),
(600673, 3832, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Recipe: Elixir of Detect Lesser Invisibility'),
(600673, 3864, 0, 0.2661, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Citrine'),
(600673, 3868, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Frost Tiger Blade'),
(600673, 3869, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Shadow Crescent Axe'),
(600673, 3873, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Golden Scale Cuirass'),
(600673, 3874, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Polished Steel Boots'),
(600673, 3914, 0, 0.14, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Journeyman\'s Backpack'),
(600673, 3928, 0, 1.7517, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Superior Healing Potion'),
(600673, 4300, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Guardian Leather Bracers'),
(600673, 4306, 0, 14.6785, 0, 1, 0, 1, 4, 'Stonevault Flameweaver - Silk Cloth'),
(600673, 4338, 0, 18.7805, 0, 1, 0, 1, 4, 'Stonevault Flameweaver - Mageweave Cloth'),
(600673, 4353, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Spider Belt'),
(600673, 4416, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Schematic: Goblin Land Mine'),
(600673, 4419, 0, 0.38, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Scroll of Intellect III'),
(600673, 4421, 0, 0.44, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Scroll of Protection III'),
(600673, 4422, 0, 0.32, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Scroll of Stamina III'),
(600673, 4424, 0, 0.56, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Scroll of Spirit III'),
(600673, 4539, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Goldenbark Apple'),
(600673, 4544, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Mulgore Spice Bread'),
(600673, 4599, 0, 5.1885, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Cured Ham Steak'),
(600673, 4637, 0, 0.3769, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Steel Lockbox'),
(600673, 6149, 0, 1.22, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Greater Mana Potion'),
(600673, 7084, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Crimson Silk Shoulders'),
(600673, 7086, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Earthen Silk Belt'),
(600673, 7453, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Swift Boots'),
(600673, 7909, 0, 0.4656, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Aquamarine'),
(600673, 7910, 0, 0.133, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Star Ruby'),
(600673, 7912, 0, 0.06, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Solid Stone'),
(600673, 7975, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Heavy Mithril Pants'),
(600673, 7976, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Mithril Shield Spike'),
(600673, 7989, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Mithril Spurs'),
(600673, 7990, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Heavy Mithril Helm'),
(600673, 7992, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Blue Glittering Axe'),
(600673, 7993, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Dazzling Mithril Rapier'),
(600673, 8029, 0, 0.3, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Plans: Wicked Mithril Blade'),
(600673, 8364, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Mithril Head Trout'),
(600673, 8385, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Turtle Scale Gloves'),
(600673, 8386, 0, 0.06, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Big Voodoo Robe'),
(600673, 8387, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Big Voodoo Mask'),
(600673, 8389, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Big Voodoo Pants'),
(600673, 8390, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Big Voodoo Cloak'),
(600673, 9293, 0, 0.06, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Recipe: Magic Resistance Potion'),
(600673, 9295, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Recipe: Invisibility Potion'),
(600673, 9298, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Recipe: Elixir of Giants'),
(600673, 9381, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Earthen Rod'),
(600673, 9383, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Obsidian Cleaver'),
(600673, 9384, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Stonevault Shiv'),
(600673, 9386, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Excavator\'s Brand'),
(600673, 9391, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - The Shoveler'),
(600673, 9392, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Annealed Blade'),
(600673, 9393, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Beacon of Hope'),
(600673, 9396, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Legguards of the Vault'),
(600673, 9397, 0, 0.06, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Energy Cloak'),
(600673, 9406, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Spirewind Fetter'),
(600673, 9420, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Adventurer\'s Pith Helmet'),
(600673, 9422, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Shadowforge Bushmaster'),
(600673, 9423, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - The Jackhammer'),
(600673, 9424, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Ginn-su Sword'),
(600673, 9425, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pendulum of Doom'),
(600673, 9426, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Monolithic Bow'),
(600673, 9427, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Stonevault Bonebreaker'),
(600673, 9428, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Unearthed Bands'),
(600673, 9429, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Miner\'s Hat of the Deep'),
(600673, 9431, 0, 0.0222, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Papal Fez'),
(600673, 9432, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Skullplate Bracers'),
(600673, 9465, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Digmaster 5000'),
(600673, 10300, 0, 0.08, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Red Mageweave Vest'),
(600673, 10301, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: White Bandit Mask'),
(600673, 10302, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Red Mageweave Pants'),
(600673, 10312, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Red Mageweave Gloves'),
(600673, 10315, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Red Mageweave Shoulders'),
(600673, 10320, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Pattern: Red Mageweave Headband'),
(600673, 10603, 0, 0.08, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Schematic: Catseye Ultra Goggles'),
(600673, 10604, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Schematic: Mithril Heavy-bore Rifle'),
(600673, 10606, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Schematic: Parachute Cloak'),
(600673, 11167, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Formula: Enchant Boots - Lesser Spirit'),
(600673, 11202, 0, 0.08, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Formula: Enchant Shield - Stamina'),
(600673, 11204, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Formula: Enchant Bracer - Greater Spirit'),
(600673, 11208, 0, 0.02, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Formula: Enchant Weapon - Demonslaying'),
(600673, 20976, 0, 0.1, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Design: Citrine Pendant of Golden Healing'),
(600673, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Stonevault Flameweaver - (ReferenceTable)'),
(600673, 24039, 24039, 1, 0, 1, 1, 1, 1, 'Stonevault Flameweaver - (ReferenceTable)'),
(600673, 24041, 24041, 1, 0, 1, 1, 1, 1, 'Stonevault Flameweaver - (ReferenceTable)'),
(600673, 24043, 24043, 1, 0, 1, 1, 1, 1, 'Stonevault Flameweaver - (ReferenceTable)'),
(600673, 24045, 24045, 1, 0, 1, 1, 1, 1, 'Stonevault Flameweaver - (ReferenceTable)'),
(600673, 24080, 24080, 0.1, 0, 1, 1, 1, 1, 'Stonevault Flameweaver - (ReferenceTable)'),
(600673, 24081, 24081, 0.1, 0, 1, 1, 1, 1, 'Stonevault Flameweaver - (ReferenceTable)'),
(600673, 24082, 24082, 0.1, 0, 1, 1, 1, 1, 'Stonevault Flameweaver - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600673);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600673, 3928, 0, 4.878, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Superior Healing Potion'),
(600673, 4599, 0, 4.878, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Cured Ham Steak'),
(600673, 5430, 0, 17.0732, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Intricate Bauble'),
(600673, 16884, 0, 7.3171, 0, 1, 0, 1, 1, 'Stonevault Flameweaver - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600673);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001530, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5864.65, 901.344, 485.764, 5.25389, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001531, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5885.5, 873.199, 485.764, 3.84127, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001532, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5925.33, 812.428, 485.764, 4.75053, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001533, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5817.93, 757.444, 485.765, 2.80934, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001551, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5922.39, 714.75, 485.767, 1.2123, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001558, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5982.42, 650.495, 483.775, 0.897203, 300, 4, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001568, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5898.41, 584.142, 502.831, 3.65269, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001571, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5926.62, 539.214, 503.992, 0.337282, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001572, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5880.47, 527.585, 508.064, 2.46273, 300, 0, 0, 114702, 95080, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001582, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5935.2, 428.145, 506.842, 0.377016, 300, 8, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001584, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5912.56, 753.249, 485.767, 1.57066, 300, 7, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001585, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5927.01, 872.288, 485.764, 5.48509, 300, 8, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL);



UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600673;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600673);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600673, 0, 0, 0, 0, 0, 100, 0, 4000, 10000, 7000, 14000, 0, 0, 11, 2941, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Flameweaver - In Combat - Cast \'Immolate\''),
(600673, 0, 1, 0, 0, 0, 100, 0, 1000, 9000, 17000, 25000, 0, 0, 11, 7739, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Flameweaver - In Combat - Cast \'Inferno Shell\''),
(600673, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Flameweaver - Between 0-15% Health - Flee For Assist (No Repeat)');
