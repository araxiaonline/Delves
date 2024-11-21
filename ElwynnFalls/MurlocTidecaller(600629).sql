DELETE FROM `creature_template` WHERE (`entry` = 600629);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600629, 0, 0, 0, 0, 0, 'Murloc Tidecaller', 'Delve', NULL, 0, 83, 83, 0, 128, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600629, 600629, 0, 0, 0, 13, 59, 'SmartAI', 1, 1, 40, 10, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600629, 0, 5293, 1, 1, 12340);

INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600629, 0, 122, 12340),
(600629, 1, 913, 12340);

INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600629, 1, 1907, 0, 0, 18019);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600629, 1, 1001620, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 16-20'),
(600629, 2, 1011920, 1, 0, 1, 0, 1, 1, 'World Drop - White World Drop - NPC Levels: 19-20'),
(600629, 3, 1021920, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 19-20'),
(600629, 4, 1031820, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 18-20'),
(600629, 5, 1051120, 0.5, 0, 1, 0, 1, 1, 'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600629, 6, 1062029, 3, 0, 1, 0, 1, 1, 'World Drop - Potions II - NPC Levels 20-29'),
(600629, 7, 1071930, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls II - NPC Levels 19-30'),
(600629, 8, 1080002, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600629, 9, 1080016, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 20-25'),
(600629, 414, 0, 0.04, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Dalaran Sharp'),
(600629, 422, 0, 0.16, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Dwarven Mild'),
(600629, 730, 0, 37.5966, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Murloc Eye'),
(600629, 1179, 0, 5.903, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Ice Cold Milk'),
(600629, 1205, 0, 0.22, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Melon Juice'),
(600629, 1467, 0, 45, 1, 1, 0, 1, 1, 'Murloc Tidecaller - Spotted Sunfish'),
(600629, 1468, 0, 31.1314, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Murloc Fin'),
(600629, 1473, 0, 1, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Riverside Staff'),
(600629, 2589, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Linen Cloth'),
(600629, 2592, 0, 0.04, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Wool Cloth'),
(600629, 2700, 0, 0.04, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Recipe: Succulent Pork Ribs'),
(600629, 3770, 0, 0.06, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Mutton Chop'),
(600629, 4537, 0, 0.04, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Tel\'Abim Banana'),
(600629, 4538, 0, 0.04, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Snapvine Watermelon'),
(600629, 4542, 0, 0.06, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Moist Cornbread'),
(600629, 4606, 0, 0.06, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Spongy Morel'),
(600629, 5498, 0, 0.04, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Small Lustrous Pearl'),
(600629, 5503, 0, 2.58, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Clam Meat'),
(600629, 5504, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Tangy Clam Meat'),
(600629, 5523, 0, 39.9157, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Small Barnacled Clam'),
(600629, 5784, 0, 18.0604, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Slimy Murloc Scale'),
(600629, 6289, 0, 4.0056, 0, 1, 0, 1, 3, 'Murloc Tidecaller - Raw Longjaw Mud Snapper');

INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600629, 1210, 0, 10, 0, 1, 0, 1, 1, 'Murloc Tidecaller - Shadowgem');

INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001158, 600629, 0, 0, 0, 0, 0, 1, 1, 1, -8288.86, -374.619, 140.279, 5.91334, 300, 15, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001159, 600629, 0, 0, 0, 0, 0, 1, 1, 1, -8267.73, -380.33, 140.376, 1.57321, 300, 16, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001169, 600629, 0, 0, 0, 0, 0, 1, 1, 1, -8388.32, -384.42, 145.833, 4.73908, 300, 0, 0, 204072, 42620, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001178, 600629, 0, 0, 0, 0, 0, 1, 1, 1, -8509.9, -456.999, 140.197, 0.255351, 300, 4, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001182, 600629, 0, 0, 0, 0, 0, 1, 1, 1, -8544.53, -491.736, 140.04, 5.65884, 300, 10, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001202, 600629, 0, 0, 0, 0, 0, 1, 1, 1, -8653.99, -531.199, 146.234, 0.769856, 300, 7, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001209, 600629, 0, 0, 0, 0, 0, 1, 1, 1, -8688.35, -453.964, 141.871, 6.02881, 300, 9, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001211, 600629, 0, 0, 0, 0, 0, 1, 1, 1, -8652.87, -480.487, 141.01, 5.61615, 300, 5, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600629;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600629);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600629, 0, 0, 0, 106, 0, 100, 0, 6200, 12600, 25000, 30000, 0, 10, 11, 122, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Tidecaller - On Hostile in Range - Cast \'Frost Nova\''),
(600629, 0, 1, 0, 74, 0, 100, 0, 0, 0, 24100, 25500, 40, 0, 11, 913, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Tidecaller - On Friendly Below 40% Health - Cast \'Healing Wave\''),
(600629, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Tidecaller - Between 0-15% Health - Flee For Assist (No Repeat)');
