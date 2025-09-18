DELETE FROM `creature_template` WHERE (`entry` = 600638);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600638, 0, 0, 0, 0, 0, 'Rock-Ogre Brawler', 'Delve', NULL, 0, 83, 83, 0, 168, 0, 1.6, 1.19048, 1, 1, 20, 0.78, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600638, 600638, 0, 0, 0, 180, 240, 'SmartAI', 1, 1, 38, 1, 1, 1, 0, 51, 1, 0, 0, 0, '', 12340);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600638, 0, 19905, 1, 1, 12340);

INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600638, 0, 34932, 12340),
(600638, 1, 15496, 12340),
(600638, 2, 37577, 12340),
(600638, 3, 8599, 12340);

INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600638, 1, 17942, 0, 0, 18019);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600638, 5760, 0, 0.0539, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Eternium Lockbox'),
(600638, 19231, 0, 0.012, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Three of Beasts'),
(600638, 19232, 0, 0.006, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Four of Beasts'),
(600638, 19260, 0, 0.006, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Three of Warlords'),
(600638, 19269, 0, 0.012, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Two of Elementals'),
(600638, 19270, 0, 0.006, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Three of Elementals'),
(600638, 19271, 0, 0.006, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Four of Elementals'),
(600638, 19278, 0, 0.012, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Two of Portals'),
(600638, 19279, 0, 0.006, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Three of Portals'),
(600638, 21877, 0, 35.9607, 0, 1, 0, 1, 3, 'Bloodmaul Brute - Netherweave Cloth'),
(600638, 22903, 0, 0.02, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Recipe: Insane Strength Potion'),
(600638, 23884, 0, 0.02, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Schematic: Mana Potion Injector'),
(600638, 24000, 24000, 5, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24005, 24005, 1, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24007, 24007, 1, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24008, 24008, 0.5, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24010, 24010, 0.5, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24035, 24035, 2, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24092, 24092, 0.5, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 24093, 24093, 0.5, 0, 1, 1, 1, 1, 'Bloodmaul Brute - (ReferenceTable)'),
(600638, 27854, 0, 4.3663, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Smoked Talbuk Venison'),
(600638, 27860, 0, 2.1263, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Purified Draenic Water'),
(600638, 31837, 0, 0.04, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Codex: Prayer of Shadow Protection II'),
(600638, 31909, 0, 0.006, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Two of Furies'),
(600638, 31952, 0, 0.04, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Khorium Lockbox');

INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600638, 22829, 0, 2.6008, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Super Healing Potion'),
(600638, 27854, 0, 5.7217, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Smoked Talbuk Venison'),
(600638, 29569, 0, 8.7126, 0, 1, 0, 1, 1, 'Bloodmaul Brute - Strong Junkbox'),
(600638, 29570, 0, 12.0936, 0, 1, 0, 1, 1, 'Bloodmaul Brute - A Gnome Effigy');

DELETE FROM `creature` WHERE (`id1` = 600638);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001219, 600638, 0, 0, 904, 0, 0, 1, 1, 1, -7290.69, -735.233, 299.594, 5.7949, 300, 5, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001229, 600638, 0, 0, 904, 0, 0, 1, 1, 1, -7262.16, -645.497, 291.434, 0.544021, 300, 8, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001234, 600638, 0, 0, 904, 0, 0, 1, 1, 1, -7295.52, -591.562, 291.36, 0.232447, 300, 5, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001240, 600638, 0, 0, 904, 0, 0, 1, 1, 1, -7311.22, -646.251, 285.136, 3.78418, 300, 8, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001243, 600638, 0, 0, 904, 0, 0, 1, 1, 1, -7351.07, -670.159, 284.715, 5.67329, 300, 10, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001249, 600638, 0, 0, 904, 0, 0, 1, 1, 1, -7366.98, -708.443, 298.729, 6.1523, 300, 4, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001254, 600638, 0, 0, 904, 0, 0, 1, 1, 1, -7307.97, -685.64, 287.032, 6.01964, 300, 4, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600638;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600638);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600638, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 4000, 5000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Brawler - In Combat - Cast \'Cleave\''),
(600638, 0, 2, 0, 0, 0, 100, 0, 5000, 10000, 8000, 12000, 0, 0, 11, 37577, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Brawler - In Combat - Cast \'Debilitating Strike\''),
(600638, 0, 3, 0, 0, 0, 100, 1, 15000, 20000, 10000, 15000, 0, 0, 11, 34932, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Brawler - In Combat - Cast \'Bloodmaul Buzz\' (No Repeat)'),
(600638, 0, 4, 5, 2, 0, 100, 1, 0, 20, 1, 1, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rock-Ogre Brawler - Between 0-20% Health - Cast \'Enrage\' (No Repeat)');
