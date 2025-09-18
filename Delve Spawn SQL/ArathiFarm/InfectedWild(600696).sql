DELETE FROM `creature_template` WHERE (`entry` = 600696);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600696, 0, 0, 0, 0, 0, 'Infected Wild', 'Delve', '', 0, 84, 84, 2, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 35, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 1, 600696, 0, 70202, 0, 0, 0, 0, 'SmartAI', 0, 1, 17.2, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600696);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600696, 0, 1083, 1, 1, 12340),
(600696, 1, 23952, 1, 0, 0),
(600696, 2, 10091, 1, 0, 0),
(600696, 3, 6805, 1, 0, 0);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600696);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600696, 0, 49861, 0);


DELETE FROM `creature_loot_template` WHERE (`Entry` = 600696);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600696, 26000, 26000, 3, 0, 1, 1, 1, 1, 'Infected Grizzly Bear - (ReferenceTable)'),
(600696, 26001, 26001, 3, 0, 1, 1, 1, 1, 'Infected Grizzly Bear - (ReferenceTable)'),
(600696, 26007, 26007, 1, 0, 1, 1, 1, 1, 'Infected Grizzly Bear - (ReferenceTable)'),
(600696, 26008, 26008, 1, 0, 1, 1, 1, 1, 'Infected Grizzly Bear - (ReferenceTable)'),
(600696, 33359, 0, 0.4, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Thread-Bare Cloth Boots'),
(600696, 33361, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Thread-Bare Cloth Gloves'),
(600696, 33362, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Thread-Bare Cloth Pants'),
(600696, 33363, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Thread-Bare Cloth Shoulderpads'),
(600696, 33373, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Fur-Lined Belt'),
(600696, 33378, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Fur-Lined Shoulderpads'),
(600696, 33391, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Icy Mail Belt'),
(600696, 33395, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Icy Mail Pants'),
(600696, 33396, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Icy Mail Shoulderpads'),
(600696, 33408, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Ice-Bound Plate Gloves'),
(600696, 33426, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Chipped Timber Axe'),
(600696, 33438, 0, 0.4, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Thread-Bare Hat'),
(600696, 33549, 0, 83.6, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Thick Tail Hair'),
(600696, 33630, 0, 16.4, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Icy Fang'),
(600696, 36105, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Caribou Shoulders'),
(600696, 36108, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Vileprey Boots'),
(600696, 36113, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Vileprey Pauldrons'),
(600696, 36338, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Grizzlemaw Vambraces'),
(600696, 36548, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Promised Staff'),
(600696, 36688, 0, 0.2, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Sacrosanct Mace'),
(600696, 43013, 0, 28.3, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Chilled Meat'),
(600696, 45912, 0, 0.1, 0, 1, 0, 1, 1, 'Infected Grizzly Bear - Book of Glyph Mastery');

DELETE FROM `skinning_loot_template` WHERE (`Entry` = 70202);
INSERT INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(70202, 33567, 0, 0, 0, 1, 1, 1, 1, NULL),
(70202, 33568, 0, 0, 0, 1, 1, 1, 1, NULL),
(70202, 44128, 0, 1, 0, 1, 1, 1, 1, NULL);

DELETE FROM `creature` WHERE (`id1` = 600696);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001642, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1899.82, -3957.51, 68.8616, 2.62381, 300, 7, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001643, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1924.76, -3946.76, 81.111, 5.34737, 300, 8, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001644, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1924.76, -3972.55, 55.4089, 0.0337882, 300, 8, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001645, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1907.09, -3980.57, 47.8222, 0.0938713, 300, 10, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001646, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1908.83, -3999.47, 36.8144, 4.47176, 300, 8, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001647, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1913.94, -4021.96, 24.6471, 4.31154, 300, 6, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001648, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1927.5, -4015.59, 33.1872, 2.17258, 300, 10, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001649, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1951.03, -4044.3, 10.8777, 3.22588, 300, 10, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001650, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1989.9, -4043.16, 3.57361, 3.45286, 300, 10, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001651, 600696, 0, 0, 0, 0, 0, 1, 1, 0, -1916.97, -4044.63, 15.4362, 6.06564, 300, 8, 0, 249819, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600696;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600696);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600696, 0, 0, 0, 0, 0, 100, 0, 2000, 6000, 7000, 10000, 0, 0, 11, 49861, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Infected Wild - In Combat - Cast \'Infected Bite\'');
