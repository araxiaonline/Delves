DELETE FROM `creature_template` WHERE (`entry` = 600666);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600666, 0, 0, 0, 0, 0, 'Terrorfiend', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1.6, 1.19048, 1, 1, 20, 0.78, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600666, 600666, 0, 0, 0, 180, 240, 'SmartAI', 1, 1, 38, 1, 1, 1, 0, 51, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600666);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600666, 0, 18373, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600666);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600666, 0, 75, 12340),
(600666, 1, 37488, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600666);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600666, 1, 6001, 90, 0, 1, 0, 1, 1, 'Terrorfiend - (ReferenceTable)'),
(600666, 2, 6003, 2, 0, 1, 0, 1, 1, 'Terrorfiend - (ReferenceTable)'),
(600666, 13444, 0, 1, 0, 1, 0, 1, 1, 'Terrorfiend - Major Mana Potion'),
(600666, 13446, 0, 2, 0, 1, 0, 1, 1, 'Terrorfiend - Major Healing Potion'),
(600666, 21877, 0, 70, 0, 1, 0, 1, 3, 'Terrorfiend - Netherweave Cloth'),
(600666, 23269, 0, 30, 1, 1, 0, 1, 1, 'Terrorfiend - Felblood Sample'),
(600666, 27854, 0, 7, 0, 1, 0, 1, 1, 'Terrorfiend - Smoked Talbuk Venison'),
(600666, 28399, 0, 3.5, 0, 1, 0, 1, 1, 'Terrorfiend - Filtered Draenic Water');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600666);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600666, 22829, 0, 2.8178, 0, 1, 0, 1, 1, 'Terrorfiend - Super Healing Potion'),
(600666, 23077, 0, 0.1966, 0, 1, 0, 1, 1, 'Terrorfiend - Blood Garnet'),
(600666, 27854, 0, 3.6697, 0, 1, 0, 1, 1, 'Terrorfiend - Smoked Talbuk Venison'),
(600666, 29569, 0, 9.8952, 0, 1, 0, 1, 1, 'Terrorfiend - Strong Junkbox'),
(600666, 29570, 0, 9.8296, 0, 1, 0, 1, 1, 'Terrorfiend - A Gnome Effigy');

DELETE FROM `creature` WHERE (`id1` = 600666);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001419, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11664.8, -2361.3, 3.20631, 5.81617, 300, 7, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001420, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11668.8, -2392.12, 1.76969, 4.1699, 300, 0, 0, 242314, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001421, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11685.5, -2405.39, -1.50541, 2.83606, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001422, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11689.9, -2385.25, -1.66172, 2.32201, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001423, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11706.8, -2373.32, -2.0181, 3.33942, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001424, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11690.6, -2348.5, 3.4896, 1.43545, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001425, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11726.6, -2379.76, -7.46961, 3.89603, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001426, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11767.9, -2373.73, -6.20209, 3.25114, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001427, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11805.1, -2380.81, -4.1805, 3.62365, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001428, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11769.4, -2419.5, -14.3054, 5.48622, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001429, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11720.3, -2479.85, -6.32667, 5.48622, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001456, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11864.7, -2688.7, 1.26562, 0.76055, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001457, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11889.4, -2666.71, -1.31502, 1.96488, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001458, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11833, -2633.29, 4.5788, 1.14775, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001482, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -12003.7, -2547.67, -38.4096, 2.57191, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001483, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -12044.7, -2533.48, -41.4526, 3.0005, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001484, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11973.9, -2530.54, -48.4316, 0.790782, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001508, 600666, 0, 0, 309, 0, 0, 1, 1, 0, -11879.6, -2411.05, -0.875835, 3.73036, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

