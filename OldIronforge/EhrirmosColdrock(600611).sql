DELETE FROM `creature_template` WHERE (`entry` = 600611);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600611, 0, 0, 0, 0, 0, 'Ehrirmos Coldrock', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 18, 2000, 2000, 1, 1, 2, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600611, 600611, 0, 0, 0, 694, 912, 'SmartAI', 1, 1, 114.5, 20, 1, 2, 0, 0, 1, 613105499, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600611);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600611, 0, 9089, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600611);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600611, 0, 12674, 12340),
(600611, 1, 12675, 12340),
(600611, 2, 12556, 12340),
(600611, 3, 15044, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600611);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600611, 1, 2177, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600611);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600611, 11782, 0, 0, 0, 1, 1, 1, 1, 'Warder Stilgiss - Boreal Mantle'),
(600611, 11783, 0, 0, 0, 1, 1, 1, 1, 'Warder Stilgiss - Chillsteel Girdle'),
(600611, 11784, 0, 0, 0, 1, 1, 1, 1, 'Warder Stilgiss - Arbiter\'s Blade'),
(600611, 14047, 0, 28, 0, 1, 0, 1, 4, 'Warder Stilgiss - Runecloth'),
(600611, 18945, 0, 11, 0, 1, 0, 1, 10, 'Warder Stilgiss - Dark Iron Residue'),
(600611, 22241, 0, 0, 0, 1, 1, 1, 1, 'Warder Stilgiss - Dark Warder\'s Pauldrons'),
(600611, 22528, 0, 8, 0, 1, 0, 2, 4, 'Warder Stilgiss - Dark Iron Scraps');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600611);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600611, 5432, 0, 5, 0, 1, 0, 1, 1, 'Warder Stilgiss - Hickory Pipe'),
(600611, 7910, 0, 5, 0, 1, 0, 1, 1, 'Warder Stilgiss - Star Ruby'),
(600611, 16885, 0, 5, 0, 1, 0, 1, 1, 'Warder Stilgiss - Heavy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600611);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001085, 600611, 0, 0, 0, 0, 0, 1, 1, 1, -4819.9, -974.899, 464.709, 3.84704, 300, 0, 0, 19064, 21775, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600611;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600611);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600611, 0, 3, 0, 1, 0, 100, 2, 1000, 1000, 1800000, 1800000, 0, 0, 11, 12544, 33, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Warder Stilgiss - Out of Combat - Cast \'Frost Armor\' (Normal Dungeon)'),
(600611, 0, 4, 0, 0, 0, 100, 2, 0, 0, 2400, 3800, 0, 0, 11, 12675, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Warder Stilgiss - In Combat - Cast \'Frostbolt\' (Normal Dungeon)'),
(600611, 0, 5, 0, 106, 0, 100, 2, 7000, 9000, 14000, 18000, 0, 10, 11, 12674, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Warder Stilgiss - On Hostile in Range - Cast \'Frost Nova\' (Normal Dungeon)'),
(600611, 0, 6, 0, 0, 0, 100, 2, 3000, 4000, 65000, 70000, 0, 0, 11, 15044, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Warder Stilgiss - In Combat - Cast \'Frost Ward\' (Normal Dungeon)');
