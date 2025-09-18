DELETE FROM `creature_template` WHERE (`entry` = 600635);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600635, 0, 0, 0, 0, 0, 'Aguaspawn', 'Delve Boss', NULL, 0, 83, 83, 0, 168, 0, 1, 1.48762, 1, 1, 20, 1, 3, 0, 23.89, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 4, 4, 600635, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 78.6, 50, 1, 2, 0, 0, 1, 613105499, 16, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600635);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600635, 0, 5489, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600635);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600635, 0, 22419, 12340),
(600635, 2, 22420, 12340);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600635);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600635, 7070, 0, 26, 0, 1, 0, 1, 1, 'Hydrospawn - Elemental Water'),
(600635, 7079, 0, 20, 0, 1, 0, 1, 1, 'Hydrospawn - Globe of Water'),
(600635, 7080, 0, 11, 0, 1, 0, 1, 1, 'Hydrospawn - Essence of Water'),
(600635, 18299, 0, 100, 1, 1, 0, 1, 1, 'Hydrospawn - Hydrospawn Essence'),
(600635, 18305, 0, 0, 0, 1, 1, 1, 1, 'Hydrospawn - Breakwater Legguards'),
(600635, 18307, 0, 0, 0, 1, 1, 1, 1, 'Hydrospawn - Riptide Shoes'),
(600635, 18317, 0, 20, 0, 1, 1, 1, 1, 'Hydrospawn - Tempest Talisman'),
(600635, 18322, 0, 20, 0, 1, 1, 1, 1, 'Hydrospawn - Waterspout Boots'),
(600635, 18324, 0, 10, 0, 1, 1, 1, 1, 'Hydrospawn - Waveslicer'),
(600635, 19268, 0, 2, 0, 1, 0, 1, 1, 'Hydrospawn - Ace of Elementals'),
(600635, 22527, 0, 63, 0, 1, 0, 2, 4, 'Hydrospawn - Core of Elements'),
(600635, 35016, 35016, 2, 0, 1, 2, 1, 1, 'Hydrospawn - (ReferenceTable)'),
(600635, 91016, 35016, 2, 0, 1, 1, 1, 1, 'Hydrospawn - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600635);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001163, 600635, 0, 0, 907, 0, 0, 1, 1, 0, -8320.1, -261.177, 143.975, 3.16042, 300, 0, 0, 364547, 213100, 0, 0, 32768, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600635;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600635);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600635, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 10000, 18000, 0, 0, 11, 22419, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hydrospawn - In Combat - Cast Riptide'),
(600635, 0, 1, 0, 0, 0, 100, 0, 3000, 10000, 11000, 16000, 0, 0, 11, 22420, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hydrospawn - In Combat - Cast Submersion'),
(600635, 0, 2, 0, 0, 0, 100, 0, 6000, 6000, 60000, 60000, 0, 0, 11, 22714, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hydrospawn - In Combat - Cast Summon Hydroling'),
(600635, 0, 3, 0, 0, 0, 100, 0, 12000, 16000, 20000, 30000, 0, 0, 11, 22421, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Hydrospawn - In Combat - Cast Massive Geyser');
