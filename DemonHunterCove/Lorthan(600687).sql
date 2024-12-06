DELETE FROM `creature_template` WHERE (`entry` = 600687);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600687, 0, 0, 0, 0, 0, 'Lorthan', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 38, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600687, 600687, 0, 0, 0, 399, 1620, 'SmartAI', 1, 1, 110.7, 40, 1.2, 2, 0, 0, 1, 646659935, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600687);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600687, 0, 20122, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600687);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600687, 0, 39262, 0),
(600687, 1, 37683, 0),
(600687, 2, 39135, 0),
(600687, 3, 36298, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600687);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600687, 1, 30208, 30209, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600687);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600687, 19281, 0, 0.2188, 0, 1, 0, 1, 1, 'Netharel - Five of Portals'),
(600687, 21877, 0, 29.5405, 0, 1, 0, 2, 3, 'Netharel - Netherweave Cloth'),
(600687, 22903, 0, 0.2, 0, 1, 0, 1, 1, 'Netharel - Recipe: Insane Strength Potion'),
(600687, 23884, 0, 0.2, 0, 1, 0, 1, 1, 'Netharel - Schematic: Mana Potion Injector'),
(600687, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Netharel - (ReferenceTable)'),
(600687, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Netharel - (ReferenceTable)'),
(600687, 24009, 24009, 1, 0, 1, 1, 1, 1, 'Netharel - (ReferenceTable)'),
(600687, 24011, 24011, 1, 0, 1, 1, 1, 1, 'Netharel - (ReferenceTable)'),
(600687, 24012, 24012, 0.5, 0, 1, 1, 1, 1, 'Netharel - (ReferenceTable)'),
(600687, 24035, 24035, 2, 0, 1, 1, 1, 1, 'Netharel - (ReferenceTable)'),
(600687, 24093, 24093, 0.5, 0, 1, 1, 1, 1, 'Netharel - (ReferenceTable)'),
(600687, 27857, 0, 3.7199, 0, 1, 0, 1, 1, 'Netharel - Garadar Sharp'),
(600687, 27860, 0, 1.7505, 0, 1, 0, 1, 1, 'Netharel - Purified Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600687);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600687, 29569, 0, 6.6667, 0, 1, 0, 1, 1, 'Netharel - Strong Junkbox'),
(600687, 29571, 0, 13.3333, 0, 1, 0, 1, 1, 'Netharel - A Steamy Romance Novel');

DELETE FROM `creature` WHERE (`id1` = 600687);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001615, 600687, 0, 0, 1, 0, 0, 1, 1, 1, 9703.34, -17.6931, 16.5886, 6.14492, 300, 0, 0, 677484, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600687;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600687);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600687, 0, 0, 0, 0, 0, 100, 0, 5000, 15000, 25000, 35000, 0, 0, 11, 39262, 32, 0, 0, 0, 0, 5, 0, 0, 0, 39262, 0, 0, 0, 0, 'Lorthan - In Combat - Cast \'Mana Burn\''),
(600687, 0, 1, 0, 2, 0, 100, 1, 20, 80, 0, 0, 0, 0, 11, 37683, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lorthan - Between 20-80% Health - Cast \'Evasion\' (No Repeat)'),
(600687, 0, 2, 0, 0, 0, 100, 0, 10000, 20000, 30000, 40000, 0, 0, 11, 39135, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Lorthan - In Combat - Cast \'Debilitating Strike\''),
(600687, 0, 3, 0, 2, 0, 100, 1, 45, 50, 0, 0, 0, 0, 11, 36298, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lorthan - Between 45-50% Health - Cast \'Metamorphosis\' (No Repeat)');
