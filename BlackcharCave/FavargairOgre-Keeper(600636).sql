DELETE FROM `creature_template` WHERE (`entry` = 600636);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600636, 0, 0, 0, 0, 0, 'Favargair Ogre-Keeper', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1.6, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600636, 600636, 0, 0, 0, 78, 428, 'SmartAI', 0, 1, 40, 10, 1, 1, 0, 51, 1, 272, 0, 0, '', 12340);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600636, 0, 14526, 1, 1, 12340);

INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600636, 0, 20825, 0),
(600636, 1, 14887, 0),
(600636, 2, 17439, 0),
(600636, 3, 19816, 0);

INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600636, 1, 11343, 0, 0, 0);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600636, 1, 1005163, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 51-63'),
(600636, 2, 1026060, 100, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 60-60'),
(600636, 3, 1036060, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 60-60'),
(600636, 4, 1046060, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 60-60'),
(600636, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600636, 6, 1065562, 3, 0, 1, 0, 1, 1, 'World Drop - Potions VI - NPC Levels 55-62'),
(600636, 7, 1075062, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls IV - NPC Levels 50-62'),
(600636, 8, 1080007, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~50-63'),
(600636, 9, 1080022, 0.3, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels 46-62'),
(600636, 5759, 0, 0.3534, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Thorium Lockbox'),
(600636, 8766, 0, 4.72, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Morning Glory Dew'),
(600636, 8952, 0, 5.477, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Roasted Quail'),
(600636, 12693, 0, 0.03, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Plans: Thorium Boots'),
(600636, 14047, 0, 31.9788, 0, 1, 0, 1, 3, 'Twilight Lord Everun - Runecloth'),
(600636, 14492, 0, 0.08, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Pattern: Felcloth Boots'),
(600636, 14494, 0, 0.08, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Pattern: Brightcloth Pants'),
(600636, 19232, 0, 0.08, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Four of Beasts'),
(600636, 19280, 0, 0.247, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Four of Portals'),
(600636, 20404, 0, 25, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Encrypted Twilight Text'),
(600636, 20406, 0, 8, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Twilight Cultist Mantle'),
(600636, 20407, 0, 8, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Twilight Cultist Robe'),
(600636, 20408, 0, 8, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Twilight Cultist Cowl'),
(600636, 20451, 0, 3.7102, 0, 1, 0, 1, 1, 'Twilight Lord Everun - Twilight Cultist Ring of Lordship');

INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600636, 3928, 0, 20, 0, 1, 0, 1, 1, 'Mojo the Twisted - Superior Healing Potion'),
(600636, 4601, 0, 20, 0, 1, 0, 1, 1, 'Mojo the Twisted - Soft Banana Bread'),
(600636, 5428, 0, 40, 0, 1, 0, 1, 1, 'Mojo the Twisted - An Exotic Cookbook'),
(600636, 16884, 0, 20, 0, 1, 0, 1, 1, 'Mojo the Twisted - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600636);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001235, 600636, 0, 0, 0, 0, 0, 1, 1, 1, -7378.71, -631.102, 285.742, 5.39825, 300, 0, 0, 183524, 95080, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600636;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600636);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600636, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3400, 4800, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Favargair Ogre-Keeper - In Combat - Cast \'Shadow Bolt\''),
(600636, 0, 1, 0, 106, 0, 100, 0, 9000, 14000, 9000, 14000, 0, 30, 11, 17228, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Favargair Ogre-Keeper - On Hostile in Range - Cast \'Shadow Bolt Volley\''),
(600636, 0, 2, 0, 0, 0, 100, 0, 0, 40, 3400, 4700, 0, 0, 11, 19816, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Favargair Ogre-Keeper - In Combat - Cast \'Fireball\''),
(600636, 0, 3, 0, 9, 0, 100, 0, 0, 0, 12000, 15000, 0, 20, 11, 17439, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Favargair Ogre-Keeper - Within 0-20 Range - Cast \'Shadow Shock\'');
