DELETE FROM `creature_template` WHERE (`entry` = 600623);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600623, 0, 0, 0, 0, 0, 'Chief Runetusk', 'Delve Boss', NULL, 0, 84, 84, 0, 168, 0, 1, 1.14286, 1, 1, 20, 1, 3, 0, 18.37, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600623, 600623, 0, 0, 0, 399, 1620, 'SmartAI', 1, 1, 110.7, 40, 1.2, 2, 0, 0, 1, 646659935, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600623);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600623, 0, 6439, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600623);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600623, 0, 11837, 12340),
(600623, 1, 15496, 12340),
(600623, 2, 34409, 12340),
(600623, 3, 7366, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600623);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600623, 1, 11542, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600623);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600623, 1520, 0, 19, 0, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - Troll Sweat'),
(600623, 4338, 0, 17, 0, 1, 0, 1, 4, 'Chief Ukorz Sandscalp - Mageweave Cloth'),
(600623, 8151, 0, 6, 0, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - Flask of Mojo'),
(600623, 9242, 0, 3, 0, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - Ancient Tablet'),
(600623, 9243, 0, 2, 0, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - Shriveled Heart'),
(600623, 9476, 0, 30, 0, 1, 1, 1, 1, 'Chief Ukorz Sandscalp - Big Bad Pauldrons'),
(600623, 9477, 0, 0, 0, 1, 1, 1, 1, 'Chief Ukorz Sandscalp - The Chief\'s Enforcer'),
(600623, 9478, 0, 0, 0, 1, 1, 1, 1, 'Chief Ukorz Sandscalp - Ripsaw'),
(600623, 9479, 0, 0, 0, 1, 1, 1, 1, 'Chief Ukorz Sandscalp - Embrace of the Lycan'),
(600623, 9484, 0, 0.01, 0, 1, 1, 1, 1, 'Chief Ukorz Sandscalp - Spellshock Leggings'),
(600623, 9523, 0, 55, 1, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - Troll Temper'),
(600623, 11086, 0, 10, 0, 1, 1, 1, 1, 'Chief Ukorz Sandscalp - Jang\'thraze the Protector');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600623);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600623, 4599, 0, 4, 0, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - Cured Ham Steak'),
(600623, 4601, 0, 4, 0, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - Soft Banana Bread'),
(600623, 5428, 0, 20, 0, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - An Exotic Cookbook'),
(600623, 16884, 0, 20, 0, 1, 0, 1, 1, 'Chief Ukorz Sandscalp - Sturdy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600623);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001153, 600623, 0, 0, 905, 0, 0, 1, 1, 1, -13030.9, -1554.54, 60.7208, 1.2539, 300, 0, 0, 659440, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600623;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600623);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600623, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Runetusk - On Aggro - Cast \'Berserker Stance\''),
(600623, 0, 2, 0, 0, 0, 100, 0, 3000, 8000, 7000, 11000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Runetusk - In Combat - Cast \'Cleave\''),
(600623, 0, 3, 4, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Runetusk - Between 0-30% Health - Cast \'Frenzy\' (No Repeat)');

