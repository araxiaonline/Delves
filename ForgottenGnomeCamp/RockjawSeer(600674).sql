DELETE FROM `creature_template` WHERE (`entry` = 600674);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600674, 0, 0, 0, 0, 0, 'Rockjaw Seer', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 3.2, 1.71429, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600674, 600674, 0, 0, 0, 145, 195, 'SmartAI', 1, 1, 25, 10, 0.97, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600674);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600674, 0, 722, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600674);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600674, 0, 9532, 12340),
(600674, 1, 11986, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600674);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600674, 1, 1907, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600674);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600674, 1, 1003140, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 31-40'),
(600674, 2, 1023738, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 37-38'),
(600674, 3, 1033738, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 37-38'),
(600674, 4, 1043840, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 38-40'),
(600674, 5, 1053140, 0.4, 0, 1, 0, 1, 1, 'World Drop - 12 Slot Bag - NPC Levels: 31-40'),
(600674, 6, 1063039, 3, 0, 1, 0, 1, 1, 'World Drop - Potions III - NPC Levels 30-39'),
(600674, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600674, 8, 1080004, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~35'),
(600674, 9, 1080020, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 36-40'),
(600674, 1708, 0, 2.7494, 0, 1, 0, 1, 1, 'Stonevault Seer - Sweet Nectar'),
(600674, 3771, 0, 4.2839, 0, 1, 0, 1, 1, 'Stonevault Seer - Wild Hog Shank'),
(600674, 4306, 0, 28.9642, 0, 1, 0, 1, 4, 'Stonevault Seer - Silk Cloth'),
(600674, 4338, 0, 4.6675, 0, 1, 0, 1, 3, 'Stonevault Seer - Mageweave Cloth'),
(600674, 4614, 0, 0.04, 0, 1, 0, 1, 1, 'Stonevault Seer - Pendant of Myzrael'),
(600674, 4636, 0, 0.3836, 0, 1, 0, 1, 1, 'Stonevault Seer - Strong Iron Lockbox'),
(600674, 5797, 0, 80, 1, 1, 0, 1, 1, 'Stonevault Seer - Indurium Flake');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600674);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600674, 3771, 0, 3.2258, 0, 1, 0, 1, 1, 'Stonevault Seer - Wild Hog Shank'),
(600674, 5427, 0, 16.129, 0, 1, 0, 1, 1, 'Stonevault Seer - Crude Pocket Watch'),
(600674, 16883, 0, 22.5806, 0, 1, 0, 1, 1, 'Stonevault Seer - Worn Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600674);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001537, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5929.31, 838.868, 485.764, 4.39286, 300, 10, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001538, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5847.79, 884.134, 485.764, 0.900193, 300, 10, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001539, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5789.02, 879.802, 484.104, 2.9482, 300, 10, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001552, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5867.94, 737.816, 485.767, 0.415203, 300, 15, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001560, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5996.41, 679.233, 483.536, 4.61017, 300, 5, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001567, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5922.2, 553.235, 504.045, 3.16001, 300, 10, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001574, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5921.23, 486.077, 510.253, 4.42811, 300, 8, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001579, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5933.88, 447.061, 508.335, 2.09138, 300, 0, 0, 219037, 42620, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001586, 600674, 0, 0, 0, 0, 0, 1, 1, 1, -5880.91, 818.784, 485.764, 3.66657, 300, 6, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600674;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600674);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600674, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3600, 4800, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Seer - In Combat - Cast \'Lightning Bolt\''),
(600674, 0, 1, 0, 74, 0, 80, 1, 0, 0, 0, 0, 40, 0, 11, 11986, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Seer - On Friendly Below 40% Health - Cast \'Healing Wave\' (No Repeat)'),
(600674, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Seer - Between 0-15% Health - Flee For Assist (No Repeat)');
