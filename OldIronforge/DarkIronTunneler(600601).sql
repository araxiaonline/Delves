DELETE FROM `creature_template` WHERE (`entry` = 600601);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600601, 0, 0, 0, 0, 0, 'Dark Iron Tunneler', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 1, 1.19048, 1, 1, 20, 1, 1, 0, 36.9, 1000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600601, 600601, 0, 0, 0, 119, 496, 'SmartAI', 1, 1, 38, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600601);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600601, 0, 3488, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600601);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600601, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600601);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600601, 0, 7891, 12340),
(600601, 1, 11971, 12340),
(600601, 2, 7164, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600601);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600601, 1, 1910, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600601);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600601, 1, 1002630, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 26-30'),
(600601, 2, 1022930, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 29-30'),
(600601, 3, 1032930, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 29-30'),
(600601, 4, 1052130, 0.5, 0, 1, 0, 1, 1, 'World Drop - 10 Slot Bag - NPC Levels: 21-30'),
(600601, 5, 1063039, 3, 0, 1, 0, 1, 1, 'World Drop - Potions III - NPC Levels 30-39'),
(600601, 6, 1071930, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls II - NPC Levels 19-30'),
(600601, 7, 1080003, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~25'),
(600601, 9, 1080018, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 28-30'),
(600601, 756, 0, 2, 0, 1, 1, 1, 1, 'Dark Iron Tunneler - Tunnel Pick'),
(600601, 1205, 0, 3, 0, 1, 0, 1, 1, 'Dark Iron Tunneler - Melon Juice'),
(600601, 2592, 0, 12, 0, 1, 2, 1, 3, 'Dark Iron Tunneler - Wool Cloth'),
(600601, 4306, 0, 30, 0, 1, 2, 1, 3, 'Dark Iron Tunneler - Silk Cloth'),
(600601, 4542, 0, 6, 0, 1, 0, 1, 1, 'Dark Iron Tunneler - Moist Cornbread'),
(600601, 11150, 0, 1.5, 0, 1, 1, 1, 1, 'Dark Iron Tunneler - Formula: Enchant Gloves - Mining');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600601);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600601, 422, 0, 7.5472, 0, 1, 0, 1, 1, 'Dark Iron Tunneler - Dwarven Mild'),
(600601, 929, 0, 5.6604, 0, 1, 0, 1, 1, 'Dark Iron Tunneler - Healing Potion'),
(600601, 4538, 0, 3.7736, 0, 1, 0, 1, 1, 'Dark Iron Tunneler - Snapvine Watermelon'),
(600601, 4542, 0, 5.6604, 0, 1, 0, 1, 1, 'Dark Iron Tunneler - Moist Cornbread'),
(600601, 5374, 0, 13.2075, 0, 1, 0, 1, 1, 'Dark Iron Tunneler - Small Pocket Watch'),
(600601, 16882, 0, 13.2075, 0, 1, 0, 1, 1, 'Dark Iron Tunneler - Battered Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600601);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001033, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4820.81, -936.792, 399.042, 4.82198, 300, 10, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001036, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4807.91, -983.011, 399.042, 0.901581, 300, 5, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001041, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4848.85, -1003.57, 415.72, 1.47939, 300, 4, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001055, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4846.47, -988.616, 445.045, 1.63646, 300, 3, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001057, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4838.46, -997.009, 446.823, 2.64052, 300, 3, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001058, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4836.97, -1008.55, 446.455, 4.8262, 300, 3, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001072, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4859.65, -1091.25, 468.768, 0.543809, 300, 3, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001074, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4853.99, -1083.66, 465.363, 5.99117, 300, 4, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001075, 600601, 0, 0, 0, 0, 0, 1, 1, 1, -4874.01, -1092.03, 475.813, 6.2502, 300, 5, 0, 235835, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600601;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600601);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600601, 0, 1, 0, 0, 0, 100, 0, 500, 1000, 1300, 5000, 0, 0, 11, 7164, 33, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Tunneler - In Combat - Cast \'Defensive Stance\''),
(600601, 0, 2, 0, 0, 0, 100, 512, 2000, 8500, 18000, 22000, 0, 0, 11, 7891, 3, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Tunneler - In Combat - Cast \'Gift of Ragnaros\''),
(600601, 0, 3, 0, 0, 0, 100, 0, 3100, 12400, 8900, 15900, 0, 0, 11, 11971, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Tunneler - In Combat - Cast \'Sunder Armor\''),
(600601, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Tunneler - Between 0-15% Health - Flee For Assist (No Repeat)');
