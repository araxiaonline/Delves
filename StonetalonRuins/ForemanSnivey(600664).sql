DELETE FROM `creature_template` WHERE (`entry` = 600664);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600664, 0, 0, 0, 0, 0, 'Foreman Snivey', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 41, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600664, 600664, 0, 0, 0, 57, 311, 'SmartAI', 0, 1, 87.6, 20, 1.1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600664);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600664, 0, 7207, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600664);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600664, 0, 9532, 12340),
(600664, 1, 4979, 12340),
(600664, 2, 184, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600664);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600664, 21, 0, 5, 0, 5, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600664);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600664, 1, 3361, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600664);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600664, 1, 1003140, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 31-40'),
(600664, 2, 1023838, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 38-38'),
(600664, 3, 1033838, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 38-38'),
(600664, 4, 1043840, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 38-40'),
(600664, 5, 1053140, 0.4, 0, 1, 0, 1, 1, 'World Drop - 12 Slot Bag - NPC Levels: 31-40'),
(600664, 6, 1063039, 3, 0, 1, 0, 1, 1, 'World Drop - Potions III - NPC Levels 30-39'),
(600664, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600664, 8, 1080004, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~35'),
(600664, 9, 1080020, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 36-40'),
(600664, 1630, 0, 28.6436, 0, 1, 0, 1, 1, 'Foreman Cozzle - Broken Electro-lantern'),
(600664, 1707, 0, 0.04, 0, 1, 0, 1, 1, 'Foreman Cozzle - Stormwind Brie'),
(600664, 1708, 0, 1.443, 0, 1, 0, 1, 1, 'Foreman Cozzle - Sweet Nectar'),
(600664, 2725, 0, 0.8658, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 1'),
(600664, 2728, 0, 0.7937, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 4'),
(600664, 2730, 0, 0.7215, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 6'),
(600664, 2732, 0, 0.3608, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 8'),
(600664, 2734, 0, 0.6494, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 10'),
(600664, 2735, 0, 0.3608, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 11'),
(600664, 2738, 0, 0.6494, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 14'),
(600664, 2740, 0, 0.7215, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 16'),
(600664, 2742, 0, 0.5051, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 18'),
(600664, 2744, 0, 0.8658, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 20'),
(600664, 2745, 0, 1.1544, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 21'),
(600664, 2748, 0, 0.2886, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 24'),
(600664, 2749, 0, 0.7937, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 25'),
(600664, 2750, 0, 0.6494, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 26'),
(600664, 2751, 0, 0.5051, 0, 1, 0, 1, 1, 'Foreman Cozzle - Green Hills of Stranglethorn - Page 27'),
(600664, 3771, 0, 4.4012, 0, 1, 0, 1, 1, 'Foreman Cozzle - Wild Hog Shank'),
(600664, 3917, 0, 80, 1, 1, 0, 1, 1, 'Foreman Cozzle - Singing Blue Crystal'),
(600664, 4306, 0, 27.8499, 0, 1, 0, 1, 3, 'Foreman Cozzle - Silk Cloth'),
(600664, 4338, 0, 4.1847, 0, 1, 0, 1, 1, 'Foreman Cozzle - Mageweave Cloth'),
(600664, 4607, 0, 0.04, 0, 1, 0, 1, 1, 'Foreman Cozzle - Delicious Cave Mold'),
(600664, 4614, 0, 0.0722, 0, 1, 0, 1, 1, 'Foreman Cozzle - Pendant of Myzrael'),
(600664, 4636, 0, 0.1443, 0, 1, 0, 1, 1, 'Foreman Cozzle - Strong Iron Lockbox'),
(600664, 5851, 0, 100, 1, 1, 0, 1, 1, 'Foreman Cozzle - Cozzle\'s Key');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600664);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600664, 3771, 0, 3.2258, 0, 1, 0, 1, 1, 'Foreman Cozzle - Wild Hog Shank'),
(600664, 4544, 0, 3.2258, 0, 1, 0, 1, 1, 'Foreman Cozzle - Mulgore Spice Bread'),
(600664, 5427, 0, 6.4516, 0, 1, 0, 1, 1, 'Foreman Cozzle - Crude Pocket Watch'),
(600664, 16883, 0, 9.6774, 0, 1, 0, 1, 1, 'Foreman Cozzle - Worn Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600664);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001377, 600664, 0, 0, 900, 0, 0, 1, 1, 1, 2714.19, 2205.84, 244.629, 5.89146, 300, 0, 0, 428978, 89000, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600664;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600664);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600664, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 184, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Foreman Cozzle - On Aggro - Cast \'Fire Shield II\' (No Repeat)'),
(600664, 0, 1, 0, 0, 0, 100, 0, 2100, 3400, 9700, 11800, 0, 0, 11, 9532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Foreman Cozzle - In Combat - Cast \'Lightning Bolt\''),
(600664, 0, 2, 0, 2, 0, 100, 1, 5, 30, 0, 0, 0, 0, 11, 4979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Foreman Cozzle - Between 5-30% Health - Cast \'Quick Flame Ward\' (No Repeat)');
