DELETE FROM `creature_template` WHERE (`entry` = 600667);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600667, 0, 0, 0, 0, 0, 'Hederine Slayer', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 35, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600667, 0, 0, 0, 0, 61, 404, 'SmartAI', 0, 1, 90, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600667);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600667, 0, 9018, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600667);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600667, 0, 17547, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600667);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600667, 1, 2183, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600667);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600667, 4500, 0, 0.24, 0, 1, 0, 1, 1, 'Hederine Slayer - Traveler\'s Backpack'),
(600667, 5759, 0, 0.4308, 0, 1, 0, 1, 1, 'Hederine Slayer - Thorium Lockbox'),
(600667, 7909, 0, 0.201, 0, 1, 0, 1, 1, 'Hederine Slayer - Aquamarine'),
(600667, 7910, 0, 0.2298, 0, 1, 0, 1, 1, 'Hederine Slayer - Star Ruby'),
(600667, 8948, 0, 10.2814, 0, 1, 0, 1, 4, 'Hederine Slayer - Dried King Bolete'),
(600667, 12361, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Blue Sapphire'),
(600667, 12364, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Huge Emerald'),
(600667, 12365, 0, 0.2, 0, 1, 0, 1, 1, 'Hederine Slayer - Dense Stone'),
(600667, 12662, 0, 12.8662, 0, 1, 0, 1, 1, 'Hederine Slayer - Demonic Rune'),
(600667, 12682, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Thorium Armor'),
(600667, 12683, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Thorium Belt'),
(600667, 12684, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Thorium Bracers'),
(600667, 12685, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Radiant Belt'),
(600667, 12689, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Radiant Breastplate'),
(600667, 12691, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Wildthorn Mail'),
(600667, 12693, 0, 0.06, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Thorium Boots'),
(600667, 12694, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Thorium Helm'),
(600667, 12695, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Radiant Gloves'),
(600667, 12697, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Radiant Boots'),
(600667, 12704, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Thorium Leggings'),
(600667, 12713, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Plans: Radiant Leggings'),
(600667, 13490, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Recipe: Greater Stoneshield Potion'),
(600667, 13492, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Recipe: Purification Potion'),
(600667, 14047, 0, 31.1315, 0, 1, 0, 1, 4, 'Hederine Slayer - Runecloth'),
(600667, 14256, 0, 5.112, 0, 1, 0, 1, 1, 'Hederine Slayer - Felcloth'),
(600667, 14466, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Frostweave Tunic'),
(600667, 14467, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Frostweave Robe'),
(600667, 14470, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Runecloth Tunic'),
(600667, 14474, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Frostweave Gloves'),
(600667, 14478, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Brightcloth Robe'),
(600667, 14479, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Brightcloth Gloves'),
(600667, 14484, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Brightcloth Cloak'),
(600667, 14489, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Frostweave Pants'),
(600667, 14491, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Runecloth Pants'),
(600667, 14492, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Felcloth Boots'),
(600667, 14494, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Brightcloth Pants'),
(600667, 14496, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Felcloth Hood'),
(600667, 14498, 0, 0.06, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Runecloth Headband'),
(600667, 14499, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Mooncloth Bag'),
(600667, 14504, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Runecloth Shoulders'),
(600667, 14506, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Felcloth Robe'),
(600667, 14508, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Felcloth Shoulders'),
(600667, 15731, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Runic Leather Gauntlets'),
(600667, 15737, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Chimeric Boots'),
(600667, 15743, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Heavy Scorpid Belt'),
(600667, 15745, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Runic Leather Belt'),
(600667, 15746, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Chimeric Leggings'),
(600667, 15755, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Chimeric Vest'),
(600667, 15757, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Wicked Leather Pants'),
(600667, 15765, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Pattern: Runic Leather Pants'),
(600667, 16043, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Schematic: Thorium Rifle'),
(600667, 16051, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Schematic: Thorium Shells'),
(600667, 16055, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Schematic: Arcane Bomb'),
(600667, 16215, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Formula: Enchant Boots - Greater Stamina'),
(600667, 16218, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Formula: Enchant Bracer - Superior Spirit'),
(600667, 16220, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Formula: Enchant Boots - Spirit'),
(600667, 16245, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Formula: Enchant Boots - Greater Agility'),
(600667, 16251, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Formula: Enchant Bracer - Superior Stamina'),
(600667, 18335, 0, 0.1436, 0, 1, 0, 1, 1, 'Hederine Slayer - Pristine Black Diamond'),
(600667, 18604, 0, 80, 1, 1, 0, 1, 1, 'Hederine Slayer - Tears of the Hederine'),
(600667, 18665, 0, 1.0626, 0, 1, 0, 1, 1, 'Hederine Slayer - The Eye of Shadow'),
(600667, 19233, 0, 0.0287, 0, 1, 0, 1, 1, 'Hederine Slayer - Five of Beasts'),
(600667, 19234, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Six of Beasts'),
(600667, 19235, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Seven of Beasts'),
(600667, 19236, 0, 0.04, 0, 1, 0, 1, 1, 'Hederine Slayer - Eight of Beasts'),
(600667, 19262, 0, 0.0287, 0, 1, 0, 1, 1, 'Hederine Slayer - Five of Warlords'),
(600667, 19263, 0, 0.0287, 0, 1, 0, 1, 1, 'Hederine Slayer - Six of Warlords'),
(600667, 19264, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Seven of Warlords'),
(600667, 19265, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Eight of Warlords'),
(600667, 19272, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Five of Elementals'),
(600667, 19273, 0, 0.0287, 0, 1, 0, 1, 1, 'Hederine Slayer - Six of Elementals'),
(600667, 19274, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Seven of Elementals'),
(600667, 19275, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Eight of Elementals'),
(600667, 19281, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Five of Portals'),
(600667, 19282, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Six of Portals'),
(600667, 19283, 0, 0.0287, 0, 1, 0, 1, 1, 'Hederine Slayer - Seven of Portals'),
(600667, 19284, 0, 0.02, 0, 1, 0, 1, 1, 'Hederine Slayer - Eight of Portals'),
(600667, 21105, 0, 6, 0, 1, 0, 1, 1, 'Hederine Slayer - Draconic for Dummies'),
(600667, 24016, 24016, 1, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24017, 24017, 0.5, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24018, 24018, 1, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24019, 24019, 0.5, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24024, 24024, 5, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24031, 24031, 1, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24032, 24032, 0.5, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24033, 24033, 1, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24034, 24034, 0.5, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24088, 24088, 0.1, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24089, 24089, 0.1, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)'),
(600667, 24090, 24090, 0.1, 0, 1, 1, 1, 1, 'Hederine Slayer - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600667);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001415, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11625.9, -2371.12, 7.31123, 3.08205, 300, 8, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001416, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11642.3, -2379.59, 5.98876, 2.05663, 300, 7, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001430, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11690.9, -2371.56, -0.68777, 1.85337, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001431, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11691.5, -2429.45, -1.72966, 4.7225, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001432, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11702.4, -2455.66, -6.1921, 3.79856, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001446, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11787, -2374.08, -5.34946, 2.88348, 300, 8, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001468, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11890.9, -2612.5, -5.66183, 5.06233, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001469, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11861, -2591.4, -11.1292, 2.60294, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001470, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11826.1, -2576.94, -7.95553, 0.0434007, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001471, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11797.7, -2561.88, -4.36216, 0.0393952, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001485, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -12010.6, -2622.04, -36.0241, 3.72401, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001486, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -12030.3, -2635.25, -32.3049, 4.14859, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001487, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -12064.2, -2654.35, -29.7876, 0.0604407, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001502, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11968, -2417.12, -0.75252, 5.7413, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001503, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -12001.6, -2415.84, 2.77916, 3.32879, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001509, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11807.3, -2472.2, -20.8185, 0.602202, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001510, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11775.2, -2486.64, -15.308, 1.32053, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001516, 600667, 0, 0, 309, 0, 0, 1, 1, 1, -11845.7, -2534.52, -19.2193, 3.64625, 300, 10, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600667;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600667);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600667, 0, 0, 0, 0, 0, 100, 0, 3700, 4200, 9600, 13900, 0, 0, 11, 17547, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hederine Slayer - In Combat - Cast \'Mortal Strike\'');
