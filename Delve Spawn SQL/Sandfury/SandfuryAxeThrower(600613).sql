DELETE FROM `creature_template` WHERE (`entry` = 600613);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600613, 0, 0, 0, 0, 0, 'Sandfury Axe Thrower', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 1, 1.42857, 1, 1, 20, 1, 1, 0, 7, 2000, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 72, 600613, 600613, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 8.4, 1, 1, 1, 0, 144, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600613);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600613, 0, 22273, 1, 1, 12340),
(600613, 1, 22274, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600613);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600613, 1, 33981, 0, 28972, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600613);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600613, 21877, 0, 16.705, 0, 1, 0, 2, 3, 'Amani\'shi Axe Thrower - Netherweave Cloth'),
(600613, 22903, 0, 0.2, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Recipe: Insane Strength Potion'),
(600613, 23107, 0, 0.116, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Shadow Draenite'),
(600613, 23112, 0, 0.116, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Golden Draenite'),
(600613, 23117, 0, 0.058, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Azure Moonstone'),
(600613, 23884, 0, 0.2, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Schematic: Mana Potion Injector'),
(600613, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Amani\'shi Axe Thrower - (ReferenceTable)'),
(600613, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Amani\'shi Axe Thrower - (ReferenceTable)'),
(600613, 24011, 24011, 1, 0, 1, 1, 1, 1, 'Amani\'shi Axe Thrower - (ReferenceTable)'),
(600613, 24013, 24013, 1, 0, 1, 1, 1, 1, 'Amani\'shi Axe Thrower - (ReferenceTable)'),
(600613, 24014, 24014, 0.5, 0, 1, 1, 1, 1, 'Amani\'shi Axe Thrower - (ReferenceTable)'),
(600613, 24015, 24015, 0.1, 0, 1, 1, 1, 1, 'Amani\'shi Axe Thrower - (ReferenceTable)'),
(600613, 24035, 24035, 2, 0, 1, 1, 1, 1, 'Amani\'shi Axe Thrower - (ReferenceTable)'),
(600613, 27854, 0, 3.551, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Smoked Talbuk Venison'),
(600613, 27860, 0, 1.455, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Purified Draenic Water'),
(600613, 29549, 0, 0.116, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Codex: Prayer of Fortitude III'),
(600613, 31837, 0, 0.058, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Codex: Prayer of Shadow Protection II'),
(600613, 31884, 0, 0.058, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Five of Blessings'),
(600613, 31887, 0, 0.058, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Six of Blessings'),
(600613, 31896, 0, 0.058, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Seven of Storms'),
(600613, 31903, 0, 0.058, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Five of Furies'),
(600613, 31912, 0, 0.058, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Five of Lunacy'),
(600613, 33106, 0, 30, 1, 1, 0, 1, 2, 'Amani\'shi Axe Thrower - Forest Troll Tusk'),
(600613, 33865, 0, 31.315, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Amani Hex Stick');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600613);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600613, 22829, 0, 7.143, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Super Healing Potion'),
(600613, 27854, 0, 7.143, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Smoked Talbuk Venison'),
(600613, 29569, 0, 7.143, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - Strong Junkbox'),
(600613, 29570, 0, 7.143, 0, 1, 0, 1, 1, 'Amani\'shi Axe Thrower - A Gnome Effigy');

DELETE FROM `creature` WHERE (`id1` = 600613);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001099, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -13043.7, -1389.27, 57.5174, 0.469989, 300, 2, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001100, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -13034.8, -1396.14, 58.1794, 1.3472, 300, 3, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001103, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -13000.3, -1433.26, 60.1289, 2.11877, 300, 3, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001107, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -13026.5, -1476.88, 57.8723, 2.09474, 300, 6, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001122, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -12911.4, -1417.54, 105.892, 1.06548, 300, 1, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001130, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -12879.1, -1440.35, 114.546, 2.85344, 300, 3, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001135, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -12787.4, -1474.92, 126.495, 2.14612, 300, 3, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001143, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -12866.3, -1473.72, 130.468, 1.67181, 300, 2, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001145, 600613, 0, 0, 905, 0, 0, 1, 1, 1, -12988.9, -1345.82, 53.5724, 3.27504, 300, 5, 0, 91994, 0, 1, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600613;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600613);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600613, 0, 0, 0, 0, 0, 100, 2, 0, 0, 12000, 12000, 0, 0, 11, 31566, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Axe Thrower - In Combat - Cast \'Raptor Strike\' (Normal Dungeon)'),
(600613, 0, 1, 0, 0, 0, 100, 2, 0, 0, 7400, 7400, 0, 0, 11, 35011, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Axe Thrower - In Combat - Cast \'Knockdown\' (Normal Dungeon)'),
(600613, 0, 2, 0, 0, 0, 100, 2, 0, 0, 27000, 27000, 0, 0, 11, 42359, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Axe Thrower - In Combat - Cast \'Axe Volley\' (Normal Dungeon)'),
(600613, 0, 3, 0, 0, 0, 100, 2, 0, 0, 18000, 18000, 0, 0, 11, 42332, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Axe Thrower - In Combat - Cast \'Throw Axe\' (Normal Dungeon)');
