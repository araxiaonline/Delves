DELETE FROM `creature_template` WHERE (`entry` = 600634);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600634, 0, 0, 0, 0, 0, 'Gurlgles', 'Delve Boss', NULL, 0, 83, 83, 0, 128, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 1.7, 1200, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600634, 600634, 0, 0, 0, 231, 308, 'SmartAI', 1, 1, 6, 1, 1, 2, 0, 0, 1, 608908883, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600634);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600634, 0, 1773, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600634);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600634, 1, 1897, 2179, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600634);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600634, 730, 0, 32, 0, 1, 0, 1, 1, 'Gelihast - Murloc Eye'),
(600634, 1205, 0, 4, 0, 1, 0, 1, 1, 'Gelihast - Melon Juice'),
(600634, 1468, 0, 28, 0, 1, 0, 1, 1, 'Gelihast - Murloc Fin'),
(600634, 1470, 0, 15, 0, 1, 0, 1, 1, 'Gelihast - Murloc Skin Bag'),
(600634, 5524, 0, 25, 0, 1, 0, 1, 1, 'Gelihast - Thick-shelled Clam'),
(600634, 5784, 0, 17, 0, 1, 0, 1, 1, 'Gelihast - Slimy Murloc Scale'),
(600634, 6308, 0, 4, 0, 1, 0, 1, 3, 'Gelihast - Raw Bristle Whisker Catfish'),
(600634, 6905, 0, 50, 0, 1, 1, 1, 1, 'Gelihast - Reef Axe'),
(600634, 6906, 0, 50, 0, 1, 1, 1, 1, 'Gelihast - Algae Fists'),
(600634, 17057, 0, 20, 0, 1, 0, 1, 1, 'Gelihast - Shiny Fish Scales'),
(600634, 17058, 0, 21, 0, 1, 0, 1, 1, 'Gelihast - Fish Oil');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600634);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600634, 929, 0, 5.2632, 0, 1, 0, 1, 1, 'Gelihast - Healing Potion'),
(600634, 6308, 0, 26.3158, 0, 1, 0, 1, 2, 'Gelihast - Raw Bristle Whisker Catfish'),
(600634, 16882, 0, 15.7895, 0, 1, 0, 1, 1, 'Gelihast - Battered Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600634);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001206, 600634, 0, 0, 0, 0, 0, 1, 1, 1, -8682.18, -476.965, 145.862, 5.87023, 300, 8, 0, 34782, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600634;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600634);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600634, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 5000, 9000, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0, 'Gelihast - In Combat - Cast Net'),
(600634, 0, 1, 2, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gelihast - On Just Died - Set Instance Data 0 to 3'),
(600634, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 106, 16, 0, 0, 0, 0, 0, 14, 32610, 103015, 0, 0, 0, 0, 0, 0, 'Gelihast - On Just Died - Remove Gameobject Flags');
