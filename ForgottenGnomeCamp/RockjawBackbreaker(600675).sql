DELETE FROM `creature_template` WHERE (`entry` = 600675);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600675, 0, 0, 0, 0, 0, 'Rockjaw Backbreaker', 'Delve', NULL, 0, 83, 85, 1, 168, 0, 1, 1.19048, 1, 1, 20, 1, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600675, 0, 0, 0, 0, 169, 225, 'SmartAI', 1, 1, 38, 1, 0.97, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600675);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600675, 0, 723, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600675);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600675, 0, 3019, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600675);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600675, 1, 3326, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600675);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600675, 1, 1001115, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 11-15'),
(600675, 2, 1011112, 5, 0, 1, 0, 1, 1, 'World Drop - White World Drop - NPC Levels: 11-12'),
(600675, 3, 1021112, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 11-12'),
(600675, 4, 1051120, 0.5, 0, 1, 0, 1, 1, 'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600675, 5, 1061019, 3, 0, 1, 0, 1, 1, 'World Drop - Potions I - NPC Levels 10-19'),
(600675, 6, 1070518, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls I - NPC Levels 5-18'),
(600675, 7, 1080002, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600675, 9, 1080014, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 11-14'),
(600675, 117, 0, 9, 0, 1, 0, 1, 1, 'Rockjaw Backbreaker - Tough Jerky'),
(600675, 118, 0, 3, 0, 1, 0, 1, 2, 'Rockjaw Backbreaker - Minor Healing Potion'),
(600675, 159, 0, 4, 0, 1, 0, 1, 2, 'Rockjaw Backbreaker - Refreshing Spring Water'),
(600675, 2064, 0, 6, 0, 1, 0, 1, 1, 'Rockjaw Backbreaker - Trogg Club'),
(600675, 2589, 0, 33, 0, 1, 0, 1, 2, 'Rockjaw Backbreaker - Linen Cloth'),
(600675, 2591, 0, 22, 0, 1, 0, 1, 1, 'Rockjaw Backbreaker - Dirty Trogg Cloth');

DELETE FROM `creature` WHERE (`id1` = 600675);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001534, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5900.88, 844.709, 485.762, 2.27794, 300, 10, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001535, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5860, 867.992, 485.762, 0.335253, 300, 10, 0, 427028, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001536, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5927.51, 867.104, 485.764, 3.54101, 300, 10, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001553, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5900.42, 714.621, 485.767, 4.23915, 300, 0, 0, 416160, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001554, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5867.32, 705.859, 485.767, 0.0602062, 300, 10, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001555, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5837.37, 734.235, 485.767, 0.578255, 300, 10, 0, 427028, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001570, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5934.15, 518.698, 505.729, 2.45487, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600675;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600675);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600675, 0, 0, 1, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 3019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Backbreaker - Between 0-20% Health - Cast \'Frenzy\' (No Repeat)');

