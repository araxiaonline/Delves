DELETE FROM `creature_template` WHERE (`entry` = 600681);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600681, 0, 0, 0, 0, 0, 'Felrage Defender', 'Delve', NULL, 0, 83, 83, 1, 168, 0, 1, 1.71429, 1, 1, 20, 1, 1, 0, 30.05, 2000, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600681, 600681, 0, 0, 0, 1294, 1695, 'SmartAI', 1, 1, 28, 1, 1, 1, 0, 0, 1, 13108049, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600681);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600681, 0, 18387, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600681);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600681, 0, 15655, 12340),
(600681, 1, 31554, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600681);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600681, 1, 10614, 1984, 0, 18019);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600681);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600681, 942, 0, 4, 0, 5, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600681);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600681, 5760, 0, 0.3168, 0, 1, 0, 1, 1, 'Coilfang Defender - Eternium Lockbox'),
(600681, 17057, 0, 29.8401, 0, 1, 0, 1, 1, 'Coilfang Defender - Shiny Fish Scales'),
(600681, 22903, 0, 0.12, 0, 1, 0, 1, 1, 'Coilfang Defender - Recipe: Insane Strength Potion'),
(600681, 23884, 0, 0.12, 0, 1, 0, 1, 1, 'Coilfang Defender - Schematic: Mana Potion Injector'),
(600681, 24000, 24000, 5, 0, 1, 1, 1, 1, 'Coilfang Defender - (ReferenceTable)'),
(600681, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Coilfang Defender - (ReferenceTable)'),
(600681, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Coilfang Defender - (ReferenceTable)'),
(600681, 24003, 24003, 1, 0, 1, 1, 1, 1, 'Coilfang Defender - (ReferenceTable)'),
(600681, 24005, 24005, 1, 0, 1, 1, 1, 1, 'Coilfang Defender - (ReferenceTable)'),
(600681, 24368, 0, 6, 0, 1, 0, 1, 1, 'Coilfang Defender - Coilfang Armaments'),
(600681, 24476, 0, 26.9991, 0, 1, 0, 1, 1, 'Coilfang Defender - Jaggal Clam'),
(600681, 27858, 0, 4.4658, 0, 1, 0, 1, 3, 'Coilfang Defender - Sunspring Carp'),
(600681, 27860, 0, 1.0424, 0, 1, 0, 1, 1, 'Coilfang Defender - Purified Draenic Water'),
(600681, 28399, 0, 1.1803, 0, 1, 0, 1, 1, 'Coilfang Defender - Filtered Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600681);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600681, 22829, 0, 2.5424, 0, 1, 0, 1, 1, 'Coilfang Defender - Super Healing Potion'),
(600681, 23117, 0, 0.8475, 0, 1, 0, 1, 1, 'Coilfang Defender - Azure Moonstone'),
(600681, 27858, 0, 6.7797, 0, 1, 0, 1, 1, 'Coilfang Defender - Sunspring Carp'),
(600681, 29569, 0, 6.7797, 0, 1, 0, 1, 1, 'Coilfang Defender - Strong Junkbox'),
(600681, 29576, 0, 6.7797, 0, 1, 0, 1, 1, 'Coilfang Defender - Shark Bait');

DELETE FROM `creature` WHERE (`id1` = 600681);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001589, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9673.97, -210.818, -19.0823, 1.02245, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001590, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9659.93, -193.108, -20.1536, 1.45139, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001591, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9678.4, -169.966, -20.7856, 0.109534, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001593, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9728.81, -181.104, -19.6463, 5.96012, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001594, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9742.5, -196.176, -18.9506, 5.5836, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001595, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9763.94, -211.348, -18.7513, 4.88263, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001598, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9700.22, -237.378, -20.0674, 3.49271, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001599, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9677.39, -231.802, -20.4933, 1.94257, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001602, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9678.12, -146.598, -20.0524, 1.04934, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001603, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9651.79, -109.827, -18.9534, 1.63815, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001610, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9752.52, -144.766, -19.3197, 4.74429, 300, 10, 0, 306644, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001637, 600681, 0, 0, 1, 0, 0, 1, 1, 1, 9757.19, -53.2928, 9.4664, 1.41807, 300, 0, 0, 306644, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600681;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600681);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600681, 0, 1, 0, 0, 0, 100, 0, 7300, 13350, 10900, 21850, 0, 0, 11, 15655, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Felrage Defender - In Combat - Cast \'Shield Slam\''),
(600681, 0, 2, 0, 0, 0, 100, 0, 13000, 17000, 18200, 29100, 0, 0, 11, 31554, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Felrage Defender - In Combat - Cast \'Spell Reflection\'');
