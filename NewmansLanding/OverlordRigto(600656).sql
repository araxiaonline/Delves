DELETE FROM `creature_template` WHERE (`entry` = 600656);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600656, 0, 0, 0, 0, 0, 'Overlord Rigto', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1.2, 1.4236, 1, 1, 20, 1, 3, 0, 34.3, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600656, 600656, 0, 0, 0, 102, 364, 'SmartAI', 1, 1, 47.6, 20, 1.1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600656);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600656, 0, 8589, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600656);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600656, 0, 36629, 12340),
(600656, 1, 34298, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600656);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600656, 576, 0, 7, 0, 60, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600656);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600656, 1, 3361, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600656);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600656, 1, 1005163, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 51-63'),
(600656, 2, 1025051, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 50-51'),
(600656, 3, 1035051, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 50-51'),
(600656, 4, 1045051, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 50-51'),
(600656, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600656, 6, 1065054, 3, 0, 1, 0, 1, 1, 'World Drop - Potions V - NPC Levels 50-54'),
(600656, 7, 1075062, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls IV - NPC Levels 50-62'),
(600656, 8, 1080007, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~50-63'),
(600656, 9, 1080022, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 46-62'),
(600656, 5758, 0, 0.2489, 0, 1, 0, 1, 1, 'Overlord Ror - Mithril Lockbox'),
(600656, 8766, 0, 2.2124, 0, 1, 0, 1, 1, 'Overlord Ror - Morning Glory Dew'),
(600656, 8953, 0, 4.2035, 0, 1, 0, 1, 1, 'Overlord Ror - Deep Fried Plantains'),
(600656, 11515, 0, 35, 0, 1, 0, 1, 1, 'Overlord Ror - Corrupted Soul Shard'),
(600656, 11732, 0, 0.0277, 0, 1, 0, 1, 1, 'Overlord Ror - Libram of Rumination'),
(600656, 11733, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Libram of Constitution'),
(600656, 11734, 0, 0.0553, 0, 1, 0, 1, 1, 'Overlord Ror - Libram of Tenacity'),
(600656, 11737, 0, 0.04, 0, 1, 0, 1, 1, 'Overlord Ror - Libram of Voracity'),
(600656, 12694, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Plans: Thorium Helm'),
(600656, 14047, 0, 24.3086, 0, 1, 0, 1, 2, 'Overlord Ror - Runecloth'),
(600656, 14491, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Pattern: Runecloth Pants'),
(600656, 14498, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Pattern: Runecloth Headband'),
(600656, 14501, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Pattern: Mooncloth Vest'),
(600656, 15743, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Pattern: Heavy Scorpid Belt'),
(600656, 15746, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Pattern: Chimeric Leggings'),
(600656, 15879, 0, 100, 1, 1, 0, 1, 1, 'Overlord Ror - Overlord Ror\'s Claw'),
(600656, 19230, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Two of Beasts'),
(600656, 19231, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Three of Beasts'),
(600656, 19232, 0, 0.083, 0, 1, 0, 1, 1, 'Overlord Ror - Four of Beasts'),
(600656, 19259, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Two of Warlords'),
(600656, 19260, 0, 0.0277, 0, 1, 0, 1, 1, 'Overlord Ror - Three of Warlords'),
(600656, 19261, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Four of Warlords'),
(600656, 19269, 0, 0.0277, 0, 1, 0, 1, 1, 'Overlord Ror - Two of Elementals'),
(600656, 19270, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Three of Elementals'),
(600656, 19271, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Four of Elementals'),
(600656, 19278, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Two of Portals'),
(600656, 19279, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Three of Portals'),
(600656, 19280, 0, 0.02, 0, 1, 0, 1, 1, 'Overlord Ror - Four of Portals'),
(600656, 21377, 0, 28, 0, 1, 0, 1, 1, 'Overlord Ror - Deadwood Headdress Feather');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600656);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600656, 3928, 0, 1.1236, 0, 1, 0, 1, 1, 'Overlord Ror - Superior Healing Potion'),
(600656, 5430, 0, 6.7416, 0, 1, 0, 1, 1, 'Overlord Ror - Intricate Bauble'),
(600656, 8952, 0, 6.7416, 0, 1, 0, 1, 1, 'Overlord Ror - Roasted Quail'),
(600656, 16885, 0, 13.4831, 0, 1, 0, 1, 1, 'Overlord Ror - Heavy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600656);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001332, 600656, 0, 0, 910, 0, 0, 1, 1, 1, -6154.95, -730.893, 424.946, 4.03788, 300, 0, 0, 291312, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600656;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600656);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600656, 0, 0, 0, 0, 0, 100, 0, 1700, 1900, 6800, 6900, 0, 0, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Rigto - In Combat - Cast \'Maul\''),
(600656, 0, 1, 0, 2, 0, 100, 1, 20, 60, 0, 0, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Overlord Rigto - Between 20-60% Health - Cast \'Terrifying Roar\' (No Repeat)');
