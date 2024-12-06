DELETE FROM `creature_template` WHERE (`entry` = 600682);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600682, 0, 0, 0, 0, 0, 'Felrage Soothsayer', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 22, 2000, 1500, 1, 1, 8, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600682, 600682, 0, 0, 0, 952, 1249, 'SmartAI', 1, 1, 22.4, 30, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600682);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600682, 0, 18395, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600682);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600682, 0, 30923, 12340),
(600682, 1, 31555, 12340),
(600682, 2, 15791, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600682);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600682, 942, 0, 4, 0, 5, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600682);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600682, 1, 12328, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600682);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600682, 5760, 0, 0.2813, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Eternium Lockbox'),
(600682, 17057, 0, 30.0042, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Shiny Fish Scales'),
(600682, 22903, 0, 0.12, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Recipe: Insane Strength Potion'),
(600682, 23884, 0, 0.12, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Schematic: Mana Potion Injector'),
(600682, 24000, 24000, 5, 0, 1, 1, 1, 1, 'Coilfang Soothsayer - (ReferenceTable)'),
(600682, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Coilfang Soothsayer - (ReferenceTable)'),
(600682, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Coilfang Soothsayer - (ReferenceTable)'),
(600682, 24003, 24003, 1, 0, 1, 1, 1, 1, 'Coilfang Soothsayer - (ReferenceTable)'),
(600682, 24009, 24009, 1, 0, 1, 1, 1, 1, 'Coilfang Soothsayer - (ReferenceTable)'),
(600682, 24023, 24023, 1, 0, 1, 1, 1, 1, 'Coilfang Soothsayer - (ReferenceTable)'),
(600682, 24368, 0, 6, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Coilfang Armaments'),
(600682, 24476, 0, 27.5848, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Jaggal Clam'),
(600682, 27858, 0, 4.7264, 0, 1, 0, 1, 3, 'Coilfang Soothsayer - Sunspring Carp'),
(600682, 27860, 0, 0.7737, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Purified Draenic Water'),
(600682, 28399, 0, 0.9847, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Filtered Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600682);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600682, 22829, 0, 1.7857, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Super Healing Potion'),
(600682, 27858, 0, 3.5714, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Sunspring Carp'),
(600682, 29569, 0, 10.7143, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Strong Junkbox'),
(600682, 29576, 0, 8.9286, 0, 1, 0, 1, 1, 'Coilfang Soothsayer - Shark Bait');

DELETE FROM `creature` WHERE (`id1` = 600682);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001597, 600682, 0, 0, 1, 0, 0, 1, 1, 1, 9720.12, -229.972, -18.7267, 3.49271, 300, 10, 0, 167380, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001601, 600682, 0, 0, 1, 0, 0, 1, 1, 1, 9652.97, -168.815, -19.5617, 1.5794, 300, 10, 0, 167380, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001605, 600682, 0, 0, 1, 0, 0, 1, 1, 1, 9675.31, -129.322, -20.277, 0.753091, 300, 10, 0, 167380, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001607, 600682, 0, 0, 1, 0, 0, 1, 1, 1, 9731.91, -136.1, -19.4957, 3.7656, 300, 0, 0, 167380, 279900, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001609, 600682, 0, 0, 1, 0, 0, 1, 1, 1, 9752.83, -132.129, -19.4714, 4.15147, 300, 10, 0, 167380, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001611, 600682, 0, 0, 1, 0, 0, 1, 1, 1, 9773.04, -178.922, -13.3727, 5.38517, 300, 0, 0, 167380, 279900, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001636, 600682, 0, 0, 1, 0, 0, 1, 1, 1, 9738.14, -38.4565, 15.285, 6.15779, 300, 0, 0, 167380, 279900, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600682;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600682);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600682, 0, 1, 0, 0, 0, 100, 0, 9950, 12150, 23100, 24300, 0, 0, 11, 15790, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Felrage Soothsayer - In Combat - Cast \'Arcane Missiles\''),
(600682, 0, 2, 0, 0, 0, 100, 0, 19400, 27600, 26500, 42300, 0, 0, 11, 31555, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Felrage Soothsayer - In Combat - Cast \'Decayed Intellect\''),
(600682, 0, 3, 0, 0, 0, 100, 0, 20650, 25500, 23100, 24300, 0, 0, 11, 30923, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Felrage Soothsayer - In Combat - Cast \'Domination\'');
