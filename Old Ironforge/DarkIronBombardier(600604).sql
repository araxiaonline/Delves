DELETE FROM `creature_template` WHERE (`entry` = 600604);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600604, 0, 0, 0, 0, 0, 'Dark Iron Bombardier', 'Delve', NULL, 0, 82, 82, 0, 128, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600604, 600604, 0, 0, 0, 30, 180, 'SmartAI', 0, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600604);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600604, 0, 3954, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600604);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600604, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600604);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600604, 0, 8858, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600604);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600604, 1, 2884, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600604);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600604, 1, 1003140, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 31-40'),
(600604, 2, 1023031, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 30-31'),
(600604, 3, 1033031, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 30-31'),
(600604, 4, 1053140, 0.4, 0, 1, 0, 1, 1, 'World Drop - 12 Slot Bag - NPC Levels: 31-40'),
(600604, 5, 1063039, 3, 0, 1, 0, 1, 1, 'World Drop - Potions III - NPC Levels 30-39'),
(600604, 6, 1071930, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls II - NPC Levels 19-30'),
(600604, 7, 1080003, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~25'),
(600604, 9, 1080019, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 31-35'),
(600604, 1708, 0, 2.1415, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Sweet Nectar'),
(600604, 2592, 0, 3.6778, 0, 1, 0, 1, 3, 'Dark Iron Bombardier - Wool Cloth'),
(600604, 4306, 0, 29.4227, 0, 1, 0, 1, 2, 'Dark Iron Bombardier - Silk Cloth'),
(600604, 4338, 0, 1.9, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Mageweave Cloth'),
(600604, 4539, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Goldenbark Apple'),
(600604, 4544, 0, 5.2607, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Mulgore Spice Bread'),
(600604, 4614, 0, 0.0466, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Pendant of Myzrael'),
(600604, 4633, 0, 0.0466, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Heavy Bronze Lockbox'),
(600604, 4634, 0, 0.0931, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Iron Lockbox'),
(600604, 8364, 0, 0.02, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Mithril Head Trout');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600604);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600604, 4542, 0, 3.5714, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Moist Cornbread'),
(600604, 5374, 0, 7.1429, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Small Pocket Watch'),
(600604, 16882, 0, 21.4286, 0, 1, 0, 1, 1, 'Dark Iron Bombardier - Battered Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600604);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001056, 600604, 0, 0, 0, 0, 0, 1, 1, 1, -4841.03, -1003.64, 446.333, 0.818161, 300, 2, 0, 9930, 4169, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001077, 600604, 0, 0, 0, 0, 0, 1, 1, 1, -4882.06, -1081.95, 478.867, 4.32754, 300, 2, 0, 9930, 4169, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001078, 600604, 0, 0, 0, 0, 0, 1, 1, 1, -4885.6, -1074.41, 478.867, 4.53583, 300, 3, 0, 9930, 4169, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600604;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600604);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600604, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 5, 30, 11, 8858, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Bombardier - Within 5-30 Range - Cast \'Bomb\'');
