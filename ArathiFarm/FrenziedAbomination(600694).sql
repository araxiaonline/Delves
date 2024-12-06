DELETE FROM `creature_template` WHERE (`entry` = 600694);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600694, 38446, 0, 0, 0, 0, 'Frenzied Abomination', 'Delve', '', 0, 84, 84, 2, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 87.9, 2000, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 6, 72, 600694, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 50, 10, 1, 1, 0, 0, 1, 8388624, 0, 0, '', 11159);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600694);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600694, 0, 16206, 1, 1, 11159);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600694);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600694, 1156, 0, 7, 0, 15, 0, 0, 0, 0);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600694);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600694, 0, 70191, 0),
(600694, 1, 70371, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600694);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600694, 1, 35069, 100, 0, 1, 0, 1, 2, 'Frenzied Abomination - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600694);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001674, 600694, 0, 0, 0, 0, 0, 1, 1, 0, -1978.2, -4118.67, 1.99578, 0.751474, 300, 10, 0, 726220, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001675, 600694, 0, 0, 0, 0, 0, 1, 1, 0, -1900.12, -4154.84, 2.03246, 2.08799, 300, 10, 0, 726220, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001708, 600694, 0, 0, 0, 0, 0, 1, 1, 0, -1779.25, -4167.4, 4.84427, 4.30801, 300, 10, 0, 726220, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600694;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600694);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600694, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 5000, 10000, 0, 0, 11, 70191, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Abomination - In Combat - Cast \'Cleave\''),
(600694, 0, 1, 0, 0, 0, 100, 0, 30000, 45000, 60000, 60000, 0, 0, 11, 70371, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Abomination - In Combat - Cast \'Enrage\'');
