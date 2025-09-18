DELETE FROM `creature_template` WHERE (`entry` = 600700);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600700, 0, 0, 0, 0, 0, 'Savathûn, The Redeemer', 'Delve Boss', '', 0, 85, 85, 2, 168, 0, 1.44444, 1.5873, 1, 1, 20, 2.3, 3, 0, 88, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 2, 4, 600700, 0, 70202, 0, 0, 0, 0, 'SmartAI', 0, 3, 80.7, 30, 1.2, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600700);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600700, 0, 27710, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600700);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600700, 0, 21862, 0),
(600700, 1, 9573, 0),
(600700, 2, 8876, 0),
(600700, 3, 60667, 0);


DELETE FROM `creature_loot_template` WHERE (`Entry` = 600700);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600700, 26000, 26000, 3, 0, 1, 1, 1, 1, 'Plagued Proto-Dragon - (ReferenceTable)'),
(600700, 26001, 26001, 3, 0, 1, 1, 1, 1, 'Plagued Proto-Dragon - (ReferenceTable)'),
(600700, 26003, 26003, 1, 0, 1, 1, 1, 1, 'Plagued Proto-Dragon - (ReferenceTable)'),
(600700, 26004, 26004, 1, 0, 1, 1, 1, 1, 'Plagued Proto-Dragon - (ReferenceTable)'),
(600700, 26005, 26005, 1, 0, 1, 1, 1, 1, 'Plagued Proto-Dragon - (ReferenceTable)'),
(600700, 33362, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Thread-Bare Cloth Pants'),
(600700, 33375, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Fur-Lined Bracers'),
(600700, 33377, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Fur-Lined Pants'),
(600700, 33392, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Icy Mail Boots'),
(600700, 33393, 0, 0.2, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Icy Mail Bracers'),
(600700, 33406, 0, 0.4, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Ice-Bound Plate Bracers'),
(600700, 33407, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Ice-Bound Plate Chestpiece'),
(600700, 33409, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Ice-Bound Plate Pants'),
(600700, 33410, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Ice-Bound Plate Shoulderpads'),
(600700, 33424, 0, 0.2, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Cracked Iron Staff'),
(600700, 33428, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Dulled Shiv'),
(600700, 33431, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Icesmashing Mace'),
(600700, 33437, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Icy Mail Circlet'),
(600700, 33631, 0, 82.2, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Frosted Claw'),
(600700, 33632, 0, 17.6, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Icicle Fang'),
(600700, 35957, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Farshire Robe'),
(600700, 35970, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Bloodspore Bracelets'),
(600700, 35972, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Mur\'ghoul Boots'),
(600700, 35975, 0, 0.2, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Mur\'ghoul Cap'),
(600700, 36182, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Garmaul Fists'),
(600700, 36310, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Baleheim Gloves'),
(600700, 36314, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Baleheim Vambraces'),
(600700, 36417, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Oval Ring'),
(600700, 36431, 0, 0.2, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Painted Wooden Beads'),
(600700, 36515, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Raider\'s Cutlass'),
(600700, 36572, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Dinged Cleaver'),
(600700, 36655, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Pearled Wand'),
(600700, 36669, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Eccentric Dagger'),
(600700, 36670, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Gypsy Blade'),
(600700, 42106, 0, 33, 1, 1, 0, 1, 1, 'Plagued Proto-Dragon - Proto Dragon Bone'),
(600700, 45912, 0, 0.1, 0, 1, 0, 1, 1, 'Plagued Proto-Dragon - Book of Glyph Mastery');

DELETE FROM `skinning_loot_template` WHERE (`Entry` = 600700);
INSERT INTO `skinning_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600700, 33567, 0, 0, 0, 1, 1, 1, 1, NULL),
(600700, 33568, 0, 0, 0, 1, 1, 1, 1, NULL),
(600700, 44128, 0, 1, 0, 1, 1, 1, 1, NULL);

DELETE FROM `creature` WHERE (`id1` = 600700);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `Comment`, `VerifiedBuild`) VALUES
(9001767, 600700, 0, 0, 906, 0, 0, 1, 1, 0, -1698.36, -4261.88, 1.99885, 2.43984, 300, 5, 0, 1476628, 0, 1, 0, 0, 0, '', NULL, NULL);


  
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600700;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600700);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600700, 0, 0, 0, 23, 0, 100, 0, 21862, 0, 2000, 2000, 0, 0, 11, 21862, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Savathûn, The Redeemer - On Aura \'Radiation\' - Cast \'Radiation\''),
(600700, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 15000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Savathûn, The Redeemer - In Combat - Cast \'Flame Breath\''),
(600700, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Savathûn, The Redeemer - On Reset - Cast \'Thrash\''),
(600700, 0, 3, 0, 0, 0, 100, 0, 0, 5000, 5000, 15000, 0, 0, 11, 60667, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Savathûn, The Redeemer - In Combat - Cast \'Frost Breath\'');
