DELETE FROM `creature_template` WHERE (`entry` = 600690);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600690, 0, 0, 0, 0, 0, 'Scourge Necromancer', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 22, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600690, 600690, 0, 0, 0, 100, 136, 'SmartAI', 0, 1, 22.4, 30, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600690);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600690, 0, 10427, 1, 1, 12340),
(600690, 1, 10428, 1, 1, 12340),
(600690, 2, 10429, 1, 1, 12340),
(600690, 3, 10430, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600690);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600690, 1, 20812, 12340),
(600690, 0, 12420, 0),
(600690, 2, 16592, 0);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600690);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600690, 529, 0, 5, 0, 10, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600690);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600690, 1, 2559, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600690);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600690, 1, 1005163, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 51-63'),
(600690, 2, 1025455, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 54-55'),
(600690, 3, 1035455, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 54-55'),
(600690, 4, 1045455, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 54-55'),
(600690, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600690, 6, 1065562, 3, 0, 1, 0, 1, 1, 'World Drop - Potions VI - NPC Levels 55-62'),
(600690, 7, 1075062, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls IV - NPC Levels 50-62'),
(600690, 8, 1080007, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~50-63'),
(600690, 9, 1080022, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 46-62'),
(600690, 4306, 0, 0.03, 0, 1, 0, 1, 1, 'Necromancer - Silk Cloth'),
(600690, 5758, 0, 0.3407, 0, 1, 0, 1, 1, 'Necromancer - Mithril Lockbox'),
(600690, 8766, 0, 1.8739, 0, 1, 0, 1, 1, 'Necromancer - Morning Glory Dew'),
(600690, 8932, 0, 5.4514, 0, 1, 0, 1, 1, 'Necromancer - Alterac Swiss'),
(600690, 8948, 0, 0.03, 0, 1, 0, 1, 1, 'Necromancer - Dried King Bolete'),
(600690, 8950, 0, 0.02, 0, 1, 0, 1, 1, 'Necromancer - Homemade Cherry Pie'),
(600690, 8952, 0, 0.06, 0, 1, 0, 1, 1, 'Necromancer - Roasted Quail'),
(600690, 12841, 0, 35, 0, 1, 0, 1, 1, 'Necromancer - Invader\'s Scourgestone'),
(600690, 14047, 0, 33.7308, 0, 1, 0, 1, 3, 'Necromancer - Runecloth'),
(600690, 14507, 0, 0.06, 0, 1, 0, 1, 1, 'Necromancer - Pattern: Mooncloth Shoulders'),
(600690, 15755, 0, 0.02, 0, 1, 0, 1, 1, 'Necromancer - Pattern: Chimeric Vest'),
(600690, 19260, 0, 0.03, 0, 1, 0, 1, 1, 'Necromancer - Three of Warlords'),
(600690, 19261, 0, 0.03, 0, 1, 0, 1, 1, 'Necromancer - Four of Warlords'),
(600690, 19278, 0, 0.02, 0, 1, 0, 1, 1, 'Necromancer - Two of Portals');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600690);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600690, 5432, 0, 25, 0, 1, 0, 1, 1, 'Necromancer - Hickory Pipe');

DELETE FROM `creature` WHERE (`id1` = 600690);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001683, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1851.86, -4174.55, 6.20582, 0.695078, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001684, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1854.88, -4142.1, 10.552, 1.66709, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001705, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1798.06, -4120.41, 15.4735, 5.61264, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001706, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1800.27, -4144.55, 10.8904, 5.1026, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001707, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1814.01, -4190.5, 4.93948, 4.21071, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001711, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1768.83, -4098.1, 17.9411, 4.26246, 300, 0, 0, 100113, 279900, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001718, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1800.38, -4252.38, 2.13484, 2.53591, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001721, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1845.34, -4242.49, 2.13484, 1.29286, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001726, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1719.1, -4131.59, 19.3983, 5.38887, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001727, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1681.59, -4149.41, 17.2583, 6.02174, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001728, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1642.64, -4154.33, 14.9161, 5.37685, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001729, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1645.87, -4181.8, 9.9388, 4.7827, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001730, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1633.95, -4220.45, 4.66497, 4.89085, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001731, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1606.17, -4232.35, 2.66647, 6.22469, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001732, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1595.55, -4200.75, 6.0708, 1.76001, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001733, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1616.18, -4167.31, 11.0801, 2.30076, 300, 10, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001758, 600690, 0, 0, 906, 0, 0, 1, 1, 1, -1742.15, -4113.26, 16.0541, 3.98111, 300, 7, 0, 100113, 279900, 1, 0, 0, 0, '', NULL, 0, NULL);



UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600690;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600690);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600690, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 16592, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Necromancer - Out of Combat - Cast \'Shadowform\' (No Repeat)'),
(600690, 0, 1, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 0, 0, 11, 12420, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Necromancer - Out of Combat - Cast \'Summon Skeletal Servant\' (No Repeat)'),
(600690, 0, 2, 0, 0, 0, 100, 0, 4000, 7000, 20000, 24000, 0, 0, 11, 11443, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Necromancer - In Combat - Cast \'Cripple\'');
