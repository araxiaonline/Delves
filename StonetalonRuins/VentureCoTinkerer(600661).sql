DELETE FROM `creature_template` WHERE (`entry` = 600661);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600661, 0, 0, 0, 0, 0, 'Venture Co. Tinkerer', 'Delve', NULL, 0, 83, 84, 0, 168, 0, 1, 1.71429, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600661, 600661, 0, 0, 0, 66, 444, 'SmartAI', 0, 1, 25, 10, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600661);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600661, 0, 7204, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600661);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600661, 1, 12544, 12340),
(600661, 2, 20823, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600661);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600661, 21, 0, 5, 0, 5, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600661);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600661, 1, 1911, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600661);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600661, 1, 1004150, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 41-50'),
(600661, 2, 1024041, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 40-41'),
(600661, 3, 1034041, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 40-41'),
(600661, 4, 1044041, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 40-41'),
(600661, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600661, 6, 1064049, 3, 0, 1, 0, 1, 1, 'World Drop - Potions IV - NPC Levels 40-49'),
(600661, 7, 1073545, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls III - NPC Levels 35-45'),
(600661, 8, 1080005, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~45'),
(600661, 9, 1080021, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 41-45'),
(600661, 1630, 0, 31.373, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Broken Electro-lantern'),
(600661, 1708, 0, 2.2291, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Sweet Nectar'),
(600661, 2725, 0, 0.4506, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 1'),
(600661, 2728, 0, 0.7351, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 4'),
(600661, 2730, 0, 0.7825, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 6'),
(600661, 2732, 0, 0.4743, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 8'),
(600661, 2734, 0, 0.7825, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 10'),
(600661, 2735, 0, 0.7825, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 11'),
(600661, 2738, 0, 0.7588, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 14'),
(600661, 2740, 0, 0.83, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 16'),
(600661, 2742, 0, 0.7825, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 18'),
(600661, 2744, 0, 0.5454, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 20'),
(600661, 2745, 0, 1.0197, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 21'),
(600661, 2748, 0, 0.4268, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 24'),
(600661, 2749, 0, 0.996, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 25'),
(600661, 2750, 0, 0.5691, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 26'),
(600661, 2751, 0, 0.8063, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Green Hills of Stranglethorn - Page 27'),
(600661, 3771, 0, 5.5253, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Wild Hog Shank'),
(600661, 3917, 0, 80, 1, 1, 0, 1, 1, 'Venture Co. Tinkerer - Singing Blue Crystal'),
(600661, 3927, 0, 0.04, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Fine Aged Cheddar'),
(600661, 4306, 0, 27.1757, 0, 1, 0, 1, 3, 'Venture Co. Tinkerer - Silk Cloth'),
(600661, 4338, 0, 4.4344, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Mageweave Cloth'),
(600661, 4377, 0, 5.6912, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Heavy Blasting Powder'),
(600661, 4382, 0, 1.0671, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Bronze Framework'),
(600661, 4387, 0, 2.5373, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Iron Strut'),
(600661, 4389, 0, 0.2371, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Gyrochronatom'),
(600661, 4599, 0, 0.04, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Cured Ham Steak'),
(600661, 4601, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Soft Banana Bread'),
(600661, 4608, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Raw Black Truffle'),
(600661, 4614, 0, 0.0237, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Pendant of Myzrael'),
(600661, 4636, 0, 0.0949, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Strong Iron Lockbox'),
(600661, 4637, 0, 0.12, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Steel Lockbox');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600661);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600661, 3927, 0, 3.5294, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Fine Aged Cheddar'),
(600661, 3928, 0, 2.3529, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Superior Healing Potion'),
(600661, 4601, 0, 3.5294, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Soft Banana Bread'),
(600661, 4602, 0, 3.5294, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Moon Harvest Pumpkin'),
(600661, 5432, 0, 2.3529, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Hickory Pipe'),
(600661, 16884, 0, 4.7059, 0, 1, 0, 1, 1, 'Venture Co. Tinkerer - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600661);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001361, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2768.36, 2047.55, 277.059, 0.360909, 300, 8, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001362, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2801.3, 2039.1, 288.404, 0.343552, 300, 8, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001363, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2724.73, 2056.63, 272.933, 6.07397, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001364, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2737.53, 2114.94, 259.706, 0.609253, 300, 4, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001365, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2775.04, 2167.96, 246.77, 3.17012, 300, 6, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001366, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2781.29, 2186.62, 240.604, 1.24747, 300, 6, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001367, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2800.28, 2178.89, 242.938, 5.62135, 300, 6, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001378, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2711.47, 2203.25, 245.007, 5.81134, 300, 0, 0, 111732, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001387, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2839.29, 2218.51, 226.332, 3.25982, 300, 4, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001391, 600661, 0, 0, 1, 0, 0, 1, 1, 1, 2871.49, 2286.85, 203.499, 3.20107, 300, 3, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600661;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600661);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600661, 0, 0, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 12544, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Tinkerer - On Just Summoned - Cast \'Frost Armor\''),
(600661, 0, 1, 0, 0, 0, 100, 0, 3000, 4000, 5000, 6000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Tinkerer - In Combat CMC - Cast \'Fireball\''),
(600661, 0, 2, 0, 0, 0, 100, 1, 8000, 8000, 8000, 8000, 0, 0, 11, 7979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Tinkerer - IC - Cast Compact Harvest Reaper (no repeat)');
