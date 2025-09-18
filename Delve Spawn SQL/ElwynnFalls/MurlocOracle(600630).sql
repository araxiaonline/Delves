DELETE FROM `creature_template` WHERE (`entry` = 600630);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600630, 0, 0, 0, 0, 0, 'Murloc Oracle', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.28571, 1, 1, 20, 1, 1, 0, 25, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600630, 600630, 0, 0, 0, 10, 53, 'SmartAI', 1, 1, 35, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600630, 0, 1079, 1, 1, 12340);

INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600630, 0, 9734, 12340),
(600630, 1, 6074, 12340),
(600630, 2, 4980, 12340);

INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600630, 1, 1907, 0, 0, 18019);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600630, 1, 1001620, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 16-20'),
(600630, 2, 1011718, 1, 0, 1, 0, 1, 1, 'World Drop - White World Drop - NPC Levels: 17-18'),
(600630, 3, 1021718, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 17-18'),
(600630, 4, 1051120, 0.5, 0, 1, 0, 1, 1, 'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600630, 5, 1061019, 3, 0, 1, 0, 1, 1, 'World Drop - Potions I - NPC Levels 10-19'),
(600630, 6, 1070518, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls I - NPC Levels 5-18'),
(600630, 7, 1080002, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600630, 9, 1080015, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 15-19'),
(600630, 414, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Oracle - Dalaran Sharp'),
(600630, 730, 0, 36.4778, 0, 1, 0, 1, 1, 'Murloc Oracle - Murloc Eye'),
(600630, 1179, 0, 2.197, 0, 1, 0, 1, 5, 'Murloc Oracle - Ice Cold Milk'),
(600630, 1357, 0, 1, 0, 1, 0, 1, 1, 'Murloc Oracle - Captain Sanders\' Treasure Map'),
(600630, 1468, 0, 43.012, 0, 1, 0, 1, 1, 'Murloc Oracle - Murloc Fin'),
(600630, 2287, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Oracle - Haunch of Meat'),
(600630, 2698, 0, 0.06, 0, 1, 0, 1, 1, 'Murloc Oracle - Recipe: Cooked Crab Claw'),
(600630, 4359, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Oracle - Handful of Copper Bolts'),
(600630, 4364, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Oracle - Coarse Blasting Powder'),
(600630, 4537, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Oracle - Tel\'Abim Banana'),
(600630, 4541, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Oracle - Freshly Baked Bread'),
(600630, 4605, 0, 0.02, 0, 1, 0, 1, 1, 'Murloc Oracle - Red-speckled Mushroom'),
(600630, 5498, 0, 0.0523, 0, 1, 0, 1, 1, 'Murloc Oracle - Small Lustrous Pearl'),
(600630, 5503, 0, 1.62, 0, 1, 0, 1, 1, 'Murloc Oracle - Clam Meat'),
(600630, 5523, 0, 36.5998, 0, 1, 0, 1, 1, 'Murloc Oracle - Small Barnacled Clam'),
(600630, 5784, 0, 17.0009, 0, 1, 0, 1, 1, 'Murloc Oracle - Slimy Murloc Scale'),
(600630, 6289, 0, 4.2371, 0, 1, 0, 1, 3, 'Murloc Oracle - Raw Longjaw Mud Snapper');

INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600630, 858, 0, 7.2727, 0, 1, 0, 1, 1, 'Murloc Oracle - Lesser Healing Potion'),
(600630, 5371, 0, 18.1818, 0, 1, 0, 1, 1, 'Murloc Oracle - Piece of Coral'),
(600630, 6289, 0, 10.9091, 0, 1, 0, 1, 2, 'Murloc Oracle - Raw Longjaw Mud Snapper');

INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001157, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8307.07, -363.72, 140.279, 5.78917, 300, 13, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001160, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8273.2, -350.991, 140.287, 2.32914, 300, 14, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001170, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8438.74, -419.994, 140.317, 4.50123, 300, 10, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001177, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8496.9, -477.264, 140.22, 0.881549, 300, 6, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001193, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8583.12, -511.079, 144.891, 1.68878, 300, 8, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001203, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8653.83, -506.431, 145.057, 1.62303, 300, 8, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001210, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8676.79, -457.026, 142.071, 6.02881, 300, 5, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600630;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600630);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600630, 0, 0, 0, 0, 0, 100, 0, 2900, 3600, 2900, 3600, 0, 0, 11, 9734, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Oracle - In Combat - Cast \'Holy Smite\''),
(600630, 0, 1, 0, 74, 0, 100, 0, 0, 0, 48800, 53700, 50, 0, 11, 6074, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Oracle - On Friendly Below 50% Health - Cast \'Renew\''),
(600630, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Oracle - Between 0-15% Health - Flee For Assist (No Repeat)');
