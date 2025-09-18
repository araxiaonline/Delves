DELETE FROM `creature_template` WHERE (`entry` = 600677);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600677, 0, 0, 0, 0, 0, 'Rockjaw Raider', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1, 1.19048, 1, 1, 20, 1.12, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600677, 600677, 0, 0, 0, 76, 350, 'SmartAI', 1, 1, 38, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600677);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600677, 0, 730, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600677);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600677, 0, 12057, 0),
(600677, 1, 16509, 0),
(600677, 2, 9080, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600677);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600677, 1, 2695, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600677);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600677, 0, 11111, 0.2, 0, 1, 0, 1, 1, 'Rockjaw Raider - (Small Pouch ReferenceTable)'),
(600677, 0, 20000, 30, 0, 1, 0, 1, 1, 'Rockjaw Raider - (Grey 1-5 EXP 0 ReferenceTable)'),
(600677, 0, 20015, 30, 0, 1, 0, 1, 1, 'Rockjaw Raider - (Food 1-5 EXP 0 ReferenceTable)'),
(600677, 2054, 0, 2, 0, 1, 0, 1, 1, 'Rockjaw Raider - Trogg Hand Axe');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600677);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600677, 117, 0, 7.265, 0, 1, 0, 1, 1, 'Rockjaw Raider - Tough Jerky'),
(600677, 118, 0, 3.8462, 0, 1, 0, 1, 1, 'Rockjaw Raider - Minor Healing Potion'),
(600677, 774, 0, 1.7094, 0, 1, 0, 1, 1, 'Rockjaw Raider - Malachite'),
(600677, 4540, 0, 4.2735, 0, 1, 0, 1, 1, 'Rockjaw Raider - Tough Hunk of Bread'),
(600677, 5367, 0, 10.2564, 0, 1, 0, 1, 1, 'Rockjaw Raider - Primitive Rock Tool');

DELETE FROM `creature` WHERE (`id1` = 600677);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001546, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5840.75, 790.747, 485.806, 1.46732, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001562, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5940.52, 664.349, 485.764, 4.88506, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001569, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5908.37, 553.658, 501.81, 4.55244, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001580, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5946.55, 452.903, 508.327, 6.04751, 300, 0, 0, 242314, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001583, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5911.37, 625.373, 499.13, 3.30773, 300, 7, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600677;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600677);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600677, 0, 0, 0, 0, 0, 100, 2, 4000, 6000, 7000, 9000, 0, 0, 11, 12057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Raider - In Combat - Cast \'Strike\' (Normal Dungeon)'),
(600677, 0, 1, 0, 0, 0, 100, 2, 9000, 13000, 18000, 34000, 0, 0, 11, 16509, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Raider - In Combat - Cast \'Rend\' (Normal Dungeon)'),
(600677, 0, 2, 0, 0, 0, 100, 2, 2000, 4000, 14000, 18000, 0, 0, 11, 9080, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockjaw Raider - In Combat - Cast \'Hamstring\' (Normal Dungeon)');
