DELETE FROM `creature_template` WHERE (`entry` = 600607);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600607, 0, 0, 0, 0, 0, 'Dark Iron Demolitionist', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600607, 600607, 0, 0, 0, 176, 308, 'SmartAI', 0, 1, 8, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600607);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600607, 0, 3487, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600607);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600607, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600607);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600607, 0, 8858, 12340),
(600607, 1, 7891, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600607);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600607, 1, 2884, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600607);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600607, 1, 1003140, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 31-40'),
(600607, 2, 1023031, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 30-31'),
(600607, 3, 1033031, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 30-31'),
(600607, 4, 1053140, 0.4, 0, 1, 0, 1, 1, 'World Drop - 12 Slot Bag - NPC Levels: 31-40'),
(600607, 5, 1063039, 3, 0, 1, 0, 1, 1, 'World Drop - Potions III - NPC Levels 30-39'),
(600607, 6, 1071930, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls II - NPC Levels 19-30'),
(600607, 7, 1080003, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~25'),
(600607, 9, 1080019, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 31-35'),
(600607, 1205, 0, 3, 0, 1, 0, 1, 1, 'Dark Iron Demolitionist - Melon Juice'),
(600607, 2084, 0, 2, 0, 1, 1, 1, 1, 'Dark Iron Demolitionist - Darksteel Bastard Sword'),
(600607, 2592, 0, 12, 0, 1, 2, 1, 3, 'Dark Iron Demolitionist - Wool Cloth'),
(600607, 4306, 0, 30, 0, 1, 2, 1, 3, 'Dark Iron Demolitionist - Silk Cloth'),
(600607, 4542, 0, 6, 0, 1, 0, 1, 1, 'Dark Iron Demolitionist - Moist Cornbread'),
(600607, 11150, 0, 1.5, 0, 1, 1, 1, 1, 'Dark Iron Demolitionist - Formula: Enchant Gloves - Mining');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600607);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600607, 422, 0, 4.7619, 0, 1, 0, 1, 1, 'Dark Iron Demolitionist - Dwarven Mild'),
(600607, 929, 0, 4.7619, 0, 1, 0, 1, 1, 'Dark Iron Demolitionist - Healing Potion'),
(600607, 5374, 0, 14.2857, 0, 1, 0, 1, 1, 'Dark Iron Demolitionist - Small Pocket Watch'),
(600607, 16882, 0, 4.7619, 0, 1, 0, 1, 1, 'Dark Iron Demolitionist - Battered Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600607);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001042, 600607, 0, 0, 0, 0, 0, 1, 1, 1, -4850.47, -976.645, 423.383, 3.8143, 300, 3, 0, 49649, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001054, 600607, 0, 0, 0, 0, 0, 1, 1, 1, -4845.78, -982.916, 443.597, 0.585999, 300, 2, 0, 49649, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600607;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600607);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600607, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3600, 3800, 0, 0, 11, 8858, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Demolitionist - In Combat - Cast \'Bomb\''),
(600607, 0, 2, 0, 0, 0, 100, 512, 1200, 8300, 8200, 20100, 0, 0, 11, 7891, 3, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Demolitionist - In Combat - Cast \'Gift of Ragnaros\''),
(600607, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Demolitionist - Between 0-15% Health - Flee For Assist (No Repeat)');
