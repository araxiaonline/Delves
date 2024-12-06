DELETE FROM `creature_template` WHERE (`entry` = 600688);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600688, 0, 0, 0, 0, 0, 'Axlenar', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1, 2.14286, 1, 1, 20, 1, 3, 0, 36.28, 1000, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600688, 0, 0, 0, 0, 553, 727, 'SmartAI', 1, 1, 110, 2, 1.3, 1, 0, 0, 1, 613105499, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600688);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600688, 0, 20126, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600688);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600688, 0, 39262, 0),
(600688, 1, 37683, 0),
(600688, 2, 36298, 0),
(600688, 3, 39082, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600688);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600688, 1, 30208, 30209, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600688);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600688, 19272, 0, 0.277, 0, 1, 0, 1, 1, 'Alandien - Five of Elementals'),
(600688, 21877, 0, 22.1607, 0, 1, 0, 2, 3, 'Alandien - Netherweave Cloth'),
(600688, 22903, 0, 0.2, 0, 1, 0, 1, 1, 'Alandien - Recipe: Insane Strength Potion'),
(600688, 23884, 0, 0.2, 0, 1, 0, 1, 1, 'Alandien - Schematic: Mana Potion Injector'),
(600688, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Alandien - (ReferenceTable)'),
(600688, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Alandien - (ReferenceTable)'),
(600688, 24009, 24009, 1, 0, 1, 1, 1, 1, 'Alandien - (ReferenceTable)'),
(600688, 24011, 24011, 1, 0, 1, 1, 1, 1, 'Alandien - (ReferenceTable)'),
(600688, 24012, 24012, 0.5, 0, 1, 1, 1, 1, 'Alandien - (ReferenceTable)'),
(600688, 24035, 24035, 2, 0, 1, 1, 1, 1, 'Alandien - (ReferenceTable)'),
(600688, 27857, 0, 4.7091, 0, 1, 0, 1, 1, 'Alandien - Garadar Sharp'),
(600688, 27860, 0, 1.385, 0, 1, 0, 1, 1, 'Alandien - Purified Draenic Water');

DELETE FROM `creature` WHERE (`id1` = 600688);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001639, 600688, 0, 0, 1, 0, 0, 1, 1, 1, 9715.95, -13.6397, 18.7339, 5.28534, 300, 0, 0, 673200, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600688;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600688);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600688, 0, 0, 0, 0, 0, 100, 0, 5000, 15000, 25000, 35000, 0, 0, 11, 39262, 32, 0, 0, 0, 0, 5, 0, 0, 0, 39262, 0, 0, 0, 0, 'Axlenar - In Combat - Cast \'Mana Burn\''),
(600688, 0, 1, 0, 2, 0, 100, 1, 20, 80, 0, 0, 0, 0, 11, 37683, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Axlenar - Between 20-80% Health - Cast \'Evasion\' (No Repeat)'),
(600688, 0, 2, 0, 2, 0, 100, 1, 45, 50, 0, 0, 0, 0, 11, 36298, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Axlenar - Between 45-50% Health - Cast \'Metamorphosis\' (No Repeat)'),
(600688, 0, 3, 0, 0, 0, 100, 0, 25000, 35000, 55000, 75000, 0, 0, 11, 39082, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Axlenar - In Combat - Cast \'Shadowfury\'');
