DELETE FROM `creature_template` WHERE (`entry` = 600610);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600610, 0, 0, 0, 0, 0, 'Dark Iron Lookout', 'Delve', NULL, 0, 82, 82, 0, 128, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600610, 600610, 0, 0, 0, 80, 537, 'SmartAI', 1, 1, 25, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600610);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600610, 0, 7865, 1, 1, 12340),
(600610, 1, 7866, 1, 1, 12340),
(600610, 2, 7867, 1, 1, 12340),
(600610, 3, 7868, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600610);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600610, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600610);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600610, 0, 6660, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600610);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600610, 1, 1896, 0, 2552, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600610);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600610, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600610, 2, 1024748, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 47-48'),
(600610, 3, 1034748, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 47-48'),
(600610, 4, 1044748, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 47-48'),
(600610, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600610, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600610, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600610, 8, 1080006, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~48'),
(600610, 9, 1080022, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 46-62'),
(600610, 1645, 0, 2.243, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Moonberry Juice'),
(600610, 4338, 0, 34.7309, 0, 1, 0, 1, 3, 'Dark Iron Lookout - Mageweave Cloth'),
(600610, 4599, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Cured Ham Steak'),
(600610, 4601, 0, 4.841, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Soft Banana Bread'),
(600610, 4602, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Moon Harvest Pumpkin'),
(600610, 4638, 0, 0.1595, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Reinforced Steel Lockbox'),
(600610, 10551, 0, 80, 1, 1, 0, 1, 1, 'Dark Iron Lookout - Thorium Plated Dagger'),
(600610, 11818, 0, 3, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Grimesilt Outhouse Key'),
(600610, 18960, 0, 100, 1, 1, 0, 1, 1, 'Dark Iron Lookout - Lookout\'s Spyglass'),
(600610, 22528, 0, 17.8516, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Dark Iron Scraps');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600610);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600610, 3927, 0, 4.1534, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Fine Aged Cheddar'),
(600610, 3928, 0, 4.1534, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Superior Healing Potion'),
(600610, 4601, 0, 1.9169, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Soft Banana Bread'),
(600610, 4602, 0, 3.1949, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Moon Harvest Pumpkin'),
(600610, 5432, 0, 8.6262, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Hickory Pipe'),
(600610, 7909, 0, 0.3195, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Aquamarine'),
(600610, 16884, 0, 9.4249, 0, 1, 0, 1, 1, 'Dark Iron Lookout - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600610);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001067, 600610, 0, 0, 0, 0, 0, 1, 1, 1, -4848.99, -999.447, 454.31, 3.90343, 300, 0, 0, 155155, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001069, 600610, 0, 0, 0, 0, 0, 1, 1, 1, -4824.99, -1083.23, 456.683, 1.38513, 300, 0, 0, 155155, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600610;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600610);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600610, 0, 0, 0, 0, 0, 100, 0, 0, 0, 1200, 2400, 0, 0, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Lookout - In Combat - Cast \'Shoot\''),
(600610, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Lookout - Between 0-15% Health - Flee For Assist (No Repeat)');
