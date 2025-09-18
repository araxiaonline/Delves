DELETE FROM `creature_template` WHERE (`entry` = 600698);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600698, 0, 0, 0, 0, 0, 'Ghubo', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1.8, 3, 0, 82, 2800, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 6, 4, 600698, 0, 0, 0, 0, 259, 873, 'SmartAI', 1, 1, 130.3, 1, 1, 2, 0, 0, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600698);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600698, 0, 7864, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600698);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600698, 0, 16345, 12340),
(600698, 1, 12795, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600698);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600698, 1708, 0, 2, 0, 1, 0, 1, 1, 'Glutton - Sweet Nectar'),
(600698, 4306, 0, 20, 0, 1, 0, 1, 4, 'Glutton - Silk Cloth'),
(600698, 4338, 0, 4, 0, 1, 0, 1, 3, 'Glutton - Mageweave Cloth'),
(600698, 4607, 0, 3, 0, 1, 0, 1, 1, 'Glutton - Delicious Cave Mold'),
(600698, 7972, 0, 2, 0, 1, 0, 1, 1, 'Glutton - Ichor of Undeath'),
(600698, 10772, 0, 0, 0, 1, 1, 1, 1, 'Glutton - Glutton\'s Cleaver'),
(600698, 10774, 0, 0, 0, 1, 1, 1, 1, 'Glutton - Fleshhide Shoulders');

DELETE FROM `creature` WHERE (`id1` = 600698);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001761, 600698, 0, 0, 906, 0, 0, 1, 1, 0, -1943.31, -4155.16, 2.0325, 1.17292, 300, 8, 0, 336600, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600698;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600698);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600698, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12627, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghubo - On Reset - Cast \'Disease Cloud\''),
(600698, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12795, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghubo - MISSING LINK - Cast \'Frenzy\'');
