DELETE FROM `creature_template` WHERE (`entry` = 600680);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600680, 0, 0, 0, 0, 0, 'Scervig', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 18.37, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600680, 600680, 0, 0, 0, 399, 1620, 'SmartAI', 1, 1, 110.7, 40, 1.2, 2, 0, 0, 1, 646659935, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600680);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600680, 0, 5945, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600680);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600680, 0, 15537, 0),
(600680, 1, 12741, 0),
(600680, 2, 17228, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600680);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600680, 1, 1907, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600680);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600680, 1477, 0, 1.04, 0, 1, 0, 1, 1, 'Morloch - Scroll of Agility II'),
(600680, 1708, 0, 2.5538, 0, 1, 0, 1, 1, 'Morloch - Sweet Nectar'),
(600680, 1710, 0, 0.9409, 0, 1, 0, 1, 1, 'Morloch - Greater Healing Potion'),
(600680, 2289, 0, 0.58, 0, 1, 0, 1, 1, 'Morloch - Scroll of Strength II'),
(600680, 3385, 0, 0.5376, 0, 1, 0, 1, 1, 'Morloch - Lesser Mana Potion'),
(600680, 3771, 0, 5.7796, 0, 1, 0, 1, 1, 'Morloch - Wild Hog Shank'),
(600680, 4421, 0, 0.13, 0, 1, 0, 1, 1, 'Morloch - Scroll of Protection III'),
(600680, 4424, 0, 0.46, 0, 1, 0, 1, 1, 'Morloch - Scroll of Spirit III'),
(600680, 4500, 0, 0.58, 0, 1, 0, 1, 1, 'Morloch - Traveler\'s Backpack'),
(600680, 5759, 0, 0.12, 0, 1, 0, 1, 1, 'Morloch - Thorium Lockbox'),
(600680, 7909, 0, 0.46, 0, 1, 0, 1, 1, 'Morloch - Aquamarine'),
(600680, 7910, 0, 0.03, 0, 1, 0, 1, 1, 'Morloch - Star Ruby'),
(600680, 12365, 0, 0.12, 0, 1, 0, 1, 1, 'Morloch - Dense Stone'),
(600680, 12691, 0, 0.12, 0, 1, 0, 1, 1, 'Morloch - Plans: Wildthorn Mail'),
(600680, 12693, 0, 0.03, 0, 1, 0, 1, 1, 'Morloch - Plans: Thorium Boots'),
(600680, 14047, 0, 63.06, 0, 1, 0, 1, 1, 'Morloch - Runecloth'),
(600680, 16251, 0, 0.24, 0, 1, 0, 1, 1, 'Morloch - Formula: Enchant Bracer - Superior Stamina'),
(600680, 18335, 0, 0.34, 0, 1, 0, 1, 1, 'Morloch - Pristine Black Diamond'),
(600680, 19283, 0, 0.03, 0, 1, 0, 1, 1, 'Morloch - Seven of Portals'),
(600680, 24016, 24016, 1, 0, 1, 1, 1, 1, 'Morloch - (ReferenceTable)'),
(600680, 24024, 24024, 5, 0, 1, 1, 1, 1, 'Morloch - (ReferenceTable)'),
(600680, 24031, 24031, 1, 0, 1, 1, 1, 1, 'Morloch - (ReferenceTable)'),
(600680, 24032, 24032, 0.5, 0, 1, 1, 1, 1, 'Morloch - (ReferenceTable)'),
(600680, 24033, 24033, 1, 0, 1, 1, 1, 1, 'Morloch - (ReferenceTable)'),
(600680, 24034, 24034, 0.5, 0, 1, 1, 1, 1, 'Morloch - (ReferenceTable)'),
(600680, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Morloch - (ReferenceTable)'),
(600680, 24087, 24087, 0.1, 0, 1, 1, 1, 1, 'Morloch - (ReferenceTable)');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600680);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600680, 3928, 0, 6.8966, 0, 1, 0, 1, 1, 'Morloch - Superior Healing Potion'),
(600680, 5430, 0, 12.069, 0, 1, 0, 1, 1, 'Morloch - Intricate Bauble'),
(600680, 8952, 0, 5.1724, 0, 1, 0, 1, 1, 'Morloch - Roasted Quail'),
(600680, 16885, 0, 10.3448, 0, 1, 0, 1, 1, 'Morloch - Heavy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600680);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001559, 600680, 0, 0, 909, 0, 0, 1, 1, 1, -6013.65, 674.762, 483.625, 5.85856, 300, 0, 0, 659440, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600680;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600680);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600680, 0, 0, 0, 0, 0, 100, 2, 0, 0, 3400, 4800, 0, 0, 11, 15537, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scervig - In Combat - Cast \'Shadow Bolt\' (Normal Dungeon)'),
(600680, 0, 1, 0, 0, 0, 100, 2, 6000, 9000, 120000, 130000, 0, 0, 11, 12741, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scervig - In Combat - Cast \'Curse of Weakness\' (Normal Dungeon)'),
(600680, 0, 2, 0, 0, 0, 100, 2, 11000, 14000, 9000, 15000, 0, 0, 11, 17228, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scervig - In Combat - Cast \'Shadow Bolt Volley\' (Normal Dungeon)');
