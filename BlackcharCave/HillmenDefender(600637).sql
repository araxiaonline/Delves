DELETE FROM `creature_template` WHERE (`entry` = 600637);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600637, 38101, 0, 0, 0, 0, 'Hillmen Defender', 'Delve', '', 0, 82, 82, 0, 168, 0, 1, 1.9048, 1, 1, 20, 1, 1, 0, 36.9, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 6, 72, 600637, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 38, 10, 1, 1, 0, 0, 1, 8388624, 0, 0, '', 11159);

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600637, 0, 2314, 1, 1, 12340),
(600637, 1, 2315, 1, 1, 12340);

INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600637, 0, 8874, 12340),
(600637, 1, 14903, 12340),
(600637, 2, 6408, 12340),
(600637, 3, 1833, 12340),
(600637, 4, 70435, 0),
(600637, 5, 70423, 0);

INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600637, 1, 51323, 51324, 0, 18019);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600637, 1, 35069, 100, 0, 1, 0, 1, 2, 'Darkfallen Lieutenant - (ReferenceTable)');

INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001217, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7311.43, -733.632, 301.443, 5.49412, 300, 5, 0, 188685, 41690, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001218, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7319.27, -720.073, 299.228, 4.08336, 300, 8, 0, 188685, 41690, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001223, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7230.36, -686.578, 289.527, 3.97158, 300, 3, 0, 188685, 41690, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001224, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7248.64, -686.54, 288.642, 5.76873, 300, 3, 0, 188685, 41690, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001228, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7228, -631.567, 291.894, 1.18357, 300, 0, 0, 188685, 41690, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001231, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7260.8, -582.963, 295.59, 5.50373, 300, 5, 0, 188685, 41690, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001232, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7271.91, -597.099, 294.459, 6.26462, 300, 0, 0, 188685, 41690, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001237, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7306.78, -633.779, 290.767, 1.51988, 300, 0, 0, 188685, 41690, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001242, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7315.55, -676.244, 285.81, 4.5464, 300, 0, 0, 188685, 41690, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001246, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7384.9, -704.677, 297.381, 0.455419, 300, 0, 0, 188685, 41690, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001250, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7339.09, -734.294, 301.556, 6.09644, 300, 5, 0, 188685, 41690, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001253, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7290.38, -694.044, 286.976, 1.33466, 300, 0, 0, 188685, 41690, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001255, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7373.94, -619.162, 287.024, 4.74289, 300, 3, 0, 188685, 41690, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001256, 600637, 0, 0, 904, 0, 0, 1, 1, 1, -7397.63, -675.4, 287.41, 0.645391, 300, 3, 0, 188685, 41690, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600637;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600637);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600637, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 6408, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hillmen Defender - Out of Combat - Cast \'Faded\' (No Repeat)'),
(600637, 0, 1, 2, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 1833, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Hillmen Defender - On Aggro - Cast \'Cheap Shot\''),
(600637, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 28, 6408, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hillmen Defender - On Aggro - Remove Aura \'Faded\''),
(600637, 0, 3, 0, 0, 0, 100, 0, 3000, 10000, 10000, 15000, 0, 0, 11, 14903, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hillmen Defender - In Combat - Cast \'Rupture\''),
(600637, 0, 4, 0, 0, 0, 100, 0, 2000, 4000, 8000, 8000, 0, 0, 11, 70423, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hillmen Defender - In Combat - Cast \'Vampiric Curse\''),
(600637, 0, 5, 0, 0, 0, 100, 0, 5000, 5000, 5000, 5000, 0, 0, 11, 70435, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Hillmen Defender - In Combat - Cast \'Rend Flesh\'');
