DELETE FROM `creature_template` WHERE (`entry` = 600686);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600686, 0, 0, 0, 0, 0, 'Prince Sshekj', 'Delve Boss', NULL, 0, 83, 83, 1, 168, 0, 1, 1.42857, 1, 1, 20, 1, 3, 0, 24, 2000, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600686, 0, 0, 0, 0, 1039, 1362, 'SmartAI', 1, 1, 85, 10, 1.1, 1, 0, 0, 1, 1105, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600686);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600686, 0, 6763, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600686);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600686, 0, 43107, 0),
(600686, 1, 17687, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600686);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600686, 1, 5747, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600686);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600686, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600686, 2, 1024141, 100, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 41-41'),
(600686, 3, 1034141, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 41-41'),
(600686, 4, 1044141, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 41-41'),
(600686, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600686, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600686, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600686, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600686, 9, 1080021, 0.3, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels 41-45'),
(600686, 1404, 0, 50, 0, 1, 0, 1, 1, 'Prince Nazjak - Tidal Charm'),
(600686, 1708, 0, 1.5385, 0, 1, 0, 1, 1, 'Prince Nazjak - Sweet Nectar'),
(600686, 4637, 0, 1.5385, 0, 1, 0, 1, 1, 'Prince Nazjak - Steel Lockbox'),
(600686, 6362, 0, 1.5385, 0, 1, 0, 3, 3, 'Prince Nazjak - Raw Rockscale Cod'),
(600686, 7072, 0, 7.6923, 0, 1, 0, 1, 1, 'Prince Nazjak - Naga Scale'),
(600686, 7973, 0, 24.6154, 0, 1, 0, 1, 1, 'Prince Nazjak - Big-mouth Clam'),
(600686, 17058, 0, 29.2308, 0, 1, 0, 1, 1, 'Prince Nazjak - Fish Oil');

DELETE FROM `creature` WHERE (`id1` = 600686);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001606, 600686, 0, 0, 1, 0, 0, 1, 1, 1, 9717.8, -129.943, -20.6673, 4.55284, 300, 0, 0, 846260, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600686;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600686);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600686, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 43107, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Prince Sshekj - On Aggro - Cast \'Spear Throw\' (No Repeat)'),
(600686, 0, 1, 0, 0, 0, 100, 0, 3800, 5400, 10900, 13100, 0, 0, 11, 17687, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Prince Sshekj - In Combat - Cast \'Flurry\'');
