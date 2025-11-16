DELETE FROM `creature_template` WHERE (`entry` = 600663);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600663, 0, 0, 0, 0, 0, 'Ruin Smasher X-98', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 36.9, 2000, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 9, 4, 600663, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 78.6, 20, 1.2, 2, 0, 0, 1, 608908883, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600663);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600663, 0, 6774, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600663);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600663, 0, 16169, 12340),
(600663, 1, 5568, 12340),
(600663, 2, 10887, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600663);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600663, 9309, 0, 5, 1, 1, 0, 8, 10, 'Crowd Pummeler 9-60 - Robo-mechanical Guts'),
(600663, 9327, 0, 1, 0, 1, 0, 1, 1, 'Crowd Pummeler 9-60 - Security DELTA Data Access Card'),
(600663, 9449, 0, 40, 0, 1, 1, 1, 1, 'Crowd Pummeler 9-60 - Manual Crowd Pummeler'),
(600663, 9450, 0, 60, 0, 1, 1, 1, 1, 'Crowd Pummeler 9-60 - Gnomebot Operating Boots'),
(600663, 11827, 0, 50, 0, 1, 0, 1, 1, 'Crowd Pummeler 9-60 - Schematic: Lil\' Smoky');

DELETE FROM `creature` WHERE (`id1` = 600663);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001388, 600663, 0, 0, 900, 0, 0, 1, 1, 0, 2866.05, 2296.91, 203.115, 3.87801, 300, 0, 0, 481032, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600663;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600663);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600663, 0, 1, 0, 0, 0, 100, 0, 11000, 11000, 14000, 17000, 0, 0, 11, 10887, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Ruin Smasher X-98 - In Combat - Cast \'Crowd Pummel\''),
(600663, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 15000, 15000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ruin Smasher X-98 - In Combat - Cast \'Trample\''),
(600663, 0, 3, 0, 0, 0, 100, 0, 3000, 5000, 8000, 12000, 0, 0, 11, 8374, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Ruin Smasher X-98 - In Combat - Cast \'Arcing Smash\'');
