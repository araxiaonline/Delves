DELETE FROM `creature_template` WHERE (`entry` = 600631);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600631, 0, 0, 0, 0, 0, 'Murloc Hunter', 'Delve', NULL, 0, 83, 83, 0, 128, 0, 1, 1.14286, 1, 1, 18, 1, 1, 0, 7.8, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600631, 600631, 0, 0, 0, 14, 45, 'SmartAI', 1, 1, 12, 15, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600631);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600631, 0, 757, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600631);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600631, 0, 10277, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600631);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600631, 1, 1897, 0, 5870, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600631);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600631, 1, 1001620, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 16-20'),
(600631, 2, 1011617, 1, 0, 1, 0, 1, 1, 'World Drop - White World Drop - NPC Levels: 16-17'),
(600631, 3, 1021617, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 16-17'),
(600631, 4, 1051120, 0.5, 0, 1, 0, 1, 1, 'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600631, 5, 1061019, 3, 0, 1, 0, 1, 1, 'World Drop - Potions I - NPC Levels 10-19'),
(600631, 6, 1070518, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls I - NPC Levels 5-18'),
(600631, 7, 1080002, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600631, 9, 1080015, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 15-19'),
(600631, 730, 0, 35.3831, 0, 1, 0, 1, 1, 'Murloc Hunter - Murloc Eye'),
(600631, 1179, 0, 2.3676, 0, 1, 0, 1, 1, 'Murloc Hunter - Ice Cold Milk'),
(600631, 1357, 0, 1, 0, 1, 0, 1, 1, 'Murloc Hunter - Captain Sanders\' Treasure Map'),
(600631, 1468, 0, 13.201, 0, 1, 0, 1, 1, 'Murloc Hunter - Murloc Fin'),
(600631, 2287, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Hunter - Haunch of Meat'),
(600631, 2698, 0, 0.12, 0, 1, 0, 1, 1, 'Murloc Hunter - Recipe: Cooked Crab Claw'),
(600631, 4359, 0, 0.06, 0, 1, 0, 1, 1, 'Murloc Hunter - Handful of Copper Bolts'),
(600631, 4361, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Hunter - Copper Tube'),
(600631, 4363, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Hunter - Copper Modulator'),
(600631, 4364, 0, 0.12, 0, 1, 0, 1, 1, 'Murloc Hunter - Coarse Blasting Powder'),
(600631, 4405, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Hunter - Crude Scope'),
(600631, 4541, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Hunter - Freshly Baked Bread'),
(600631, 5498, 0, 0.08, 0, 1, 0, 1, 1, 'Murloc Hunter - Small Lustrous Pearl'),
(600631, 5503, 0, 1.92, 0, 1, 0, 1, 1, 'Murloc Hunter - Clam Meat'),
(600631, 5523, 0, 35.8435, 0, 1, 0, 1, 1, 'Murloc Hunter - Small Barnacled Clam'),
(600631, 5784, 0, 17.0996, 0, 1, 0, 1, 1, 'Murloc Hunter - Slimy Murloc Scale'),
(600631, 6289, 0, 5.0641, 0, 1, 0, 1, 3, 'Murloc Hunter - Raw Longjaw Mud Snapper');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600631);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600631, 858, 0, 7.1429, 0, 1, 0, 1, 1, 'Murloc Hunter - Lesser Healing Potion'),
(600631, 5371, 0, 7.1429, 0, 1, 0, 1, 1, 'Murloc Hunter - Piece of Coral');

DELETE FROM `creature` WHERE (`id1` = 600631);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001161, 600631, 0, 0, 0, 0, 0, 1, 1, 1, -8311.99, -320.921, 140.28, 3.0845, 300, 8, 0, 6376, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001164, 600631, 0, 0, 0, 0, 0, 1, 1, 1, -8346.89, -259.137, 140.28, 1.08357, 300, 14, 0, 6376, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001198, 600631, 0, 0, 0, 0, 0, 1, 1, 1, -8678.5, -570.492, 156.221, 4.41598, 300, 14, 0, 6376, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001208, 600631, 0, 0, 0, 0, 0, 1, 1, 1, -8691.95, -515.198, 158.831, 0.405512, 300, 7, 0, 6376, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600631;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600631);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600631, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 8656, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Hunter - Out of Combat - Cast \'Summon Crawler\' (No Repeat)'),
(600631, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2900, 4800, 0, 0, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Hunter - In Combat CMC - Cast \'Throw\''),
(600631, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Hunter - Between 0-15% Health - Flee For Assist (No Repeat)');
