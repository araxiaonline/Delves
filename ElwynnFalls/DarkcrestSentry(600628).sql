DELETE FROM `creature_template` WHERE (`entry` = 600628);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600628, 0, 0, 0, 0, 0, 'Darkcrest Sentry', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 4, 31.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 4, 0, 600628, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 60, 0, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600628, 0, 4606, 1, 1, 12340);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600628, 1, 6001, 95, 0, 1, 0, 1, 1, 'Darkcrest Sentry - (ReferenceTable)'),
(600628, 7080, 0, 1, 0, 1, 0, 1, 2, 'Darkcrest Sentry - Essence of Water'),
(600628, 22578, 0, 15, 0, 1, 0, 1, 2, 'Darkcrest Sentry - Mote of Water'),
(600628, 24507, 0, 70, 0, 1, 1, 1, 1, 'Darkcrest Sentry - Elemental Shard'),
(600628, 24510, 0, 15, 0, 1, 1, 1, 1, 'Darkcrest Sentry - Primordial Core');

INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001186, 600628, 0, 0, 0, 0, 0, 1, 1, 0, -8514.78, -479.521, 141.974, 0.770176, 300, 13, 0, 382602, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001204, 600628, 0, 0, 0, 0, 0, 1, 1, 0, -8633.67, -491.319, 142.035, 1.51889, 300, 5, 0, 382602, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001212, 600628, 0, 0, 0, 0, 0, 1, 1, 0, -8603.63, -488.587, 142.081, 6.08095, 300, 5, 0, 382602, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600628;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600628);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600628, 0, 0, 0, 2, 0, 100, 1, 5, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Darkcrest Sentry - Between 5-20% Health - Flee For Assist (No Repeat)');
