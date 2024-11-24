DELETE FROM `creature_template` WHERE (`entry` = 600612);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600612, 0, 0, 0, 0, 0, 'Rirruhm Brightfury', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1, 2.14286, 1, 1, 20, 1, 3, 0, 21.25, 1000, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600612, 0, 0, 0, 0, 553, 727, 'SmartAI', 1, 1, 110, 2, 1.3, 1, 0, 0, 1, 613105499, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600612);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600612, 0, 9212, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600612);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600612, 0, 21049, 12340),
(600612, 1, 13730, 12340),
(600612, 2, 15615, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600612);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600612, 1, 11763, 11762, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600612);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600612, 11623, 0, 0, 0, 1, 1, 1, 1, 'Houndmaster Grebmar - Spritecaster Cape'),
(600612, 11627, 0, 0, 0, 1, 1, 1, 1, 'Houndmaster Grebmar - Fleetfoot Greaves'),
(600612, 11628, 0, 15, 0, 1, 1, 1, 1, 'Houndmaster Grebmar - Houndmaster\'s Bow'),
(600612, 11629, 0, 15, 0, 1, 1, 1, 1, 'Houndmaster Grebmar - Houndmaster\'s Rifle'),
(600612, 14047, 0, 20, 0, 1, 0, 1, 4, 'Houndmaster Grebmar - Runecloth'),
(600612, 18945, 0, 13, 0, 1, 0, 1, 10, 'Houndmaster Grebmar - Dark Iron Residue'),
(600612, 22528, 0, 8, 0, 1, 0, 2, 4, 'Houndmaster Grebmar - Dark Iron Scraps');

DELETE FROM `creature` WHERE (`id1` = 600612);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001083, 600612, 0, 0, 0, 0, 0, 1, 1, 1, -4848.93, -1082.4, 495.583, 2.83615, 300, 0, 0, 26807, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600612;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600612);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600612, 0, 0, 0, 0, 0, 100, 0, 7000, 9000, 22000, 24000, 0, 0, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rirruhm Brightfury - In Combat - Cast \'Demoralizing Shout\''),
(600612, 0, 1, 0, 105, 0, 100, 0, 5000, 7000, 12000, 14000, 0, 5, 11, 15615, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rirruhm Brightfury - On Hostile Casting in Range - Cast \'Pummel\''),
(600612, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 21049, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rirruhm Brightfury - Between 0-30% Health - Cast \'Bloodlust\' (No Repeat)');
