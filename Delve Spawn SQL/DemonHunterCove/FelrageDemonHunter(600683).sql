DELETE FROM `creature_template` WHERE (`entry` = 600683);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600683, 0, 0, 0, 0, 0, 'Felrage Demon Hunter', 'Delve', NULL, 0, 83, 85, 1, 168, 0, 1, 1.19048, 1, 1, 20, 1, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600683, 600683, 0, 0, 0, 169, 225, 'SmartAI', 1, 1, 38, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600683);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600683, 0, 18388, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600683);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600683, 0, 6533, 12340),
(600683, 1, 40331, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600683);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600683, 942, 0, 7, 0, 12, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600683);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600683, 1, 14882, 20417, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600683);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600683, 22532, 0, 0.01, 0, 1, 0, 1, 1, 'Coilfang Engineer - Formula: Enchant Bracer - Restore Mana Prime'),
(600683, 22903, 0, 0.2, 0, 1, 0, 1, 1, 'Coilfang Engineer - Recipe: Insane Strength Potion'),
(600683, 23884, 0, 0.2, 0, 1, 0, 1, 1, 'Coilfang Engineer - Schematic: Mana Potion Injector'),
(600683, 24092, 24092, 0.5, 0, 1, 1, 1, 1, 'Coilfang Engineer - (ReferenceTable)'),
(600683, 24367, 0, 2, 0, 1, 0, 1, 1, 'Coilfang Engineer - Orders from Lady Vashj'),
(600683, 24368, 0, 16, 0, 1, 0, 1, 1, 'Coilfang Engineer - Coilfang Armaments'),
(600683, 24476, 0, 33.3, 0, 1, 0, 1, 1, 'Coilfang Engineer - Jaggal Clam'),
(600683, 27860, 0, 33.3, 0, 1, 0, 1, 1, 'Coilfang Engineer - Purified Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600683);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600683, 22829, 0, 2.7248, 0, 1, 0, 1, 1, 'Coilfang Engineer - Super Healing Potion'),
(600683, 27858, 0, 8.7193, 0, 1, 0, 1, 1, 'Coilfang Engineer - Sunspring Carp'),
(600683, 29569, 0, 8.9918, 0, 1, 0, 1, 1, 'Coilfang Engineer - Strong Junkbox'),
(600683, 29576, 0, 7.6294, 0, 1, 0, 1, 1, 'Coilfang Engineer - Shark Bait');

DELETE FROM `creature` WHERE (`id1` = 600683);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001592, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9709.88, -179.408, -20.1042, 5.42738, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001596, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9741.87, -225.036, -18.1981, 3.11619, 300, 10, 0, 427028, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001600, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9647.98, -216.111, -13.6837, 2.85183, 300, 0, 0, 438064, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001604, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9656.83, -135.384, -17.8343, 4.92402, 300, 10, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001608, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9700.93, -135.573, -20.656, 5.15552, 300, 0, 0, 427028, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001612, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9758.65, -190.94, -19.2768, 4.54535, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001613, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9734.92, -154.988, -18.6663, 3.44249, 300, 13, 0, 427028, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001635, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9754.24, -39.5658, 11.9143, 0.774517, 300, 0, 0, 438064, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001638, 600683, 0, 0, 1, 901, 0, 1, 1, 1, 9706.99, -191.911, -18.8827, 2.21977, 300, 6, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600683;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600683);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600683, 0, 1, 0, 0, 0, 100, 0, 6000, 8000, 9000, 13000, 0, 0, 11, 40331, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Felrage Demon Hunter - In Combat - Cast \'Bomb\''),
(600683, 0, 2, 0, 0, 0, 100, 0, 11000, 16000, 5000, 7000, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Felrage Demon Hunter - In Combat - Cast \'Net\'');
