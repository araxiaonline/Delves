DELETE FROM `creature_template` WHERE (`entry` = 600603);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600603, 0, 0, 0, 0, 0, 'Dark Iron Shadowcaster', 'Delve', NULL, 0, 82, 82, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 1.6, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600603, 0, 0, 0, 0, 43, 134, 'SmartAI', 1, 1, 1.5, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600603);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600603, 0, 3970, 1, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 600603);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(600603, 5, 75, 12340),
(600603, 6, 100, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600603);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600603, 0, 20816, 12340),
(600603, 1, 2941, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600603);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600603, 1, 1907, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600603);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600603, 1, 1003140, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 31-40'),
(600603, 2, 1023132, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 31-32'),
(600603, 3, 1033132, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 31-32'),
(600603, 4, 1053140, 0.4, 0, 1, 0, 1, 1, 'World Drop - 12 Slot Bag - NPC Levels: 31-40'),
(600603, 5, 1063039, 3, 0, 1, 0, 1, 1, 'World Drop - Potions III - NPC Levels 30-39'),
(600603, 6, 1071930, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls II - NPC Levels 19-30'),
(600603, 7, 1080004, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~35'),
(600603, 9, 1080019, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 31-35'),
(600603, 1708, 0, 1.8421, 0, 1, 0, 1, 1, 'Dark Iron Shadowcaster - Sweet Nectar'),
(600603, 2592, 0, 3.4211, 0, 1, 0, 1, 3, 'Dark Iron Shadowcaster - Wool Cloth'),
(600603, 4306, 0, 33.6842, 0, 1, 0, 1, 2, 'Dark Iron Shadowcaster - Silk Cloth'),
(600603, 4338, 0, 1.3158, 0, 1, 0, 1, 1, 'Dark Iron Shadowcaster - Mageweave Cloth'),
(600603, 4544, 0, 4.4737, 0, 1, 0, 1, 1, 'Dark Iron Shadowcaster - Mulgore Spice Bread'),
(600603, 4634, 0, 0.2632, 0, 1, 0, 1, 1, 'Dark Iron Shadowcaster - Iron Lockbox');

DELETE FROM `creature` WHERE (`id1` = 600603);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001039, 600603, 0, 0, 0, 0, 0, 1, 1, 1, -4826.93, -1001.14, 407.897, 0.597, 300, 2, 0, 6529, 9155, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001040, 600603, 0, 0, 0, 0, 0, 1, 1, 1, -4831.61, -997.975, 409.309, 6.23396, 300, 1, 0, 6529, 9155, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001052, 600603, 0, 0, 0, 0, 0, 1, 1, 1, -4815.26, -993.609, 439.894, 0.744725, 300, 1, 0, 6529, 9155, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001059, 600603, 0, 0, 0, 0, 0, 1, 1, 1, -4834.86, -1019.83, 447.609, 1.9247, 300, 2, 0, 6529, 9155, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001064, 600603, 0, 0, 0, 0, 0, 1, 1, 1, -4861.22, -994.255, 453.765, 5.03967, 300, 0, 0, 6529, 9155, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001080, 600603, 0, 0, 0, 0, 0, 1, 1, 1, -4862.36, -1080.16, 488.559, 3.04577, 300, 2, 0, 6529, 9155, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600603;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600603);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600603, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3500, 8600, 0, 0, 11, 20816, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Shadowcaster - In Combat - Cast \'Shadow Bolt\''),
(600603, 0, 1, 0, 0, 0, 100, 0, 5500, 12400, 18200, 30700, 0, 0, 11, 2941, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Shadowcaster - In Combat - Cast \'Immolate\''),
(600603, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Iron Shadowcaster - Between 0-15% Health - Flee For Assist (No Repeat)');
