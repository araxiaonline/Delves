DELETE FROM `creature_template` WHERE (`entry` = 600642);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600642, 0, 0, 0, 19991, 0, 'Rock-Ogre Wildarm', 'Delve', NULL, 0, 83, 83, 0, 128, 0, 1.1, 1.14286, 1, 1, 20, 0.78, 1, 0, 31.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600642, 600642, 0, 0, 0, 180, 240, 'SmartAI', 1, 1, 60, 1, 1, 1, 0, 51, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600642);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600642, 0, 10708, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600642);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600642, 0, 34932, 12340),
(600642, 1, 37786, 12340),
(600642, 2, 34802, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600642);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600642, 1, 3361, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600642);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600642, 5760, 0, 0.0537, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Eternium Lockbox'),
(600642, 19230, 0, 0.0114, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Two of Beasts'),
(600642, 19269, 0, 0.0093, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Two of Elementals'),
(600642, 21877, 0, 36.1326, 0, 1, 0, 1, 3, 'Bloodmaul Skirmisher - Netherweave Cloth'),
(600642, 22532, 0, 0.01, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Formula: Enchant Bracer - Restore Mana Prime'),
(600642, 22903, 0, 0.02, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Recipe: Insane Strength Potion'),
(600642, 23884, 0, 0.02, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Schematic: Mana Potion Injector'),
(600642, 24000, 24000, 5, 0, 1, 1, 1, 1, 'Bloodmaul Skirmisher - (ReferenceTable)'),
(600642, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Bloodmaul Skirmisher - (ReferenceTable)'),
(600642, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Bloodmaul Skirmisher - (ReferenceTable)'),
(600642, 24005, 24005, 1, 0, 1, 1, 1, 1, 'Bloodmaul Skirmisher - (ReferenceTable)'),
(600642, 24007, 24007, 1, 0, 1, 1, 1, 1, 'Bloodmaul Skirmisher - (ReferenceTable)'),
(600642, 24035, 24035, 2, 0, 1, 1, 1, 1, 'Bloodmaul Skirmisher - (ReferenceTable)'),
(600642, 27854, 0, 4.3564, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Smoked Talbuk Venison'),
(600642, 27860, 0, 2.1756, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Purified Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600642);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600642, 22829, 0, 2.8861, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Super Healing Potion'),
(600642, 27854, 0, 3.3418, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Smoked Talbuk Venison'),
(600642, 29569, 0, 9.9747, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - Strong Junkbox'),
(600642, 29570, 0, 10.3544, 0, 1, 0, 1, 1, 'Bloodmaul Skirmisher - A Gnome Effigy');

DELETE FROM `creature` WHERE (`id1` = 600642);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001222, 600642, 0, 0, 0, 0, 0, 1, 1, 1, -7241.36, -707.714, 288.221, 4.20022, 300, 4, 0, 382602, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001247, 600642, 0, 0, 0, 0, 0, 1, 1, 1, -7376.94, -691.821, 294.736, 5.53962, 300, 6, 0, 382602, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600642;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600642);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600642, 0, 2, 0, 61, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 34932, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Wildarm - MISSING LINK - Cast \'Bloodmaul Buzz\' (No Repeat)'),
(600642, 0, 3, 0, 2, 0, 100, 1, 20, 80, 0, 0, 0, 0, 11, 34802, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Wildarm - Between 20-80% Health - Cast \'Kick\' (No Repeat)'),
(600642, 0, 4, 0, 2, 0, 100, 1, 5, 30, 0, 0, 0, 0, 11, 37786, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Wildarm - Between 5-30% Health - Cast \'Bloodmaul Rage\' (No Repeat)');
