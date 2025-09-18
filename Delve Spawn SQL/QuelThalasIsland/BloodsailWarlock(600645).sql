DELETE FROM `creature_template` WHERE (`entry` = 600645);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600645, 0, 0, 0, 0, 0, 'Bloodsail Warlock', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 25.2, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600645, 600645, 0, 0, 0, 62, 401, 'SmartAI', 0, 1, 90, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600645);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600645, 0, 4461, 1, 1, 12340),
(600645, 1, 4462, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600645);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600645, 0, 11980, 12340),
(600645, 1, 20825, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600645);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600645, 1, 1907, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600645);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600645, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600645, 2, 1024041, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 40-41'),
(600645, 3, 1034041, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 40-41'),
(600645, 4, 1044041, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 40-41'),
(600645, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600645, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600645, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600645, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600645, 9, 1080021, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 41-45'),
(600645, 1707, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Stormwind Brie'),
(600645, 1708, 0, 3, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Sweet Nectar'),
(600645, 2955, 0, 0.1, 0, 1, 1, 1, 1, 'Bloodsail Warlock - First Mate Hat'),
(600645, 3897, 0, 10, 1, 1, 0, 1, 1, 'Bloodsail Warlock - Dizzy\'s Eye'),
(600645, 3910, 0, 80, 1, 1, 0, 1, 1, 'Bloodsail Warlock - Snuff'),
(600645, 4306, 0, 30, 0, 1, 2, 1, 3, 'Bloodsail Warlock - Silk Cloth'),
(600645, 4338, 0, 10, 0, 1, 2, 1, 1, 'Bloodsail Warlock - Warlockweave Cloth'),
(600645, 8494, 0, 0.01, 0, 1, 1, 1, 1, 'Bloodsail Warlock - Parrot Cage (Hyacinth Macaw)'),
(600645, 9260, 0, 5, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Volatile Rum'),
(600645, 44011, 44011, 10, 0, 1, 0, 1, 1, 'Bloodsail Warlock - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600645);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600645, 3927, 0, 2.7174, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Fine Aged Cheddar'),
(600645, 3928, 0, 1.7391, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Superior Healing Potion'),
(600645, 4601, 0, 2.3913, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Soft Banana Bread'),
(600645, 4602, 0, 2.5, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Moon Harvest Pumpkin'),
(600645, 5432, 0, 9.8913, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Hickory Pipe'),
(600645, 7909, 0, 0.2174, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Aquamarine'),
(600645, 7910, 0, 0.2174, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Star Ruby'),
(600645, 16884, 0, 10, 0, 1, 0, 1, 1, 'Bloodsail Warlock - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600645);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001280, 600645, 0, 0, 608, 0, 0, 1, 1, 1, 4308.99, -2784.32, 7.18651, 3.30695, 300, 0, 0, 402237, 9330, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001281, 600645, 0, 0, 608, 0, 0, 1, 1, 1, 4350.1, -2799.93, 4.78358, 3.82099, 300, 0, 0, 402237, 9330, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001288, 600645, 0, 0, 608, 0, 0, 1, 1, 1, 4221.36, -2787.13, 5.60646, 0.648771, 300, 0, 0, 402237, 9330, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001290, 600645, 0, 0, 608, 0, 0, 1, 1, 1, 4234.59, -2749.43, 7.06713, 1.07736, 300, 11, 0, 402237, 9330, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001293, 600645, 0, 0, 608, 0, 0, 1, 1, 1, 4275.71, -2770.81, 6.67532, 3.68464, 300, 5, 0, 402237, 9330, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001295, 600645, 0, 0, 608, 0, 0, 1, 1, 1, 4304.27, -2836.19, 5.44437, 3.23736, 300, 16, 0, 402237, 9330, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600645;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600645);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600645, 0, 0, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 31, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Warlock - On Reset - Set Phase Random Between 1-2'),
(600645, 0, 1, 0, 1, 1, 100, 513, 0, 1000, 0, 0, 0, 0, 11, 8722, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Warlock - Out of Combat - Cast \'Summon Succubus\' (Phase 1) (No Repeat)'),
(600645, 0, 2, 0, 1, 2, 100, 513, 0, 1000, 0, 0, 0, 0, 11, 11939, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Warlock - Out of Combat - Cast \'Summon Imp\' (Phase 2) (No Repeat)'),
(600645, 0, 3, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Warlock - In Combat - Cast \'Shadow Bolt\''),
(600645, 0, 4, 0, 0, 0, 100, 0, 6900, 20900, 15900, 15900, 0, 0, 11, 11980, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Warlock - In Combat - Cast \'Curse of Weakness\''),
(600645, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodsail Warlock - Between 0-15% Health - Flee For Assist (No Repeat)');
