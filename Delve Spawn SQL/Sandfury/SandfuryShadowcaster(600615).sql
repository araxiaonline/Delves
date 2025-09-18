DELETE FROM `creature_template` WHERE (`entry` = 600615);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600615, 0, 0, 0, 0, 0, 'Sandfury Shadowcaster', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 8, 2000, 2000, 1, 1, 2, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 8, 600615, 600615, 0, 0, 0, 1155, 2162, 'SmartAI', 1, 1, 10, 6, 1.15, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600615);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600615, 0, 11229, 1, 1, 12340),
(600615, 1, 11231, 1, 1, 12340),
(600615, 2, 11230, 1, 1, 12340),
(600615, 3, 11232, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600615);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600615, 2, 15, 0),
(600615, 3, 15, 0),
(600615, 4, 15, 0),
(600615, 5, 15, 0),
(600615, 6, 15, 0);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600615);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600615, 0, 15232, 12340),
(600615, 1, 20741, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600615);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600615, 1, 13705, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600615);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600615, 5760, 0, 0.3918, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Eternium Lockbox'),
(600615, 7909, 0, 0.3918, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Aquamarine'),
(600615, 7910, 0, 0.2351, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Star Ruby'),
(600615, 8766, 0, 1.4107, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Morning Glory Dew'),
(600615, 8952, 0, 2.9781, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Roasted Quail'),
(600615, 10305, 0, 0.2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Scroll of Protection IV'),
(600615, 10306, 0, 0.26, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Scroll of Spirit IV'),
(600615, 10307, 0, 0.18, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Scroll of Stamina IV'),
(600615, 10308, 0, 0.26, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Scroll of Intellect IV'),
(600615, 10309, 0, 0.1, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Scroll of Agility IV'),
(600615, 10310, 0, 0.08, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Scroll of Strength IV'),
(600615, 12697, 0, 0.1, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Plans: Radiant Boots'),
(600615, 12704, 0, 0.06, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Plans: Thorium Leggings'),
(600615, 12713, 0, 0.24, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Plans: Radiant Leggings'),
(600615, 12804, 0, 6.1912, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Powerful Mojo'),
(600615, 13444, 0, 0.84, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Major Mana Potion'),
(600615, 13446, 0, 1.36, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Major Healing Potion'),
(600615, 13492, 0, 0.04, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Recipe: Purification Potion'),
(600615, 14047, 0, 18.3386, 0, 1, 0, 2, 5, 'Hakkari Shadowcaster - Runecloth'),
(600615, 14491, 0, 0.04, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pattern: Runecloth Pants'),
(600615, 14504, 0, 0.18, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pattern: Runecloth Shoulders'),
(600615, 14506, 0, 0.16, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pattern: Felcloth Robe'),
(600615, 14508, 0, 0.16, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pattern: Felcloth Shoulders'),
(600615, 15743, 0, 0.06, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pattern: Heavy Scorpid Belt'),
(600615, 15746, 0, 0.04, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pattern: Chimeric Leggings'),
(600615, 15755, 0, 0.03, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pattern: Chimeric Vest'),
(600615, 15765, 0, 0.12, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pattern: Runic Leather Pants'),
(600615, 16051, 0, 0.02, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Schematic: Thorium Shells'),
(600615, 16251, 0, 0.12, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Formula: Enchant Bracer - Superior Stamina'),
(600615, 18335, 0, 0.0784, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Pristine Black Diamond'),
(600615, 19233, 0, 0.12, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Five of Beasts'),
(600615, 19234, 0, 0.06, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Six of Beasts'),
(600615, 19235, 0, 0.14, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Seven of Beasts'),
(600615, 19236, 0, 0.1, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Eight of Beasts'),
(600615, 19262, 0, 0.0784, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Five of Warlords'),
(600615, 19263, 0, 0.08, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Six of Warlords'),
(600615, 19264, 0, 0.02, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Seven of Warlords'),
(600615, 19265, 0, 0.0784, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Eight of Warlords'),
(600615, 19273, 0, 0.08, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Six of Elementals'),
(600615, 19274, 0, 0.06, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Seven of Elementals'),
(600615, 19275, 0, 0.14, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Eight of Elementals'),
(600615, 19281, 0, 0.06, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Five of Portals'),
(600615, 19282, 0, 0.04, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Six of Portals'),
(600615, 19283, 0, 0.1, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Seven of Portals'),
(600615, 19284, 0, 0.08, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Eight of Portals'),
(600615, 19698, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Zulian Coin'),
(600615, 19699, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Razzashi Coin'),
(600615, 19700, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Hakkari Coin'),
(600615, 19701, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Gurubashi Coin'),
(600615, 19702, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Vilebranch Coin'),
(600615, 19703, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Witherbark Coin'),
(600615, 19704, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Sandfury Coin'),
(600615, 19705, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Skullsplitter Coin'),
(600615, 19706, 0, 5, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Bloodscalp Coin'),
(600615, 19707, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Red Hakkari Bijou'),
(600615, 19708, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Blue Hakkari Bijou'),
(600615, 19709, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Yellow Hakkari Bijou'),
(600615, 19710, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Orange Hakkari Bijou'),
(600615, 19711, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Green Hakkari Bijou'),
(600615, 19712, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Purple Hakkari Bijou'),
(600615, 19713, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Bronze Hakkari Bijou'),
(600615, 19714, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Silver Hakkari Bijou'),
(600615, 19715, 0, 2, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Gold Hakkari Bijou'),
(600615, 19726, 0, 1.3323, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Bloodvine'),
(600615, 19727, 0, 0.12, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Blood Scythe'),
(600615, 19908, 0, 0.04, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Sceptre of Smiting'),
(600615, 20258, 0, 0.06, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Zulian Ceremonial Staff'),
(600615, 24016, 24016, 1, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24017, 24017, 0.5, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24018, 24018, 1, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24019, 24019, 0.5, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24020, 24020, 1, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24031, 24031, 1, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24033, 24033, 1, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24034, 24034, 0.5, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24088, 24088, 0.1, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)'),
(600615, 24089, 24089, 0.1, 0, 1, 1, 1, 1, 'Hakkari Shadowcaster - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600615);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600615, 8952, 0, 20, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Roasted Quail'),
(600615, 27854, 0, 20, 0, 1, 0, 1, 1, 'Hakkari Shadowcaster - Smoked Talbuk Venison');

DELETE FROM `creature` WHERE (`id1` = 600615);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001091, 600615, 0, 0, 905, 0, 0, 1, 1, 1, -13021.9, -1334.61, 44.4872, 1.02291, 300, 5, 0, 51018, 25572, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001102, 600615, 0, 0, 905, 0, 0, 1, 1, 1, -13005.9, -1437.43, 59.4129, 2.17085, 300, 0, 0, 51018, 25572, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001113, 600615, 0, 0, 905, 0, 0, 1, 1, 1, -13039.3, -1526.35, 59.5077, 1.41663, 300, 5, 0, 51018, 25572, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001115, 600615, 0, 0, 905, 0, 0, 1, 1, 1, -13018.8, -1532.16, 61.6849, 1.82119, 300, 4, 0, 51018, 25572, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001129, 600615, 0, 0, 905, 0, 0, 1, 1, 1, -12879.2, -1430.26, 112.498, 2.85061, 300, 0, 0, 51018, 25572, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001140, 600615, 0, 0, 905, 0, 0, 1, 1, 1, -12754.6, -1497.09, 131.561, 1.45182, 300, 0, 0, 51018, 25572, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600615;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600615);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600615, 0, 0, 0, 0, 0, 100, 0, 5000, 6000, 11000, 13000, 0, 0, 11, 22947, 257, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0, 'Sandfury Shadowcaster - In Combat - Cast \'Mana Burn\''),
(600615, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 12000, 14000, 0, 0, 11, 15232, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Shadowcaster - In Combat - Cast \'Shadow Bolt\''),
(600615, 0, 2, 0, 0, 0, 100, 0, 7000, 9000, 12000, 14000, 0, 0, 11, 20741, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Shadowcaster - In Combat - Cast \'Shadow Bolt Volley\'');
