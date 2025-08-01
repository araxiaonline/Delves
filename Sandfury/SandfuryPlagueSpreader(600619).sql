DELETE FROM `creature_template` WHERE (`entry` = 600619);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600619, 0, 0, 0, 0, 0, 'Sandfury Plague Spreader', 'Delve', '', 0, 83, 83, 2, 168, 0, 0.66667, 1.14286, 1, 1, 20, 1, 1, 0, 8.3, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 600619, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 12.1, 2, 1.2, 1, 0, 0, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600619);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600619, 0, 7803, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600619);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600619, 0, 52230, 0);


DELETE FROM `creature_loot_template` WHERE (`Entry` = 600619);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600619, 24727, 24727, 1.5, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - (ReferenceTable)'),
(600619, 26000, 26000, 3, 0, 1, 1, 1, 1, 'Drakkari Plague Spreader - (ReferenceTable)'),
(600619, 26001, 26001, 3, 0, 1, 1, 1, 1, 'Drakkari Plague Spreader - (ReferenceTable)'),
(600619, 26006, 26006, 1, 0, 1, 1, 1, 1, 'Drakkari Plague Spreader - (ReferenceTable)'),
(600619, 26007, 26007, 1, 0, 1, 1, 1, 1, 'Drakkari Plague Spreader - (ReferenceTable)'),
(600619, 26008, 26008, 1, 0, 1, 1, 1, 1, 'Drakkari Plague Spreader - (ReferenceTable)'),
(600619, 26022, 26022, 0.5, 0, 1, 1, 1, 1, 'Drakkari Plague Spreader - (ReferenceTable)'),
(600619, 26040, 26040, 27.7, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - (ReferenceTable)'),
(600619, 33358, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Thread-Bare Cloth Belt'),
(600619, 33359, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Thread-Bare Cloth Boots'),
(600619, 33360, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Thread-Bare Cloth Bracers'),
(600619, 33361, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Thread-Bare Cloth Gloves'),
(600619, 33362, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Thread-Bare Cloth Pants'),
(600619, 33363, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Thread-Bare Cloth Shoulderpads'),
(600619, 33364, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Thread-Bare Cloth Vest'),
(600619, 33372, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur-Lined Armor'),
(600619, 33373, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur-Lined Belt'),
(600619, 33374, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur-Lined Boots'),
(600619, 33375, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur-Lined Bracers'),
(600619, 33376, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur-Lined Gloves'),
(600619, 33377, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur-Lined Pants'),
(600619, 33378, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur-Lined Shoulderpads'),
(600619, 33390, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Icy Mail Armor'),
(600619, 33392, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Icy Mail Boots'),
(600619, 33393, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Icy Mail Bracers'),
(600619, 33394, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Icy Mail Gloves'),
(600619, 33395, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Icy Mail Pants'),
(600619, 33396, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Icy Mail Shoulderpads'),
(600619, 33404, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice-Bound Plate Belt'),
(600619, 33405, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice-Bound Plate Boots'),
(600619, 33407, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice-Bound Plate Chestpiece'),
(600619, 33408, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice-Bound Plate Gloves'),
(600619, 33409, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice-Bound Plate Pants'),
(600619, 33410, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice-Bound Plate Shoulderpads'),
(600619, 33422, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Shattered Bow'),
(600619, 33425, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice-Pitted Blade'),
(600619, 33426, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Chipped Timber Axe'),
(600619, 33427, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Frost-Encrusted Rifle'),
(600619, 33428, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Dulled Shiv'),
(600619, 33429, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice Cleaver'),
(600619, 33430, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Abandoned Greatsword'),
(600619, 33431, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Icesmashing Mace'),
(600619, 33438, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Thread-Bare Hat'),
(600619, 33439, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur-Lined Leather Helmet'),
(600619, 33440, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Ice-Bound Plate Helmet'),
(600619, 33444, 0, 4.3, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Pungent Seal Whey'),
(600619, 33452, 0, 6.8, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Honey-Spiced Lichen'),
(600619, 33458, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scroll of Intellect VI'),
(600619, 33460, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scroll of Spirit VI'),
(600619, 35980, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Foothold Boots'),
(600619, 35981, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Foothold Robe'),
(600619, 35982, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Foothold Gloves'),
(600619, 35984, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Foothold Pants'),
(600619, 35985, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Foothold Shoulderpads'),
(600619, 35986, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Foothold Cuffs'),
(600619, 35990, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Bristlepine Handwraps'),
(600619, 35992, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Bristlepine Leggings'),
(600619, 35997, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Voldrune Robe'),
(600619, 35998, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Voldrune Gloves'),
(600619, 36000, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Voldrune Legs'),
(600619, 36093, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Wildevar Tunic'),
(600619, 36094, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Wildevar Gloves'),
(600619, 36097, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Wildevar Shoulderguards'),
(600619, 36098, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Wildevar Armguards'),
(600619, 36106, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Caribou Bands'),
(600619, 36107, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Vileprey Cord'),
(600619, 36111, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Vileprey Hood'),
(600619, 36113, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Vileprey Pauldrons'),
(600619, 36206, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Nifflevar Gloves'),
(600619, 36211, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Orca Belt'),
(600619, 36212, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Orca Footwraps'),
(600619, 36213, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Orca Armor'),
(600619, 36216, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Orca Legwraps'),
(600619, 36221, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Amberpine Chain Vest'),
(600619, 36222, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Amberpine Gauntlets'),
(600619, 36223, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Amberpine Helmet'),
(600619, 36320, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Wyrmskull Legplates'),
(600619, 36322, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Wyrmskull Bracers'),
(600619, 36323, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Halgrind Belt'),
(600619, 36324, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Halgrind Greaves'),
(600619, 36326, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Halgrind Gloves'),
(600619, 36328, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Halgrind Legplates'),
(600619, 36329, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Halgrind Epaulets'),
(600619, 36333, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Grizzlemaw Armor'),
(600619, 36335, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Grizzlemaw Helm'),
(600619, 36338, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Grizzlemaw Vambraces'),
(600619, 36406, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Wayfarer\'s Cloak'),
(600619, 36420, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Gemstone Ring'),
(600619, 36421, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Devotional Band'),
(600619, 36422, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Filigree Ring'),
(600619, 36434, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Gold Mesh Collar'),
(600619, 36435, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Embroidered Pendant'),
(600619, 36462, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Coldarra Crystal'),
(600619, 36463, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Polished Orb'),
(600619, 36478, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Frosty Talon'),
(600619, 36506, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Vaulted Mace'),
(600619, 36520, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Chopping Wideblade'),
(600619, 36602, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Rust-Covered Polearm'),
(600619, 36658, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Extinguished Spark'),
(600619, 36674, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Old Tooth'),
(600619, 37091, 0, 0.4, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scroll of Intellect VII'),
(600619, 37093, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scroll of Stamina VII'),
(600619, 37097, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scroll of Spirit VII'),
(600619, 37807, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Lydia\'s Sharpened Swordbreaker'),
(600619, 42108, 0, 33, 1, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scourge Curio'),
(600619, 43463, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scroll of Agility VII'),
(600619, 43465, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scroll of Strength VII'),
(600619, 43467, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Scroll of Protection VII'),
(600619, 43507, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Recipe: Tasty Cupcake'),
(600619, 43508, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Recipe: Last Week\'s Mammoth'),
(600619, 43509, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Recipe: Bad Clams'),
(600619, 43622, 0, 0.2, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Froststeel Lockbox'),
(600619, 43851, 0, 34.3, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Fur Clothing Scraps'),
(600619, 45912, 0, 0.1, 0, 1, 0, 1, 1, 'Drakkari Plague Spreader - Book of Glyph Mastery');

DELETE FROM `creature` WHERE (`id1` = 600619);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001088, 600619, 0, 0, 0, 0, 0, 1, 1, 0, -13006, -1318.62, 42.2927, 3.18072, 300, 10, 0, 173603, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001089, 600619, 0, 0, 0, 0, 0, 1, 1, 0, -13026.4, -1317.13, 42.7053, 6.20073, 300, 10, 0, 173603, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001101, 600619, 0, 0, 0, 0, 0, 1, 1, 0, -13015.8, -1380.13, 57.1039, 4.55681, 300, 12, 0, 173603, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001109, 600619, 0, 0, 0, 0, 0, 1, 1, 0, -13021.1, -1512.49, 61.0557, 1.94135, 300, 8, 0, 173603, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001124, 600619, 0, 0, 0, 0, 0, 1, 1, 0, -12888, -1394.19, 110.534, 3.96148, 300, 6, 0, 173603, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001131, 600619, 0, 0, 0, 0, 0, 1, 1, 0, -12865.2, -1461.68, 124.663, 2.39564, 300, 8, 0, 173603, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001137, 600619, 0, 0, 0, 0, 0, 1, 1, 0, -12762.6, -1480.63, 127.198, 2.76965, 300, 0, 0, 173603, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001138, 600619, 0, 0, 0, 0, 0, 1, 1, 0, -12744.7, -1473.47, 127.205, 4.23834, 300, 0, 0, 173603, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600619;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600619);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600619, 0, 0, 0, 0, 0, 100, 0, 5000, 11000, 30000, 35000, 0, 0, 11, 52230, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Plague Spreader - In Combat - Cast \'Plague Infected\'');
