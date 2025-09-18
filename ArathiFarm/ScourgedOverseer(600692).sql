DELETE FROM `creature_template` WHERE (`entry` = 600692);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600692, 0, 0, 0, 0, 0, 'Scourged Overseer', 'Delve', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14287, 1, 1, 20, 1, 1, 0, 28, 2000, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 600692, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 22.4, 30, 1, 1, 0, 0, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600692);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600692, 0, 14698, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600692);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600692, 0, 24110, 12340),
(600692, 1, 31601, 0);


DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600692);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600692, 529, 0, 7, 0, 30, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600692);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600692, 12841, 0, 35, 0, 1, 0, 1, 1, 'Nerubian Overseer - Invader\'s Scourgestone'),
(600692, 15755, 0, 0.11, 0, 1, 0, 1, 1, 'Nerubian Overseer - Pattern: Chimeric Vest'),
(600692, 15765, 0, 0.22, 0, 1, 0, 1, 1, 'Nerubian Overseer - Pattern: Runic Leather Pants'),
(600692, 22525, 0, 100, 0, 1, 0, 1, 1, 'Nerubian Overseer - Crypt Fiend Parts'),
(600692, 24016, 24016, 1, 0, 1, 1, 1, 1, 'Nerubian Overseer - (ReferenceTable)'),
(600692, 24017, 24017, 0.5, 0, 1, 1, 1, 1, 'Nerubian Overseer - (ReferenceTable)'),
(600692, 24018, 24018, 1, 0, 1, 1, 1, 1, 'Nerubian Overseer - (ReferenceTable)'),
(600692, 24033, 24033, 1, 0, 1, 1, 1, 1, 'Nerubian Overseer - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600692);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001678, 600692, 0, 0, 906, 0, 0, 1, 1, 0, -1878.78, -4109.3, 11.0213, 4.9678, 300, 10, 0, 146780, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001679, 600692, 0, 0, 906, 0, 0, 1, 1, 0, -1922.28, -4132.98, 2.03262, 3.51246, 300, 10, 0, 146780, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001704, 600692, 0, 0, 906, 0, 0, 1, 1, 0, -1792.47, -4095.49, 17.9104, 0.747416, 300, 0, 0, 146780, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001724, 600692, 0, 0, 906, 0, 0, 1, 1, 0, -1806.41, -4222.39, 2.81356, 0.410151, 300, 10, 0, 146780, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001725, 600692, 0, 0, 906, 0, 0, 1, 1, 0, -1770.65, -4214.79, 1.99826, 0.545003, 300, 10, 0, 146780, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001757, 600692, 0, 0, 906, 0, 0, 1, 1, 0, -1662.02, -4182.41, 7.66296, 5.49253, 300, 13, 0, 146780, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600692;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600692);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600692, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 13000, 0, 20, 11, 15471, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scourged Overseer - Within 0-20 Range - Cast \'Enveloping Web\''),
(600692, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 7000, 9000, 0, 0, 11, 31601, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scourged Overseer - In Combat - Cast \'Crypt Scarabs\'');
