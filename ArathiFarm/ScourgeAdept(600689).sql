DELETE FROM `creature_template` WHERE (`entry` = 600689);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600689, 0, 0, 0, 35297, 0, 'Scourge Adept', 'Delve', '', 0, 83, 83, 2, 168, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 1, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600689, 0, 0, 0, 0, 1667, 2779, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600689);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600689, 0, 24584, 1, 1, 12340),
(600689, 1, 24582, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600689);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600689, 0, 58847, 0),
(600689, 1, 60646, 0),
(600689, 2, 17238, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600689);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600689, 24727, 24727, 1.5, 0, 1, 0, 1, 1, 'Shadow Adept - (ReferenceTable)'),
(600689, 26001, 26001, 3, 0, 1, 1, 1, 1, 'Shadow Adept - (ReferenceTable)'),
(600689, 26002, 26002, 3, 0, 1, 1, 1, 1, 'Shadow Adept - (ReferenceTable)'),
(600689, 26013, 26013, 1, 0, 1, 1, 1, 1, 'Shadow Adept - (ReferenceTable)'),
(600689, 26014, 26014, 1, 0, 1, 1, 1, 1, 'Shadow Adept - (ReferenceTable)'),
(600689, 26015, 26015, 1, 0, 1, 1, 1, 1, 'Shadow Adept - (ReferenceTable)'),
(600689, 26040, 26040, 36.4, 0, 1, 0, 1, 1, 'Shadow Adept - (ReferenceTable)'),
(600689, 33365, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Rimed Cloth Belt'),
(600689, 33366, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Rimed Cloth Boots'),
(600689, 33367, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Rimed Cloth Bracers'),
(600689, 33368, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Rimed Cloth Gloves'),
(600689, 33369, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Rimed Cloth Pants'),
(600689, 33370, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Rimed Cloth Shoulderpads'),
(600689, 33371, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Rimed Cloth Vest'),
(600689, 33379, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frozen Armor'),
(600689, 33380, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frozen Belt'),
(600689, 33381, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frozen Boots'),
(600689, 33382, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frozen Bracers'),
(600689, 33384, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frozen Pants'),
(600689, 33398, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frigid Mail Belt'),
(600689, 33399, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frigid Mail Boots'),
(600689, 33400, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frigid Mail Bracers'),
(600689, 33401, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frigid Mail Gloves'),
(600689, 33403, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frigid Mail Shoulderpads'),
(600689, 33412, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Worn Plate Belt'),
(600689, 33414, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Worn Plate Bracers'),
(600689, 33415, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Worn Plate Chestpiece'),
(600689, 33416, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Worn Plate Gloves'),
(600689, 33419, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Worn Plate Shoulderpads'),
(600689, 33422, 0, 0.7, 0, 1, 0, 1, 1, 'Shadow Adept - Shattered Bow'),
(600689, 33423, 0, 0.3, 0, 1, 0, 1, 1, 'Shadow Adept - Rime-Covered Mace'),
(600689, 33424, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Cracked Iron Staff'),
(600689, 33425, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Ice-Pitted Blade'),
(600689, 33426, 0, 0.3, 0, 1, 0, 1, 1, 'Shadow Adept - Chipped Timber Axe'),
(600689, 33427, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Encrusted Rifle'),
(600689, 33428, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Dulled Shiv'),
(600689, 33429, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Ice Cleaver'),
(600689, 33430, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Abandoned Greatsword'),
(600689, 33431, 0, 0.3, 0, 1, 0, 1, 1, 'Shadow Adept - Icesmashing Mace'),
(600689, 33433, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frigid Mail Circlet'),
(600689, 33434, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Frozen Leather Helmet'),
(600689, 33435, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Worn Plate Helmet'),
(600689, 33436, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Frost-Rimed Cloth Hat'),
(600689, 33443, 0, 6.9, 0, 1, 0, 1, 1, 'Shadow Adept - Sour Goat Cheese'),
(600689, 33445, 0, 3, 0, 1, 0, 1, 1, 'Shadow Adept - Honeymint Tea'),
(600689, 36036, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Condor Sandals'),
(600689, 36037, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Condor Robe'),
(600689, 36038, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Condor Gloves'),
(600689, 36040, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Condor Pants'),
(600689, 36044, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Crystalsong Slippers'),
(600689, 36050, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Crystalsong Bracelets'),
(600689, 36053, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Vizier Robe'),
(600689, 36054, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Vizier Gloves'),
(600689, 36055, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Vizier Hood'),
(600689, 36056, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Vizier Leggings'),
(600689, 36057, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Vizier Mantle'),
(600689, 36147, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Pygmy Belt'),
(600689, 36150, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Pygmy Gloves'),
(600689, 36152, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Pygmy Pants'),
(600689, 36153, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Pygmy Shoulders'),
(600689, 36154, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Pygmy Bindings'),
(600689, 36163, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Webspinner Cord'),
(600689, 36165, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Webspinner Vest'),
(600689, 36168, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Webspinner Leggings'),
(600689, 36268, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Ulduar Greaves'),
(600689, 36270, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Ulduar Gauntlets'),
(600689, 36272, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Ulduar Legguards'),
(600689, 36273, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Ulduar Shoulderguards'),
(600689, 36277, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Spiderlord Chestpiece'),
(600689, 36281, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Spiderlord Spaulders'),
(600689, 36372, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Kraken Greaves'),
(600689, 36373, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Kraken Breastplate'),
(600689, 36374, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Kraken Gauntlets'),
(600689, 36375, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Kraken Helm'),
(600689, 36391, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Revenant Helmet'),
(600689, 36414, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Mammoth Fur Cloak'),
(600689, 36427, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Engraved Ring'),
(600689, 36429, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Spur Ring'),
(600689, 36441, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Pearl Woven Choker'),
(600689, 36442, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Silken Cord Amulet'),
(600689, 36469, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Lidless Orb'),
(600689, 36624, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Shrieking Bow'),
(600689, 36666, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Polar Wand'),
(600689, 36667, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Solid Ice Wand'),
(600689, 36679, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Singing Dagger'),
(600689, 36681, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Wisdom Carver'),
(600689, 36708, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Snow Blossom Staff'),
(600689, 37091, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Scroll of Intellect VII'),
(600689, 37093, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Scroll of Stamina VII'),
(600689, 37097, 0, 0.1, 0, 1, 0, 1, 1, 'Shadow Adept - Scroll of Spirit VII'),
(600689, 43463, 0, 0.3, 0, 1, 0, 1, 1, 'Shadow Adept - Scroll of Agility VII'),
(600689, 43465, 0, 0.3, 0, 1, 0, 1, 1, 'Shadow Adept - Scroll of Strength VII'),
(600689, 43467, 0, 0.2, 0, 1, 0, 1, 1, 'Shadow Adept - Scroll of Protection VII'),
(600689, 43851, 0, 30.1, 0, 1, 0, 1, 1, 'Shadow Adept - Fur Clothing Scraps'),
(600689, 43852, 0, 21.4, 0, 1, 0, 1, 1, 'Shadow Adept - Thick Fur Clothing Scraps');

DELETE FROM `creature` WHERE (`id1` = 600689);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001703, 600689, 0, 0, 0, 0, 0, 1, 1, 0, -1827.79, -4128.34, 11.7381, 1.23743, 300, 10, 0, 11477, 9330, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001717, 600689, 0, 0, 0, 0, 0, 1, 1, 0, -1770.73, -4275.11, 2.81984, 5.30908, 300, 10, 0, 11477, 9330, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001723, 600689, 0, 0, 0, 0, 0, 1, 1, 0, -1837.92, -4214.1, 3.14544, 0.631949, 300, 10, 0, 11477, 9330, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600689;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600689);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600689, 0, 0, 0, 1, 0, 100, 513, 1000, 1000, 1000, 1000, 0, 0, 11, 58847, 2, 0, 0, 0, 0, 11, 31245, 30, 0, 0, 0, 0, 0, 0, 'Scourge Adept - Out of Combat - Cast \'Green Cultist Beam\' (No Repeat)'),
(600689, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 6000, 9000, 0, 0, 11, 60646, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scourge Adept - In Combat - Cast \'Shadow Blast\''),
(600689, 0, 2, 0, 2, 0, 100, 0, 0, 80, 20000, 30000, 0, 0, 11, 17238, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scourge Adept - Between 0-80% Health - Cast \'Drain Life\'');
