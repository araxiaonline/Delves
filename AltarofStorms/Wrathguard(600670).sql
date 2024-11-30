DELETE FROM `creature_template` WHERE (`entry` = 600670);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600670, 0, 0, 0, 0, 0, 'Wrathguard', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1.6, 1.14286, 1, 1, 20, 0.78, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600670, 600670, 0, 0, 0, 176, 235, 'SmartAI', 1, 1, 40, 10, 1, 1, 0, 51, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600670);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600670, 0, 20045, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600670);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600670, 0, 33804, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600670);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600670, 1, 10613, 10613, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600670);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600670, 1, 6003, 2, 0, 1, 0, 1, 1, 'Wrathguard - (ReferenceTable)'),
(600670, 2, 6000, 90, 0, 1, 0, 1, 1, 'Wrathguard - (ReferenceTable)'),
(600670, 5759, 0, 0.15, 0, 1, 0, 1, 1, 'Wrathguard - Thorium Lockbox'),
(600670, 13444, 0, 1.5, 0, 1, 0, 1, 1, 'Wrathguard - Major Mana Potion'),
(600670, 13446, 0, 3, 0, 1, 0, 1, 1, 'Wrathguard - Major Healing Potion'),
(600670, 27854, 0, 8, 0, 1, 0, 1, 1, 'Wrathguard - Smoked Talbuk Venison'),
(600670, 28399, 0, 4, 0, 1, 0, 1, 1, 'Wrathguard - Filtered Draenic Water'),
(600670, 28513, 0, 85, 1, 1, 0, 1, 1, 'Wrathguard - Demonic Rune Stone');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600670);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600670, 3928, 0, 2.8749, 0, 1, 0, 1, 1, 'Wrathguard - Superior Healing Potion'),
(600670, 5432, 0, 9.7125, 0, 1, 0, 1, 1, 'Wrathguard - Hickory Pipe'),
(600670, 7910, 0, 0.1554, 0, 1, 0, 1, 1, 'Wrathguard - Star Ruby'),
(600670, 8932, 0, 2.6418, 0, 1, 0, 1, 1, 'Wrathguard - Alterac Swiss'),
(600670, 8950, 0, 2.5641, 0, 1, 0, 1, 1, 'Wrathguard - Homemade Cherry Pie'),
(600670, 8953, 0, 2.4087, 0, 1, 0, 1, 1, 'Wrathguard - Deep Fried Plantains'),
(600670, 16885, 0, 9.1686, 0, 1, 0, 1, 1, 'Wrathguard - Heavy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600670);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001438, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11748.6, -2526.06, -1.70599, 4.37103, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001439, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11761.5, -2552.91, 0.693706, 3.99852, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001440, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11786.9, -2573.08, 0.432271, 3.67807, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001464, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11926.9, -2704.11, 3.95285, 6.16385, 300, 0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001465, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11954.1, -2695.79, -3.75797, 2.49361, 300, 0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001466, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11959.1, -2661.21, -11.6056, 1.59237, 300, 0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001467, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11910.3, -2633.35, -5.38638, 5.23057, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001488, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -12069.6, -2629.83, -37.8307, 1.46638, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001489, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -12047.3, -2630.28, -36.3845, 6.03921, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001490, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -12027, -2665.99, -25.437, 5.48644, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001504, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11963.7, -2394.07, -0.228028, 0.791956, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001505, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11911.1, -2404.46, 2.59451, 5.90019, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001512, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11750.7, -2452.5, -15.3092, 0.0374214, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001513, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11825.5, -2490.71, -23.2311, 3.93331, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001514, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11830.2, -2517.99, -19.1296, 4.06549, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001520, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11895.5, -2551.12, -39.0715, 2.86234, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001521, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11868, -2504.69, -24.1976, 1.25211, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001525, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11953.3, -2578.61, -42.4503, 4.96775, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001526, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11936.2, -2597.65, -42.158, 4.53916, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001527, 600670, 0, 0, 309, 0, 0, 1, 1, 1, -11944.7, -2618.02, -36.8705, 4.59123, 300, 10, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600670;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600670);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600670, 0, 0, 0, 0, 0, 75, 0, 5000, 10000, 15000, 20000, 0, 0, 11, 33804, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Wrathguard - In Combat - Cast \'Flame Wave\'');
