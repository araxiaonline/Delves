DELETE FROM `creature_template` WHERE (`entry` = 600695);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600695, 0, 0, 0, 0, 0, 'Plaguehound', 'Delve', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 42, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 3, 0, 600695, 0, 600695, 0, 0, 0, 0, 'SmartAI', 1, 1, 17.87, 10, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600695);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600695, 0, 7891, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600695);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600695, 0, 3427, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600695);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600695, 1, 1005163, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 51-63'),
(600695, 2, 1025556, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 55-56'),
(600695, 3, 1035556, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 55-56'),
(600695, 4, 1045556, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 55-56'),
(600695, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600695, 6, 1065562, 3, 0, 1, 0, 1, 1, 'World Drop - Potions VI - NPC Levels 55-62'),
(600695, 7, 1075062, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls IV - NPC Levels 50-62'),
(600695, 8, 1080007, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~50-63'),
(600695, 9, 1080022, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 46-62'),
(600695, 4583, 0, 31.3284, 0, 1, 0, 1, 1, 'Plaguehound - Thick Furry Mane'),
(600695, 4584, 0, 14.5795, 0, 1, 0, 1, 1, 'Plaguehound - Large Trophy Paw'),
(600695, 5758, 0, 0.0845, 0, 1, 0, 1, 1, 'Plaguehound - Mithril Lockbox'),
(600695, 5759, 0, 0.0704, 0, 1, 0, 1, 1, 'Plaguehound - Thorium Lockbox'),
(600695, 8146, 0, 5.8459, 0, 1, 0, 1, 1, 'Plaguehound - Wicked Claw'),
(600695, 12203, 0, 49.7817, 0, 1, 0, 1, 1, 'Plaguehound - Red Wolf Meat'),
(600695, 12208, 0, 49.6267, 0, 1, 0, 1, 1, 'Plaguehound - Tender Wolf Meat'),
(600695, 12693, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Plans: Thorium Boots'),
(600695, 12694, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Plans: Thorium Helm'),
(600695, 12695, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Plans: Radiant Gloves'),
(600695, 12697, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Plans: Radiant Boots'),
(600695, 12704, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Plans: Thorium Leggings'),
(600695, 12713, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Plans: Radiant Leggings'),
(600695, 13490, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Recipe: Greater Stoneshield Potion'),
(600695, 13492, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Recipe: Purification Potion'),
(600695, 14489, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Frostweave Pants'),
(600695, 14491, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Runecloth Pants'),
(600695, 14492, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Felcloth Boots'),
(600695, 14494, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Brightcloth Pants'),
(600695, 14496, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Felcloth Hood'),
(600695, 14498, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Runecloth Headband'),
(600695, 14499, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Mooncloth Bag'),
(600695, 14504, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Runecloth Shoulders'),
(600695, 14506, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Felcloth Robe'),
(600695, 15743, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Heavy Scorpid Belt'),
(600695, 15745, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Runic Leather Belt'),
(600695, 15746, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Chimeric Leggings'),
(600695, 15755, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Chimeric Vest'),
(600695, 15757, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Wicked Leather Pants'),
(600695, 15765, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Pattern: Runic Leather Pants'),
(600695, 16051, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Schematic: Thorium Shells'),
(600695, 16055, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Schematic: Arcane Bomb'),
(600695, 16245, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Formula: Enchant Boots - Greater Agility'),
(600695, 16251, 0, 0.02, 0, 1, 0, 1, 1, 'Plaguehound - Formula: Enchant Bracer - Superior Stamina');

DELETE FROM `skinning_loot_template` WHERE (`Entry` = 600695);
INSERT INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600695, 4304, 0, 41.4656, 0, 1, 1, 1, 1, 'Plaguehound - Thick Leather'),
(600695, 8169, 0, 3.0496, 0, 1, 1, 1, 1, 'Plaguehound - Thick Hide'),
(600695, 8170, 0, 50.66, 0, 1, 1, 1, 1, 'Plaguehound - Rugged Leather'),
(600695, 8171, 0, 4.8248, 0, 1, 1, 1, 1, 'Plaguehound - Rugged Hide');

DELETE FROM `creature` WHERE (`id1` = 600695);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001685, 600695, 0, 0, 906, 0, 0, 1, 1, 0, -1818.88, -4156.81, 9.89482, 1.57095, 300, 0, 0, 117097, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001686, 600695, 0, 0, 906, 0, 0, 1, 1, 0, -1811.29, -4150.57, 9.89495, 3.08622, 300, 0, 0, 117097, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001687, 600695, 0, 0, 906, 0, 0, 1, 1, 0, -1817.55, -4141.94, 9.89495, 4.60565, 300, 0, 0, 117097, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001688, 600695, 0, 0, 906, 0, 0, 1, 1, 0, -1822.86, -4144.92, 9.8951, 5.4769, 300, 0, 0, 117097, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001689, 600695, 0, 0, 906, 0, 0, 1, 1, 0, -1812.96, -4155.31, 9.89494, 2.15772, 300, 0, 0, 117097, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001690, 600695, 0, 0, 906, 0, 0, 1, 1, 0, -1812.38, -4144.1, 9.89512, 3.90668, 300, 0, 0, 117097, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001691, 600695, 0, 0, 906, 0, 0, 1, 1, 0, -1824.01, -4154.84, 9.89527, 0.803483, 300, 0, 0, 117097, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600695;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600695);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600695, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 9000, 14000, 0, 0, 11, 3427, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Plaguehound - In Combat - Cast \'Infected Wound\'');
