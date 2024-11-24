DELETE FROM `creature_template` WHERE (`entry` = 600622);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600622, 0, 0, 0, 0, 0, 'Xan\'tosh', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 9.4, 2000, 2000, 1, 1, 2, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600622, 0, 0, 0, 0, 631, 1111, 'SmartAI', 1, 1, 98.7, 50, 1.1, 2, 0, 0, 1, 646659935, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600622);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600622, 0, 7353, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600622);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600622, 1, 9659, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600622);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600622, 1520, 0, 19, 0, 1, 0, 1, 1, 'Antu\'sul - Troll Sweat'),
(600622, 4338, 0, 17, 0, 1, 0, 1, 4, 'Antu\'sul - Mageweave Cloth'),
(600622, 8151, 0, 6, 0, 1, 0, 1, 1, 'Antu\'sul - Flask of Mojo'),
(600622, 9242, 0, 3, 0, 1, 0, 1, 1, 'Antu\'sul - Ancient Tablet'),
(600622, 9243, 0, 2, 0, 1, 0, 1, 1, 'Antu\'sul - Shriveled Heart'),
(600622, 9379, 0, 10, 0, 1, 1, 1, 1, 'Antu\'sul - Sang\'thraze the Deflector'),
(600622, 9484, 0, 0.01, 0, 1, 1, 1, 1, 'Antu\'Sul - Spellshock Leggings'),
(600622, 9523, 0, 55, 1, 1, 0, 1, 1, 'Antu\'sul - Troll Temper'),
(600622, 9639, 0, 20, 0, 1, 1, 1, 1, 'Antu\'sul - The Hand of Antu\'sul'),
(600622, 9640, 0, 0, 0, 1, 1, 1, 1, 'Antu\'sul - Vice Grips'),
(600622, 9641, 0, 0, 0, 1, 1, 1, 1, 'Antu\'sul - Lifeblood Amulet');

DELETE FROM `creature` WHERE (`id1` = 600622);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001125, 600622, 0, 0, 0, 0, 0, 1, 1, 1, -12835.6, -1374.93, 113.119, 3.89888, 300, 0, 0, 470405, 217750, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600622;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600622);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600622, 0, 0, 0, 0, 0, 75, 0, 5000, 5000, 17000, 17000, 0, 0, 11, 8376, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - In Combat - Cast \'Earthgrab Totem\''),
(600622, 0, 1, 0, 0, 0, 75, 0, 13000, 13000, 17000, 17000, 0, 0, 11, 11899, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - In Combat - Cast \'Healing Ward\''),
(600622, 0, 2, 3, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11894, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - On Aggro - Cast \'Antu`sul`s Minion\''),
(600622, 0, 4, 0, 0, 0, 100, 0, 5000, 5000, 12000, 14000, 0, 0, 11, 16006, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - In Combat - Cast \'Chain Lightning\''),
(600622, 0, 5, 0, 0, 0, 100, 0, 3000, 3000, 9000, 11000, 0, 0, 11, 15501, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - In Combat - Cast \'Earth Shock\''),
(600622, 0, 6, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - On Data Set 1 1 - Start Attacking'),
(600622, 0, 7, 8, 2, 0, 100, 1, 0, 75, 0, 0, 0, 0, 11, 11894, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - Between 0-75% Health - Cast \'Antu`sul`s Minion\' (No Repeat)'),
(600622, 0, 9, 10, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 11894, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - Between 0-25% Health - Cast \'Antu`sul`s Minion\' (No Repeat)'),
(600622, 0, 11, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 11895, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Xan\'tosh - Between 0-20% Health - Cast \'Healing Wave of Antu`sul\' (No Repeat)'),
(600622, 0, 12, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 9, 8156, 0, 500, 1, 0, 0, 0, 0, 'Xan\'tosh - On Reset - Despawn Instant');
