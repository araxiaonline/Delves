DELETE FROM `creature_template` WHERE (`entry` = 600655);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600655, 0, 0, 0, 0, 0, 'Chieftain Coldpaw', 'Delve Boss', NULL, 0, 85, 85, 0, 168, 0, 1.123, 1.72456, 1, 1, 20, 1, 3, 0, 36.9, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4, 600655, 600655, 0, 0, 0, 123, 672, 'SmartAI', 0, 1, 68.72, 20, 1.1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600655);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600655, 0, 8589, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600655);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600655, 0, 13583, 12340),
(600655, 1, 15117, 0),
(600655, 2, 5915, 0);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600655);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600655, 576, 0, 7, 0, 60, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600655);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600655, 1, 3361, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600655);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600655, 1, 1005163, 6, 0, 1, 0, 1, 1, 'World Drop - Grey World Drop - NPC Levels: 51-63'),
(600655, 2, 1025656, 2, 0, 1, 0, 1, 1, 'World Drop - Green World Drop - NPC Levels: 56-56'),
(600655, 3, 1035656, 0.1, 0, 1, 0, 1, 1, 'World Drop - Blue World Drop - NPC Levels: 56-56'),
(600655, 4, 1045656, 0.01, 0, 1, 0, 1, 1, 'World Drop - Purple World Drop - NPC Levels: 56-56'),
(600655, 5, 1054162, 0.1, 0, 1, 0, 1, 1, 'World Drop - 14 Slot Bag - NPC Levels: 41-62'),
(600655, 6, 1065562, 3, 0, 1, 0, 1, 1, 'World Drop - Potions VI - NPC Levels 55-62'),
(600655, 7, 1075062, 1, 0, 1, 0, 1, 1, 'World Drop - Scrolls IV - NPC Levels 50-62'),
(600655, 8, 1080007, 0.3, 0, 1, 0, 1, 1, 'World Drop - Profession Recipes - NPC Levels ~50-63'),
(600655, 9, 1080022, 1.5, 0, 1, 0, 1, 1, 'World Drop - Gems - NPC Levels: 46-62'),
(600655, 5759, 0, 0.0802, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Thorium Lockbox'),
(600655, 8766, 0, 2.4449, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Morning Glory Dew'),
(600655, 8953, 0, 4.7896, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Deep Fried Plantains'),
(600655, 11515, 0, 35, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Corrupted Soul Shard'),
(600655, 11732, 0, 0.06, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Libram of Rumination'),
(600655, 11733, 0, 0.08, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Libram of Constitution'),
(600655, 11734, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Libram of Tenacity'),
(600655, 11736, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Libram of Resilience'),
(600655, 11737, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Libram of Voracity'),
(600655, 12693, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Plans: Thorium Boots'),
(600655, 12694, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Plans: Thorium Helm'),
(600655, 12695, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Plans: Radiant Gloves'),
(600655, 12697, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Plans: Radiant Boots'),
(600655, 12704, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Plans: Thorium Leggings'),
(600655, 13490, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Recipe: Greater Stoneshield Potion'),
(600655, 13492, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Recipe: Purification Potion'),
(600655, 13493, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Recipe: Greater Arcane Elixir'),
(600655, 13518, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Recipe: Potion of Petrification'),
(600655, 14047, 0, 23.8878, 0, 1, 0, 1, 2, 'Chieftain Bloodmaw - Runecloth'),
(600655, 14489, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Frostweave Pants'),
(600655, 14494, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Brightcloth Pants'),
(600655, 14496, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Felcloth Hood'),
(600655, 14498, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Runecloth Headband'),
(600655, 14499, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Mooncloth Bag'),
(600655, 14501, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Mooncloth Vest'),
(600655, 14506, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Felcloth Robe'),
(600655, 14508, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Felcloth Shoulders'),
(600655, 15743, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Heavy Scorpid Belt'),
(600655, 15745, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Runic Leather Belt'),
(600655, 15746, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Chimeric Leggings'),
(600655, 15757, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Wicked Leather Pants'),
(600655, 15765, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Pattern: Runic Leather Pants'),
(600655, 16051, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Schematic: Thorium Shells'),
(600655, 16251, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Formula: Enchant Bracer - Superior Stamina'),
(600655, 19230, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Two of Beasts'),
(600655, 19231, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Three of Beasts'),
(600655, 19232, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Four of Beasts'),
(600655, 19260, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Three of Warlords'),
(600655, 19261, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Four of Warlords'),
(600655, 19270, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Three of Elementals'),
(600655, 19271, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Four of Elementals'),
(600655, 19278, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Two of Portals'),
(600655, 19279, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Three of Portals'),
(600655, 19280, 0, 0.02, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Four of Portals'),
(600655, 21377, 0, 39, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Deadwood Headdress Feather');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600655);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600655, 3928, 0, 2.8037, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Superior Healing Potion'),
(600655, 5430, 0, 4.6729, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Intricate Bauble'),
(600655, 8952, 0, 5.6075, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Roasted Quail'),
(600655, 16885, 0, 4.6729, 0, 1, 0, 1, 1, 'Chieftain Bloodmaw - Heavy Junkbox');

DELETE FROM `creature` WHERE (`id1` = 600655);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001322, 600655, 0, 0, 0, 0, 0, 1, 1, 1, -6168.31, -802.287, 424.334, 1.98203, 300, 0, 0, 307836, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600655;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600655);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600655, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Chieftain Coldpaw - On Aggro - Cast \'Curse of the Deadwood\''),
(600655, 0, 1, 0, 0, 0, 100, 0, 1700, 1800, 5900, 6200, 0, 0, 11, 15117, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Chieftain Coldpaw - In Combat - Cast \'Chain Lightning\''),
(600655, 0, 2, 0, 2, 0, 100, 1, 5, 30, 0, 0, 0, 0, 11, 5915, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chieftain Coldpaw - Between 5-30% Health - Cast \'Crazed\' (No Repeat)');
