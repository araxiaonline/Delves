DELETE FROM `creature_template` WHERE (`entry` = 600702);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600702, 0, 0, 0, 0, 0, 'Overlord Moosh', 'Delve Boss', NULL, 0, 85, 85, 0, 90, 0, 1.2, 1.14857, 1, 1, 20, 1, 3, 0, 92, 1500, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 3, 4, 600702, 0, 0, 0, 0, 453, 625, 'SmartAI', 0, 1, 90, 50, 1.3, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600702);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600702, 0, 7207, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600702);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600702, 0, 13299, 12340),
(600702, 1, 15667, 12340),
(600702, 2, 15583, 0),
(600702, 3, 41978, 0),
(600702, 4, 41177, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600702);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600702, 1, 10619, 10619, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600702);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600702, 3356, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Kingsblood'),
(600702, 4500, 0, 0.12, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Traveler\'s Backpack'),
(600702, 5759, 0, 0.6993, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Thorium Lockbox'),
(600702, 7909, 0, 0.2797, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Aquamarine'),
(600702, 7910, 0, 0.5594, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Star Ruby'),
(600702, 8932, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Alterac Swiss'),
(600702, 8948, 0, 8.5315, 0, 1, 0, 2, 4, 'Wildspawn Rogue - Dried King Bolete'),
(600702, 8952, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Roasted Quail'),
(600702, 8953, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Deep Fried Plantains'),
(600702, 12662, 0, 10.0699, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Demonic Rune'),
(600702, 12683, 0, 0.18, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Thorium Belt'),
(600702, 12684, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Thorium Bracers'),
(600702, 12689, 0, 0.06, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Radiant Breastplate'),
(600702, 12693, 0, 0.08, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Thorium Boots'),
(600702, 12694, 0, 0.06, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Thorium Helm'),
(600702, 12695, 0, 0.08, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Radiant Gloves'),
(600702, 12697, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Radiant Boots'),
(600702, 12702, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Radiant Circlet'),
(600702, 12704, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Thorium Leggings'),
(600702, 12713, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Plans: Radiant Leggings'),
(600702, 14047, 0, 28.1119, 0, 1, 0, 2, 4, 'Wildspawn Rogue - Runecloth'),
(600702, 14256, 0, 6.014, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Felcloth'),
(600702, 14467, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Frostweave Robe'),
(600702, 14474, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Frostweave Gloves'),
(600702, 14478, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Brightcloth Robe'),
(600702, 14479, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Brightcloth Gloves'),
(600702, 14484, 0, 0.03, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Brightcloth Cloak'),
(600702, 14489, 0, 0.06, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Frostweave Pants'),
(600702, 14491, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Runecloth Pants'),
(600702, 14492, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Felcloth Boots'),
(600702, 14494, 0, 0.12, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Brightcloth Pants'),
(600702, 14496, 0, 0.08, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Felcloth Hood'),
(600702, 14498, 0, 0.06, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Runecloth Headband'),
(600702, 14499, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Mooncloth Bag'),
(600702, 14501, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Mooncloth Vest'),
(600702, 14504, 0, 0.08, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Runecloth Shoulders'),
(600702, 14506, 0, 0.08, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Felcloth Robe'),
(600702, 15737, 0, 0.03, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Chimeric Boots'),
(600702, 15743, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Heavy Scorpid Belt'),
(600702, 15745, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Runic Leather Belt'),
(600702, 15746, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Chimeric Leggings'),
(600702, 15755, 0, 0.06, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Chimeric Vest'),
(600702, 15757, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Wicked Leather Pants'),
(600702, 15765, 0, 0.08, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pattern: Runic Leather Pants'),
(600702, 16051, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Schematic: Thorium Shells'),
(600702, 16215, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Formula: Enchant Boots - Greater Stamina'),
(600702, 16251, 0, 0.08, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Formula: Enchant Bracer - Superior Stamina'),
(600702, 17414, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Codex: Prayer of Fortitude II'),
(600702, 17683, 0, 0.3, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Book: Gift of the Wild II'),
(600702, 18255, 0, 0.26, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Runn Tum Tuber'),
(600702, 18296, 0, 1.1189, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Marksman Bands'),
(600702, 18297, 0, 0.26, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Thornling Seed'),
(600702, 18298, 0, 0.2797, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Unbridled Leggings'),
(600702, 18332, 0, 1.3986, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Libram of Rapidity'),
(600702, 18333, 0, 0.2797, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Libram of Focus'),
(600702, 18335, 0, 0.1399, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Pristine Black Diamond'),
(600702, 18600, 0, 0.2, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Tome of Arcane Brilliance'),
(600702, 18603, 0, 80, 1, 1, 0, 1, 1, 'Wildspawn Rogue - Satyr Blood'),
(600702, 19233, 0, 0.09, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Five of Beasts'),
(600702, 19234, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Six of Beasts'),
(600702, 19262, 0, 0.2797, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Five of Warlords'),
(600702, 19263, 0, 0.1399, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Six of Warlords'),
(600702, 19264, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Seven of Warlords'),
(600702, 19265, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Eight of Warlords'),
(600702, 19273, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Six of Elementals'),
(600702, 19282, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Six of Portals'),
(600702, 19284, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Eight of Portals'),
(600702, 22393, 0, 0.02, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Codex: Prayer of Shadow Protection'),
(600702, 22890, 0, 0.03, 0, 1, 0, 1, 1, 'Wildspawn Rogue - Tome of Frost Ward V'),
(600702, 24016, 24016, 1, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24017, 24017, 0.5, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24024, 24024, 5, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24029, 24029, 1, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24030, 24030, 0.5, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24031, 24031, 1, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24032, 24032, 0.5, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24033, 24033, 1, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24034, 24034, 0.5, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24036, 24036, 5, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)'),
(600702, 24087, 24087, 0.1, 0, 1, 1, 1, 1, 'Wildspawn Rogue - (ReferenceTable)');

DELETE FROM `creature` WHERE (`id1` = 600702);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001874, 600702, 0, 0, 902, 0, 0, 1, 1, 1, 1945, 1337.83, 146.915, 2.29323, 300, 0, 0, 550800, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600702;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600702);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600702, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildspawn Rogue - On Reset - Cast Poison Proc'),
(600702, 0, 1, 0, 0, 0, 100, 0, 3000, 7000, 5000, 9000, 0, 0, 11, 15667, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildspawn Rogue - In Combat - Cast Sinister Strike'),
(600702, 0, 2, 0, 0, 0, 100, 0, 6000, 11000, 15000, 24000, 0, 0, 11, 15583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Wildspawn Rogue - In Combat - Cast Rupture');
