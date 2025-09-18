DELETE FROM `creature_template` WHERE (`entry` = 600639);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600639, 0, 0, 0, 0, 0, 'Rock-Ogre Flesheater', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 18, 0.78, 1, 0, 34.3, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600639, 600639, 0, 0, 0, 8, 58, 'SmartAI', 1, 1, 75, 1, 1, 1, 0, 0, 1, 528, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600639);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600639, 0, 19905, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600639);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600639, 0, 8599, 12340),
(600639, 1, 8016, 0),
(600639, 2, 3393, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600639);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600639, 1, 17942, 0, 0, 18019);

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600639);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600639, 858, 0, 1.5152, 0, 1, 0, 1, 1, 'Murloc Flesheater - Lesser Healing Potion'),
(600639, 5371, 0, 7.5758, 0, 1, 0, 1, 1, 'Murloc Flesheater - Piece of Coral'),
(600639, 6289, 0, 6.0606, 0, 1, 0, 1, 2, 'Murloc Flesheater - Raw Longjaw Mud Snapper');

DELETE FROM `creature` WHERE (`id1` = 600639);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001220, 600639, 0, 0, 904, 0, 0, 1, 1, 1, -7269.01, -735.267, 296.476, 1.86264, 300, 6, 0, 478252, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001227, 600639, 0, 0, 904, 0, 0, 1, 1, 1, -7236.66, -672.224, 285.393, 4.5589, 300, 5, 0, 478252, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001230, 600639, 0, 0, 904, 0, 0, 1, 1, 1, -7241.57, -613.237, 289.921, 4.9139, 300, 0, 0, 478252, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001236, 600639, 0, 0, 904, 0, 0, 1, 1, 1, -7344.24, -616.136, 287.36, 0.346096, 300, 8, 0, 478252, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001244, 600639, 0, 0, 904, 0, 0, 1, 1, 1, -7335.3, -677.91, 284.118, 0.578415, 300, 6, 0, 478252, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001248, 600639, 0, 0, 904, 0, 0, 1, 1, 1, -7356.45, -698.003, 297.161, 4.73434, 300, 3, 0, 478252, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600639;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600639);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600639, 0, 0, 0, 0, 0, 100, 0, 9000, 12000, 25700, 30700, 0, 0, 11, 3393, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Flesheater - In Combat - Cast \'Consume Flesh\''),
(600639, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Flesheater - Between 0-15% Health - Flee For Assist (No Repeat)'),
(600639, 0, 2, 0, 0, 0, 100, 0, 4000, 8000, 9000, 14000, 0, 0, 11, 8016, 32, 0, 0, 0, 0, 5, 0, 0, 0, 8016, 0, 0, 0, 0, 'Rock-Ogre Flesheater - In Combat - Cast \'Spirit Decay\''),
(600639, 0, 3, 0, 2, 0, 100, 1, 5, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Flesheater - Between 5-30% Health - Cast \'Enrage\' (No Repeat)');
