DELETE FROM `creature_template` WHERE (`entry` = 600669);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600669, 0, 0, 0, 0, 0, 'Eredar Soul-Eate', 'Delve', NULL, 0, 83, 84, 0, 168, 0, 1, 1.71429, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600669, 600669, 0, 0, 0, 66, 444, 'SmartAI', 0, 1, 25, 10, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600669);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600669, 0, 19950, 1, 1, 12340);


DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600669);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600669, 0, 36778, 12340),
(600669, 1, 36784, 12340),
(600669, 2, 36786, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600669);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600669, 935, 0, 7, 0, 24, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600669);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600669, 1, 13622, 0, 0, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600669);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600669, 19235, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Seven of Beasts'),
(600669, 19262, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Five of Warlords'),
(600669, 19265, 0, 0.04, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Eight of Warlords'),
(600669, 19275, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Eight of Elementals'),
(600669, 19282, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Six of Portals'),
(600669, 21877, 0, 22.48, 0, 1, 0, 2, 3, 'Eredar Soul-Eater - Netherweave Cloth'),
(600669, 22153, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Tome of Arcane Brilliance 2'),
(600669, 22903, 0, 0.2, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Recipe: Insane Strength Potion'),
(600669, 23437, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Talasite'),
(600669, 23438, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Star of Elune'),
(600669, 23884, 0, 0.2, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Schematic: Mana Potion Injector'),
(600669, 24001, 24001, 5, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24002, 24002, 5, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24009, 24009, 1, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24011, 24011, 1, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24012, 24012, 0.5, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24013, 24013, 1, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24014, 24014, 0.5, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24015, 24015, 0.1, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24035, 24035, 2, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 24092, 24092, 0.5, 0, 1, 1, 1, 1, 'Eredar Soul-Eater - (ReferenceTable)'),
(600669, 27854, 0, 4.57, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Smoked Talbuk Venison'),
(600669, 27860, 0, 1.99, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Purified Draenic Water'),
(600669, 29549, 0, 0.06, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Codex: Prayer of Fortitude III'),
(600669, 29550, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Tome of Conjure Water IX'),
(600669, 29740, 0, 6, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Fel Armament'),
(600669, 30809, 0, 38, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Mark of Sargeras'),
(600669, 31886, 0, 0.02, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Seven of Blessings'),
(600669, 31952, 0, 0.19, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Khorium Lockbox'),
(600669, 32902, 0, 3.73, 0, 1, 0, 1, 3, 'Eredar Soul-Eater - Bottled Nethergon Energy'),
(600669, 32905, 0, 0.98, 0, 1, 0, 1, 3, 'Eredar Soul-Eater - Bottled Nethergon Vapor');

DELETE FROM `pickpocketing_loot_template` WHERE (`Entry` = 600669);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600669, 27854, 0, 11.11, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Smoked Talbuk Venison'),
(600669, 27855, 0, 5.56, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Mag\'har Grainbread'),
(600669, 29569, 0, 16.67, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - Strong Junkbox'),
(600669, 29570, 0, 8.33, 0, 1, 0, 1, 1, 'Eredar Soul-Eater - A Gnome Effigy');

DELETE FROM `creature` WHERE (`id1` = 600669);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001417, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11637.3, -2375.74, 5.66675, 2.21685, 300, 0, 0, 114702, 95080, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001435, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11735.8, -2425.62, -7.49692, 5.67432, 300, 7, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001436, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11744.3, -2483.74, -7.49567, 3.45526, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001437, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11777.3, -2519.56, -11.8668, 4.42059, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001461, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11862.6, -2643.35, -2.50824, 5.44953, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001462, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11933.7, -2667.15, -6.64485, 2.9394, 300, 10, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001463, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11949.4, -2717.11, 2.24402, 0.902079, 300, 10, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001472, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11765.3, -2590.23, 5.4333, 5.54417, 300, 10, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001476, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11999.3, -2596.88, -38.9059, 0.0217177, 300, 0, 0, 111732, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001477, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11995.8, -2579.02, -39.9893, 0.0592625, 300, 0, 0, 114702, 95080, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001494, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -12123.5, -2595.34, -27.3366, 3.84951, 300, 10, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001499, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11992.6, -2398.36, 3.02313, 1.6266, 300, 10, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001506, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11908, -2436.03, -2.2312, 0.18429, 300, 7, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001511, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11790.5, -2427.29, -14.8477, 1.50078, 300, 10, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001522, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11889.2, -2528.27, -30.5939, 4.41114, 300, 10, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001523, 600669, 0, 0, 911, 0, 0, 1, 1, 1, -11913.5, -2551.43, -38.7786, 3.77026, 300, 10, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600669;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600669);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600669, 0, 0, 0, 0, 0, 100, 0, 6000, 15000, 15000, 22000, 0, 0, 11, 36786, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Eredar Soul-Eate - In Combat - Cast \'Soul Chill\''),
(600669, 0, 1, 0, 0, 0, 100, 0, 15000, 17000, 14000, 21000, 0, 0, 11, 36778, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Eredar Soul-Eate - In Combat - Cast \'Soul Steal\''),
(600669, 0, 2, 0, 31, 0, 100, 0, 36778, 0, 0, 0, 0, 0, 11, 36782, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Eredar Soul-Eate - On Target Spellhit \'Soul Steal\' - Cast \'Soul Steal\'');
