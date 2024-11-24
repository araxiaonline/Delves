DELETE FROM `creature_template` WHERE (`entry` = 600621);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600621, 0, 0, 0, 0, 0, 'Souse\'San Rhazon', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 19.6, 2500, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 600621, 600621, 0, 0, 0, 320, 423, 'SmartAI', 1, 1, 114.7, 40, 1.2, 2, 0, 0, 1, 646659935, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600621);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600621, 0, 6690, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600621);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600621, 0, 11837, 12340),
(600621, 1, 15496, 12340),
(600621, 2, 34409, 12340),
(600621, 3, 7366, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600621);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600621, 1, 5300, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600621);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600621, 1520, 0, 30.6319, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Troll Sweat'),
(600621, 1645, 0, 3.04, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Moonberry Juice'),
(600621, 3864, 0, 0.18, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Citrine'),
(600621, 3914, 0, 0.16, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Journeyman\'s Backpack'),
(600621, 3928, 0, 1.1067, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Superior Healing Potion'),
(600621, 4306, 0, 11.6387, 0, 1, 0, 1, 4, 'Nekrum Gutchewer - Silk Cloth'),
(600621, 4338, 0, 14.709, 0, 1, 0, 1, 4, 'Nekrum Gutchewer - Mageweave Cloth'),
(600621, 4419, 0, 0.34, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Scroll of Intellect III'),
(600621, 4421, 0, 0.42, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Scroll of Protection III'),
(600621, 4422, 0, 0.16, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Scroll of Stamina III'),
(600621, 4424, 0, 0.34, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Scroll of Spirit III'),
(600621, 4599, 0, 5.2124, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Cured Ham Steak'),
(600621, 4637, 0, 0.2142, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Steel Lockbox'),
(600621, 4638, 0, 0.1428, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Reinforced Steel Lockbox'),
(600621, 6149, 0, 0.8, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Greater Mana Potion'),
(600621, 7909, 0, 0.357, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Aquamarine'),
(600621, 7910, 0, 0.1071, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Star Ruby'),
(600621, 7975, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Plans: Heavy Mithril Pants'),
(600621, 7989, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Plans: Mithril Spurs'),
(600621, 7990, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Plans: Heavy Mithril Helm'),
(600621, 7993, 0, 0.16, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Plans: Dazzling Mithril Rapier'),
(600621, 8029, 0, 0.16, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Plans: Wicked Mithril Blade'),
(600621, 8151, 0, 9.6037, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Flask of Mojo'),
(600621, 8389, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Pattern: Big Voodoo Pants'),
(600621, 8390, 0, 0.03, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Pattern: Big Voodoo Cloak'),
(600621, 8623, 0, 0.9, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - OOX-17/TN Distress Beacon'),
(600621, 9242, 0, 2.1778, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Ancient Tablet'),
(600621, 9243, 0, 0.6426, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Shriveled Heart'),
(600621, 9293, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Recipe: Magic Resistance Potion'),
(600621, 9295, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Recipe: Invisibility Potion'),
(600621, 9298, 0, 0.08, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Recipe: Elixir of Giants'),
(600621, 9471, 0, 100, 1, 1, 0, 1, 1, 'Nekrum Gutchewer - Nekrum\'s Medallion'),
(600621, 9480, 0, 0.1, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Eyegouger'),
(600621, 9482, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Witch Doctor\'s Cane'),
(600621, 9511, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Bloodletter Scalpel'),
(600621, 9523, 0, 55, 1, 1, 0, 2, 5, 'Nekrum Gutchewer - Troll Temper'),
(600621, 10301, 0, 0.06, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Pattern: White Bandit Mask'),
(600621, 10302, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Pattern: Red Mageweave Pants'),
(600621, 10320, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Pattern: Red Mageweave Headband'),
(600621, 10603, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Schematic: Catseye Ultra Goggles'),
(600621, 10604, 0, 0.08, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Schematic: Mithril Heavy-bore Rifle'),
(600621, 10606, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Schematic: Parachute Cloak'),
(600621, 11202, 0, 0.06, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Formula: Enchant Shield - Stamina'),
(600621, 11204, 0, 0.14, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Formula: Enchant Bracer - Greater Spirit'),
(600621, 11208, 0, 0.06, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Formula: Enchant Weapon - Demonslaying'),
(600621, 11225, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Formula: Enchant Bracer - Greater Stamina'),
(600621, 14474, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Pattern: Frostweave Gloves'),
(600621, 14478, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Pattern: Brightcloth Robe'),
(600621, 14479, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Pattern: Brightcloth Gloves'),
(600621, 16215, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Formula: Enchant Boots - Greater Stamina'),
(600621, 16220, 0, 0.02, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Formula: Enchant Boots - Spirit'),
(600621, 24025, 24025, 1, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)'),
(600621, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)'),
(600621, 24039, 24039, 1, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)'),
(600621, 24041, 24041, 1, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)'),
(600621, 24042, 24042, 0.5, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)'),
(600621, 24043, 24043, 1, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)'),
(600621, 24044, 24044, 0.5, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)'),
(600621, 24045, 24045, 1, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)'),
(600621, 24081, 24081, 0.1, 0, 1, 1, 1, 1, 'Nekrum Gutchewer - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600621);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600621, 4601, 0, 7.6923, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Soft Banana Bread'),
(600621, 16884, 0, 7.6923, 0, 1, 0, 1, 1, 'Nekrum Gutchewer - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600621);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001150, 600621, 0, 0, 0, 0, 0, 1, 1, 1, -12751.2, -1483.63, 126.923, 2.88949, 300, 0, 0, 683268, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600621;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600621);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600621, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 19471, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Nekrum Gutchewer - On Aggro - Cast Berserker Charge'),
(600621, 0, 1, 0, 0, 0, 100, 0, 0, 20000, 30000, 60000, 0, 0, 11, 8600, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Nekrum Gutchewer - In Combat - Cast Fevered Plague'),
(600621, 0, 2, 0, 0, 0, 100, 0, 0, 16000, 12000, 20000, 0, 0, 11, 26141, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Nekrum Gutchewer - In Combat - Cast Hamstring'),
(600621, 0, 3, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 63, 1, 1, 0, 0, 0, 0, 19, 7604, 100, 0, 0, 0, 0, 0, 0, 'Nekrum Gutchewer - On Death - Set Counter');
