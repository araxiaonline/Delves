DELETE FROM `creature_template` WHERE (`entry` = 600618);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600618, 0, 0, 0, 0, 0, 'Sandfury Executioner', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.8, 2600, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600618, 600618, 0, 0, 0, 483, 1191, 'SmartAI', 1, 1, 12.3, 8, 1.1, 1, 0, 0, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600618);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600618, 0, 6440, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600618);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600618, 0, 7160, 12340),
(600618, 1, 15496, 12340),
(600618, 2, 7366, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600618);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600618, 1, 5288, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600618);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600618, 1520, 0, 32.5023, 0, 1, 0, 1, 1, 'Sandfury Executioner - Troll Sweat'),
(600618, 1645, 0, 2.2125, 0, 1, 0, 1, 1, 'Sandfury Executioner - Moonberry Juice'),
(600618, 1685, 0, 0.0312, 0, 1, 0, 1, 1, 'Sandfury Executioner - Troll-hide Bag'),
(600618, 2040, 0, 0.0312, 0, 1, 0, 1, 1, 'Sandfury Executioner - Troll Protector'),
(600618, 3395, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Recipe: Limited Invulnerability Potion'),
(600618, 3914, 0, 0.2, 0, 1, 0, 1, 1, 'Sandfury Executioner - Journeyman\'s Backpack'),
(600618, 3928, 0, 1.24, 0, 1, 0, 1, 1, 'Sandfury Executioner - Superior Healing Potion'),
(600618, 4338, 0, 26.8931, 0, 1, 0, 1, 4, 'Sandfury Executioner - Mageweave Cloth'),
(600618, 4419, 0, 0.4, 0, 1, 0, 1, 1, 'Sandfury Executioner - Scroll of Intellect III'),
(600618, 4422, 0, 0.34, 0, 1, 0, 1, 1, 'Sandfury Executioner - Scroll of Stamina III'),
(600618, 4425, 0, 0.14, 0, 1, 0, 1, 1, 'Sandfury Executioner - Scroll of Agility III'),
(600618, 4426, 0, 0.2, 0, 1, 0, 1, 1, 'Sandfury Executioner - Scroll of Strength III'),
(600618, 4599, 0, 4.612, 0, 1, 0, 1, 1, 'Sandfury Executioner - Cured Ham Steak'),
(600618, 4638, 0, 0.187, 0, 1, 0, 1, 1, 'Sandfury Executioner - Reinforced Steel Lockbox'),
(600618, 5616, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Gutwrencher'),
(600618, 6149, 0, 1.1, 0, 1, 0, 1, 1, 'Sandfury Executioner - Greater Mana Potion'),
(600618, 6440, 0, 0.0312, 0, 1, 0, 1, 1, 'Sandfury Executioner - Brainlash'),
(600618, 7909, 0, 0.3739, 0, 1, 0, 1, 1, 'Sandfury Executioner - Aquamarine'),
(600618, 7910, 0, 0.2493, 0, 1, 0, 1, 1, 'Sandfury Executioner - Star Ruby'),
(600618, 7975, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Plans: Heavy Mithril Pants'),
(600618, 7989, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Plans: Mithril Spurs'),
(600618, 7990, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Executioner - Plans: Heavy Mithril Helm'),
(600618, 7993, 0, 0.03, 0, 1, 0, 1, 1, 'Sandfury Executioner - Plans: Dazzling Mithril Rapier'),
(600618, 8029, 0, 0.14, 0, 1, 0, 1, 1, 'Sandfury Executioner - Plans: Wicked Mithril Blade'),
(600618, 8151, 0, 9.1617, 0, 1, 0, 1, 1, 'Sandfury Executioner - Flask of Mojo'),
(600618, 8385, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Turtle Scale Gloves'),
(600618, 8387, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Big Voodoo Mask'),
(600618, 8389, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Big Voodoo Pants'),
(600618, 8390, 0, 0.06, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Big Voodoo Cloak'),
(600618, 8444, 0, 100, 0, 1, 0, 1, 1, 'Sandfury Executioner - Executioner\'s Key'),
(600618, 8623, 0, 0.8, 0, 1, 0, 1, 1, 'Sandfury Executioner - OOX-17/TN Distress Beacon'),
(600618, 9242, 0, 1.7451, 0, 1, 0, 1, 1, 'Sandfury Executioner - Ancient Tablet'),
(600618, 9243, 0, 0.7167, 0, 1, 0, 1, 1, 'Sandfury Executioner - Shriveled Heart'),
(600618, 9295, 0, 0.08, 0, 1, 0, 1, 1, 'Sandfury Executioner - Recipe: Invisibility Potion'),
(600618, 9298, 0, 0.12, 0, 1, 0, 1, 1, 'Sandfury Executioner - Recipe: Elixir of Giants'),
(600618, 9480, 0, 0.1, 0, 1, 0, 1, 1, 'Sandfury Executioner - Eyegouger'),
(600618, 9482, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Executioner - Witch Doctor\'s Cane'),
(600618, 9483, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Flaming Incinerator'),
(600618, 9511, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Executioner - Bloodletter Scalpel'),
(600618, 9512, 0, 0.0935, 0, 1, 0, 1, 1, 'Sandfury Executioner - Blackmetal Cape'),
(600618, 9523, 0, 55, 1, 1, 0, 1, 1, 'Sandfury Executioner - Troll Temper'),
(600618, 10300, 0, 0.12, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Red Mageweave Vest'),
(600618, 10302, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Red Mageweave Pants'),
(600618, 10312, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Red Mageweave Gloves'),
(600618, 10315, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Red Mageweave Shoulders'),
(600618, 10320, 0, 0.06, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Red Mageweave Headband'),
(600618, 10606, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Schematic: Parachute Cloak'),
(600618, 11204, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Formula: Enchant Bracer - Greater Spirit'),
(600618, 11208, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Executioner - Formula: Enchant Weapon - Demonslaying'),
(600618, 11225, 0, 0.06, 0, 1, 0, 1, 1, 'Sandfury Executioner - Formula: Enchant Bracer - Greater Stamina'),
(600618, 11226, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Formula: Enchant Gloves - Riding Skill'),
(600618, 12682, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Plans: Thorium Armor'),
(600618, 12689, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Plans: Radiant Breastplate'),
(600618, 12691, 0, 0.06, 0, 1, 0, 1, 1, 'Sandfury Executioner - Plans: Wildthorn Mail'),
(600618, 14467, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Frostweave Robe'),
(600618, 14474, 0, 0.04, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Frostweave Gloves'),
(600618, 14484, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Brightcloth Cloak'),
(600618, 15731, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Pattern: Runic Leather Gauntlets'),
(600618, 16043, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Schematic: Thorium Rifle'),
(600618, 16215, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Formula: Enchant Boots - Greater Stamina'),
(600618, 16218, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Formula: Enchant Bracer - Superior Spirit'),
(600618, 16220, 0, 0.02, 0, 1, 0, 1, 1, 'Sandfury Executioner - Formula: Enchant Boots - Spirit'),
(600618, 24025, 24025, 1, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24037, 24037, 1, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24039, 24039, 1, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24041, 24041, 1, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24042, 24042, 0.5, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24043, 24043, 1, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24044, 24044, 0.5, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24045, 24045, 1, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24046, 24046, 0.5, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24082, 24082, 0.1, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24083, 24083, 0.1, 0, 1, 1, 1, 1, 'Sandfury Executioner - (ReferenceTable)'),
(600618, 24232, 0, 0.0312, 0, 1, 0, 2, 2, 'Sandfury Executioner - Shabby Knot');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600618);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600618, 3928, 0, 1.6129, 0, 1, 0, 1, 1, 'Sandfury Executioner - Superior Healing Potion'),
(600618, 4599, 0, 1.6129, 0, 1, 0, 1, 1, 'Sandfury Executioner - Cured Ham Steak'),
(600618, 4601, 0, 3.2258, 0, 1, 0, 1, 1, 'Sandfury Executioner - Soft Banana Bread'),
(600618, 5428, 0, 6.4516, 0, 1, 0, 1, 1, 'Sandfury Executioner - An Exotic Cookbook'),
(600618, 16884, 0, 14.5161, 0, 1, 0, 1, 1, 'Sandfury Executioner - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600618);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001092, 600618, 0, 0, 0, 0, 0, 1, 1, 1, -12983.1, -1379.96, 61.0423, 2.32322, 300, 3, 0, 78434, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001093, 600618, 0, 0, 0, 0, 0, 1, 1, 1, -12990.5, -1397.08, 60.8027, 2.17902, 300, 5, 0, 78434, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001104, 600618, 0, 0, 0, 0, 0, 1, 1, 1, -13014.1, -1434.62, 58.4691, 1.60606, 300, 0, 0, 78434, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001105, 600618, 0, 0, 0, 0, 0, 1, 1, 1, -13005.7, -1426.08, 57.8564, 2.49663, 300, 0, 0, 78434, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001106, 600618, 0, 0, 0, 0, 0, 1, 1, 1, -13041.6, -1465.49, 57.421, 0.969185, 300, 15, 0, 78434, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001120, 600618, 0, 0, 0, 0, 0, 1, 1, 1, -12968.9, -1352.5, 58.8053, 3.76104, 300, 3, 0, 78434, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001132, 600618, 0, 0, 0, 0, 0, 1, 1, 1, -12837, -1460.46, 123.529, 3.08325, 300, 7, 0, 78434, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001144, 600618, 0, 0, 0, 0, 0, 1, 1, 1, -13043.2, -1361.98, 55.7191, 6.07758, 300, 8, 0, 78434, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600618;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600618);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600618, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Executioner - MISSING LINK - Cast \'Berserker Stance\''),
(600618, 0, 2, 0, 0, 0, 100, 0, 3000, 8000, 7000, 11000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Executioner - In Combat - Cast \'Cleave\'');
