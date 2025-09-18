DELETE FROM `creature_template` WHERE (`entry` = 600651);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600651, 0, 0, 0, 0, 0, 'Deadwood Gardener', 'Delve', NULL, 0, 83, 85, 1, 168, 0, 3.2, 1.71429, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 36829, 0, 0, 0, 0, 145, 195, 'SmartAI', 1, 1, 25, 10, 0.97, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600651);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600651, 0, 3028, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600651);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600651, 0, 12160, 12340),
(600651, 1, 11986, 12340),
(600651, 2, 13583, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600651);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600651, 576, 0, 5, 0, 20, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600651);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600651, 1, 3346, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 36829);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(36829, 1, 35069, 100, 0, 1, 0, 1, 2, 'Deathspeaker High Priest - (ReferenceTable)');


DELETE FROM `creature` WHERE (`id1` = 600651);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001309, 600651, 0, 0, 610, 0, 0, 1, 1, 1, -6250.44, -841.222, 401.34, 3.30033, 300, 6, 0, 230560, 44500, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001315, 600651, 0, 0, 610, 0, 0, 1, 1, 1, -6271.94, -769.285, 401.418, 3.75797, 300, 9, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001325, 600651, 0, 0, 610, 0, 0, 1, 1, 1, -6182.35, -811.644, 424.477, 0.959122, 300, 5, 0, 224757, 43550, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001334, 600651, 0, 0, 610, 0, 0, 1, 1, 1, -6149.94, -737.519, 425.324, 3.52117, 300, 3, 0, 230560, 44500, 1, 0, 0, 0, '', NULL, 0, NULL);




UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600651;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600651);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600651, 0, 0, 0, 0, 0, 100, 1, 0, 0, 5000, 5000, 0, 0, 11, 13583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Gardener - In Combat - Cast \'Curse of the Deadwood\' (No Repeat)'),
(600651, 0, 1, 0, 2, 0, 100, 0, 0, 70, 15000, 15000, 0, 0, 11, 12160, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Gardener - Between 0-70% Health - Cast \'Rejuvenation\''),
(600651, 0, 2, 0, 2, 0, 100, 0, 0, 30, 10000, 10000, 0, 0, 11, 11986, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Gardener - Between 0-30% Health - Cast \'Healing Wave\'');
