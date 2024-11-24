DELETE FROM `creature_template` WHERE (`entry` = 600647);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600647, 0, 0, 0, 0, 0, 'Bloodsail Elder Magus', 'Delve', NULL, 0, 83, 84, 0, 168, 0, 1, 1.71429, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600647, 600647, 0, 0, 0, 66, 444, 'SmartAI', 0, 1, 25, 10, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600647);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600647, 0, 2563, 1, 1, 12340),
(600647, 1, 2564, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600647);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600647, 0, 20823, 12340),
(600647, 1, 20827, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600647);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600647, 1, 1907, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600647);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600647, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600647, 2, 1024142, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 41-42'),
(600647, 3, 1034142, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 41-42'),
(600647, 4, 1044142, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 41-42'),
(600647, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600647, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600647, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600647, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600647, 9, 1080021, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 41-45'),
(600647, 1707, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Stormwind Brie'),
(600647, 1708, 0, 3, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Sweet Nectar'),
(600647, 2955, 0, 0.1, 0, 1, 1, 1, 1, 'Bloodsail Elder Magus - First Mate Hat'),
(600647, 3897, 0, 10, 1, 1, 0, 1, 1, 'Bloodsail Elder Magus - Dizzy\'s Eye'),
(600647, 3910, 0, 80, 1, 1, 0, 1, 1, 'Bloodsail Elder Magus - Snuff'),
(600647, 4306, 0, 30, 0, 1, 2, 1, 2, 'Bloodsail Elder Magus - Silk Cloth'),
(600647, 4338, 0, 10, 0, 1, 2, 1, 2, 'Bloodsail Elder Magus - Mageweave Cloth'),
(600647, 8494, 0, 0.01, 0, 1, 1, 1, 1, 'Bloodsail Elder Magus - Parrot Cage (Hyacinth Macaw)'),
(600647, 9260, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Volatile Rum'),
(600647, 44011, 44011, 10, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600647);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600647, 3927, 0, 4.5872, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Fine Aged Cheddar'),
(600647, 3928, 0, 3.6697, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Superior Healing Potion'),
(600647, 4601, 0, 0.9174, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Soft Banana Bread'),
(600647, 4602, 0, 1.8349, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Moon Harvest Pumpkin'),
(600647, 5432, 0, 11.0092, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Hickory Pipe'),
(600647, 7909, 0, 0.9174, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Aquamarine'),
(600647, 7910, 0, 0.9174, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Star Ruby'),
(600647, 16884, 0, 14.6789, 0, 1, 0, 1, 1, 'Bloodsail Elder Magus - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600647);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001260, 600647, 0, 0, 0, 0, 0, 1, 1, 1, 4283.62, -2734.14, 9.8376, 3.14304, 300, 0, 0, 114702, 95080, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001284, 600647, 0, 0, 0, 0, 0, 1, 1, 1, 4343.71, -2810.58, 4.85582, 3.35101, 300, 0, 0, 111732, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001285, 600647, 0, 0, 0, 0, 0, 1, 1, 1, 4304.22, -2803.65, 5.10636, 3.74222, 300, 3, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001289, 600647, 0, 0, 0, 0, 0, 1, 1, 1, 4216.77, -2780.83, 6.11184, 0.521929, 300, 0, 0, 114702, 95080, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600647;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600647);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600647, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Elder Magus - In Combat - Cast \'Fireball\''),
(600647, 0, 1, 0, 0, 0, 100, 0, 14900, 14900, 43000, 43000, 0, 0, 11, 11969, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Elder Magus - In Combat - Cast \'Fire Nova\''),
(600647, 0, 2, 0, 0, 0, 100, 0, 28700, 28700, 45200, 45200, 0, 0, 11, 20827, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Elder Magus - In Combat - Cast \'Flamestrike\''),
(600647, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Elder Magus - Between 0-15% Health - Flee For Assist (No Repeat)');
