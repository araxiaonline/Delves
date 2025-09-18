DELETE FROM `creature_template` WHERE (`entry` = 600640);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600640, 0, 0, 0, 0, 0, 'Rock-Ogre Hurler', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1.6, 1.14286, 1, 1, 20, 0.78, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600640, 600640, 0, 0, 0, 176, 235, 'SmartAI', 1, 1, 40, 10, 1, 1, 0, 51, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600640);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600640, 0, 19755, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600640);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600640, 0, 34932, 12340),
(600640, 1, 13787, 12340),
(600640, 2, 20825, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600640);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600640, 1, 3361, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600640);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600640, 25, 0, 0.04, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Worn Shortsword'),
(600640, 19232, 0, 0.0069, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Four of Beasts'),
(600640, 19270, 0, 0.0069, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Three of Elementals'),
(600640, 19279, 0, 0.0069, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Three of Portals'),
(600640, 19280, 0, 0.0276, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Four of Portals'),
(600640, 21877, 0, 35.605, 0, 1, 0, 1, 3, 'Bloodmaul Warlock - Netherweave Cloth'),
(600640, 22903, 0, 0.03, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Recipe: Insane Strength Potion'),
(600640, 23884, 0, 0.03, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Schematic: Mana Potion Injector'),
(600640, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 24005, 24005, 1, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 24007, 24007, 1, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 24008, 24008, 0.5, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 24009, 24009, 1, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 24010, 24010, 0.5, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 24012, 24012, 0.5, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 24035, 24035, 2, 0, 1, 1, 1, 1, 'Bloodmaul Warlock - (ReferenceTable)'),
(600640, 27854, 0, 4.6513, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Smoked Talbuk Venison'),
(600640, 27860, 0, 2.1568, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Purified Draenic Water'),
(600640, 31917, 0, 0.0069, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Three of Lunacy'),
(600640, 31952, 0, 0.04, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Khorium Lockbox');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600640);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600640, 22829, 0, 1.5491, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Super Healing Potion'),
(600640, 23077, 0, 0.3442, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Blood Garnet'),
(600640, 23107, 0, 0.1721, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Shadow Draenite'),
(600640, 27854, 0, 5.1635, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Smoked Talbuk Venison'),
(600640, 29569, 0, 8.9501, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - Strong Junkbox'),
(600640, 29570, 0, 11.1876, 0, 1, 0, 1, 1, 'Bloodmaul Warlock - A Gnome Effigy');

DELETE FROM `creature` WHERE (`id1` = 600640);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001221, 600640, 0, 0, 0, 0, 0, 1, 1, 1, -7246.84, -728.285, 288.041, 2.12017, 300, 4, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001225, 600640, 0, 0, 0, 0, 0, 1, 1, 1, -7253.8, -671.384, 291.605, 5.15172, 300, 0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001233, 600640, 0, 0, 0, 0, 0, 1, 1, 1, -7279.26, -576.488, 292.076, 5.0002, 300, 5, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001239, 600640, 0, 0, 0, 0, 0, 1, 1, 1, -7352.9, -644.368, 294.468, 0.558549, 300, 4, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001245, 600640, 0, 0, 0, 0, 0, 1, 1, 1, -7386.9, -650.067, 286.698, 5.33683, 300, 4, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001251, 600640, 0, 0, 0, 0, 0, 1, 1, 1, -7297.36, -700.891, 296.779, 4.24017, 300, 0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001252, 600640, 0, 0, 0, 0, 0, 1, 1, 1, -7281.83, -707.903, 286.419, 1.64309, 300, 0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600640;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600640);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600640, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 13787, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Hurler - Out of Combat - Cast \'Demon Armor\''),
(600640, 0, 2, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Hurler - Out of Combat - Cast \'Summon Imp\' (No Repeat)'),
(600640, 0, 4, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Hurler - In Combat - Cast \'Shadow Bolt\''),
(600640, 0, 5, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Hurler - Between 0-20% Health - Flee For Assist (No Repeat)');
