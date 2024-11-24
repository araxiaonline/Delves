DELETE FROM `creature_template` WHERE (`entry` = 600606);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600606, 0, 0, 0, 0, 0, 'Dark Iron Sapper', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600606, 0, 0, 0, 0, 20, 50, 'SmartAI', 0, 1, 20, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600606);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600606, 0, 870, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600606);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600606, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600606);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600606, 0, 3204, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600606);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600606, 1, 3774, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600606);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600606, 1, 1001620, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 16-20'),
(600606, 2, 1011717, 1, 0, 1, 0, 1, 1, 'World Drop - White World Drop - NPC Levels: 17-17'),
(600606, 3, 1021717, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 17-17'),
(600606, 4, 1051120, 0.5, 0, 1, 0, 1, 1, 'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600606, 5, 1061019, 3, 0, 1, 0, 1, 1, 'World Drop - Potions I - NPC Levels 10-19'),
(600606, 6, 1070518, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls I - NPC Levels 5-18'),
(600606, 7, 1080002, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600606, 9, 1080015, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 15-19'),
(600606, 1179, 0, 4, 0, 1, 3, 1, 1, 'Dark Iron Sapper - Ice Cold Milk'),
(600606, 2274, 0, 1.1, 0, 1, 1, 1, 1, 'Dark Iron Sapper - Sapper\'s Gloves'),
(600606, 2589, 0, 21, 0, 1, 2, 1, 3, 'Dark Iron Sapper - Linen Cloth'),
(600606, 2592, 0, 24, 0, 1, 2, 1, 2, 'Dark Iron Sapper - Wool Cloth'),
(600606, 4541, 0, 6, 0, 1, 3, 1, 1, 'Dark Iron Sapper - Freshly Baked Bread');

DELETE FROM `creature` WHERE (`id1` = 600606);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001047, 600606, 0, 0, 0, 0, 0, 1, 1, 1, -4812.75, -958.164, 430.015, 2.51517, 300, 2, 0, 124124, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600606;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600606);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600606, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3204, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Sapper - MISSING LINK - Cast \'Sapper Explode\'');
