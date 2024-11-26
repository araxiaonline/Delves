DELETE FROM `creature_template` WHERE (`entry` = 600660);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600660, 0, 0, 0, 0, 0, 'Venture Co. Enforcer', 'Delve', NULL, 0, 83, 84, 0, 168, 0, 1, 1.15287, 1, 1, 20, 1.3, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600660, 600660, 0, 0, 0, 73, 452, 'SmartAI', 0, 1, 35, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600660);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600660, 0, 1122, 1, 1, 12340),
(600660, 1, 3910, 1, 1, 12340),
(600660, 2, 3911, 1, 1, 12340),
(600660, 3, 7234, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600660);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600660, 0, 9128, 12340),
(600660, 1, 6713, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600660);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600660, 1, 5288, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600660);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600660, 1, 1001620, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 16-20'),
(600660, 2, 1011617, 1, 0, 1, 0, 1, 1, 'World Drop - White World Drop - NPC Levels: 16-17'),
(600660, 3, 1021617, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 16-17'),
(600660, 4, 1051120, 0.5, 0, 1, 0, 1, 1, 'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600660, 5, 1061019, 3, 0, 1, 0, 1, 1, 'World Drop - Potions I - NPC Levels 10-19'),
(600660, 6, 1070518, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls I - NPC Levels 5-18'),
(600660, 7, 1080002, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600660, 9, 1080015, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 15-19'),
(600660, 414, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Dalaran Sharp'),
(600660, 1179, 0, 2.2549, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Ice Cold Milk'),
(600660, 2287, 0, 4.6557, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Haunch of Meat'),
(600660, 2589, 0, 17.782, 0, 1, 0, 1, 3, 'Venture Co. Enforcer - Linen Cloth'),
(600660, 2592, 0, 19.8668, 0, 1, 0, 1, 2, 'Venture Co. Enforcer - Wool Cloth'),
(600660, 4359, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Handful of Copper Bolts'),
(600660, 4361, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Copper Tube'),
(600660, 4363, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Copper Modulator'),
(600660, 4364, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Coarse Blasting Powder'),
(600660, 4537, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Tel\'Abim Banana'),
(600660, 4541, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Freshly Baked Bread'),
(600660, 4605, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Red-speckled Mushroom'),
(600660, 5097, 0, 5, 1, 1, 0, 1, 1, 'Venture Co. Enforcer - Cats Eye Emerald'),
(600660, 5500, 0, 0.02, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Iridescent Pearl'),
(600660, 6661, 0, 0.04, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Recipe: Savory Deviate Delight'),
(600660, 11148, 0, 10, 1, 1, 0, 1, 1, 'Venture Co. Enforcer - Samophlange Manual Page');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600660);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600660, 818, 0, 1.2887, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Tigerseye'),
(600660, 858, 0, 2.3196, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Lesser Healing Potion'),
(600660, 1210, 0, 0.2577, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Shadowgem'),
(600660, 2287, 0, 5.4124, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Haunch of Meat'),
(600660, 4541, 0, 2.8351, 0, 1, 0, 1, 1, 'Venture Co. Enforcer - Freshly Baked Bread');

DELETE FROM `creature` WHERE (`id1` = 600660);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001360, 600660, 0, 0, 1, 0, 0, 1, 1, 1, 2722.71, 2002.98, 282.722, 4.63599, 300, 8, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001368, 600660, 0, 0, 1, 0, 0, 1, 1, 1, 2802.83, 2155.19, 242.221, 4.66002, 300, 7, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001369, 600660, 0, 0, 1, 0, 0, 1, 1, 1, 2756.46, 2155.29, 239.06, 3.06448, 300, 14, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001370, 600660, 0, 0, 1, 0, 0, 1, 1, 1, 2736.85, 2144.31, 243.032, 3.81085, 300, 9, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001371, 600660, 0, 0, 1, 0, 0, 1, 1, 1, 2709.04, 2152.81, 247.125, 2.56513, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001372, 600660, 0, 0, 1, 0, 0, 1, 1, 1, 2766.75, 2068.59, 268.48, 5.66007, 300, 6, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001390, 600660, 0, 0, 1, 0, 0, 1, 1, 1, 2860.78, 2271.5, 203.118, 3.7485, 300, 0, 0, 163817, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001394, 600660, 0, 0, 1, 0, 0, 1, 1, 1, 2789.34, 2260.54, 203.145, 6.04735, 300, 5, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600660;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600660);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600660, 0, 0, 0, 0, 0, 100, 1, 5000, 8000, 0, 0, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Enforcer - In Combat - Cast \'Battle Shout\' (No Repeat)'),
(600660, 0, 1, 0, 2, 0, 100, 1, 20, 40, 0, 0, 0, 0, 11, 6713, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Venture Co. Enforcer - Between 20-40% Health - Cast \'Disarm\' (No Repeat)');
