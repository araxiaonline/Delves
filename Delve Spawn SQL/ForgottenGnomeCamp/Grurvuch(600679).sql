DELETE FROM `creature_template` WHERE (`entry` = 600679);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600679, 0, 0, 0, 0, 0, 'Grurvuch', 'Delve boss', NULL, 0, 83, 83, 1, 168, 0, 1, 1.42857, 1, 1, 20, 1, 3, 0, 24, 2000, 2000, 1, 1, 1, 32832, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600679, 0, 0, 0, 0, 1039, 1362, 'SmartAI', 1, 1, 85, 10, 1.1, 1, 0, 0, 1, 1105, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600679);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600679, 0, 11165, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600679);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600679, 0, 9532, 0),
(600679, 1, 8292, 0),
(600679, 2, 11892, 0),
(600679, 3, 8143, 0),
(600679, 4, 5742, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600679);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600679, 1, 5303, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600679);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600679, 1645, 0, 2, 0, 1, 0, 1, 1, 'Grimlok - Moonberry Juice'),
(600679, 4306, 0, 9, 0, 1, 0, 1, 4, 'Grimlok - Silk Cloth'),
(600679, 4338, 0, 11, 0, 1, 0, 1, 4, 'Grimlok - Mageweave Cloth'),
(600679, 4599, 0, 3, 0, 1, 0, 1, 1, 'Grimlok - Cured Ham Steak'),
(600679, 7670, 0, 100, 1, 1, 0, 1, 1, 'Grimlok - Shattered Necklace Sapphire'),
(600679, 9414, 0, 0, 0, 1, 1, 1, 1, 'Grimlok - Oilskin Leggings'),
(600679, 9415, 0, 0, 0, 1, 1, 1, 1, 'Grimlok - Grimlok\'s Tribal Vestments'),
(600679, 9416, 0, 20, 0, 1, 1, 1, 1, 'Grimlok - Grimlok\'s Charge');

DELETE FROM `creature` WHERE (`id1` = 600679);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001576, 600679, 0, 0, 0, 0, 0, 1, 1, 1, -5941.19, 444.742, 508.292, 1.45584, 300, 0, 0, 846260, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600679;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600679);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600679, 0, 2, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Grurvuch - In Combat - Cast \'Lightning Bolt\''),
(600679, 0, 3, 0, 0, 0, 100, 0, 5000, 10000, 20000, 20000, 0, 0, 11, 8292, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Grurvuch - In Combat - Cast \'Chain Bolt\''),
(600679, 0, 4, 0, 0, 0, 100, 0, 5000, 15000, 25000, 40000, 0, 0, 11, 11892, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Grurvuch - In Combat - Cast \'Shrink\''),
(600679, 0, 5, 0, 0, 0, 100, 0, 0, 10000, 20000, 20000, 0, 0, 11, 8143, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Grurvuch - In Combat - Cast \'Tremor Totem\''),
(600679, 0, 6, 0, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Grurvuch - Between 0-40% Health - Cast \'Bloodlust\' (No Repeat)');
