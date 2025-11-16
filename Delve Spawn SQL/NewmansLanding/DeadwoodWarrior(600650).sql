DELETE FROM `creature_template` WHERE (`entry` = 600650);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600650, 0, 0, 0, 0, 0, 'Deadwood Warrior', 'Delve', NULL, 0, 83, 85, 0, 168, 0, 1, 1.15287, 1, 1, 20, 1, 1, 0, 7.5, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 26115, 0, 0, 0, 0, 73, 452, 'SmartAI', 0, 1, 25, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600650);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600650, 0, 2000, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600650);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600650, 0, 13584, 12340),
(600650, 1, 13583, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600650);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600650, 576, 0, 5, 0, 20, 0, 0, 0, 0);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 600650);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600650, 24727, 24727, 1.5, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26000, 26000, 3, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26001, 26001, 3, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26005, 26005, 1, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26006, 26006, 1, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26007, 26007, 1, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26008, 26008, 1, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26020, 26020, 0.5, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26021, 26021, 0.5, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 26040, 26040, 20.4, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650, 33358, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Belt'),
(600650, 33359, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Boots'),
(600650, 33360, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Bracers'),
(600650, 33361, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Gloves'),
(600650, 33362, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Pants'),
(600650, 33372, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Armor'),
(600650, 33373, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Belt'),
(600650, 33374, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Boots'),
(600650, 33375, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Bracers'),
(600650, 33376, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Gloves'),
(600650, 33378, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Shoulderpads'),
(600650, 33390, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Armor'),
(600650, 33392, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Boots'),
(600650, 33394, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Gloves'),
(600650, 33395, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Pants'),
(600650, 33396, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Shoulderpads'),
(600650, 33404, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Belt'),
(600650, 33408, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Gloves'),
(600650, 33409, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Pants'),
(600650, 33410, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Shoulderpads'),
(600650, 33422, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Shattered Bow'),
(600650, 33423, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Rime-Covered Mace'),
(600650, 33424, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Cracked Iron Staff'),
(600650, 33425, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Pitted Blade'),
(600650, 33426, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Chipped Timber Axe'),
(600650, 33427, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Frost-Encrusted Rifle'),
(600650, 33428, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Dulled Shiv'),
(600650, 33429, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice Cleaver'),
(600650, 33431, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icesmashing Mace'),
(600650, 33437, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Circlet'),
(600650, 33439, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Leather Helmet'),
(600650, 33440, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Helmet'),
(600650, 33443, 0, 7.6, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Sour Goat Cheese'),
(600650, 33444, 0, 2.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Pungent Seal Whey'),
(600650, 33459, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Protection VI'),
(600650, 33461, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Stamina VI'),
(600650, 34815, 0, 100, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Vial of Fresh Blood'),
(600650, 35971, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Mur\'ghoul Girdle'),
(600650, 35973, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Mur\'ghoul Robe'),
(600650, 35975, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Mur\'ghoul Cap'),
(600650, 35976, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Mur\'ghoul Leggings'),
(600650, 35980, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Foothold Boots'),
(600650, 35981, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Foothold Robe'),
(600650, 35984, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Foothold Pants'),
(600650, 35986, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Foothold Cuffs'),
(600650, 35991, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Bristlepine Headpiece'),
(600650, 36085, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Riplash Jerkin'),
(600650, 36086, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Riplash Gloves'),
(600650, 36087, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Riplash Cover'),
(600650, 36092, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wildevar Boots'),
(600650, 36098, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wildevar Armguards'),
(600650, 36099, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Waistband'),
(600650, 36100, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Boots'),
(600650, 36102, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Gloves'),
(600650, 36104, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Britches'),
(600650, 36105, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Shoulders'),
(600650, 36197, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Skom Chain Vest'),
(600650, 36201, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Skom Spaulders'),
(600650, 36209, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Nifflevar Shoulderguards'),
(600650, 36210, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Nifflevar Bindings'),
(600650, 36215, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Orca Helmet'),
(600650, 36216, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Orca Legwraps'),
(600650, 36217, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Orca Spaulders'),
(600650, 36311, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Baleheim Helmet'),
(600650, 36314, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Baleheim Vambraces'),
(600650, 36315, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wyrmskull Girdle'),
(600650, 36316, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wyrmskull Sabatons'),
(600650, 36317, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wyrmskull Breastplate'),
(600650, 36320, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wyrmskull Legplates'),
(600650, 36325, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Halgrind Carapace'),
(600650, 36328, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Halgrind Legplates'),
(600650, 36407, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Lace-Trimmed Cloak'),
(600650, 36419, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Glass Ring'),
(600650, 36420, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Gemstone Ring'),
(600650, 36434, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Gold Mesh Collar'),
(600650, 36490, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Tuskarr Cudgel'),
(600650, 36531, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Sawtooth Greatsword'),
(600650, 36548, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Promised Staff'),
(600650, 36562, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Blue-Nailed Claws'),
(600650, 36590, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Bone Plate Axe'),
(600650, 36618, 0, 1.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Twisted Longbow'),
(600650, 36671, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ominous Dagger'),
(600650, 36672, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Strange Dagger'),
(600650, 36685, 0, 1.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Placid Lightmace'),
(600650, 36700, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Peat Greatstaff'),
(600650, 37091, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Intellect VII'),
(600650, 37093, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Stamina VII'),
(600650, 37097, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Spirit VII'),
(600650, 37764, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Corehound Fang Shoulderpads'),
(600650, 37775, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Helm of the Broken Ram'),
(600650, 43463, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Agility VII'),
(600650, 43465, 0, 0.3, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Strength VII'),
(600650, 43467, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Protection VII'),
(600650, 43507, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Recipe: Tasty Cupcake'),
(600650, 43509, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Recipe: Bad Clams'),
(600650, 43510, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Recipe: Haunted Herring'),
(600650, 43622, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Froststeel Lockbox'),
(600650, 43851, 0, 28.5, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur Clothing Scraps'),
(600650, 45912, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Book of Glyph Mastery');

DELETE FROM `creature` WHERE (`id1` = 600650);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001305, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6303.15, -873.42, 400.639, 6.27377, 300, 5, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001306, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6295, -858.519, 400.802, 0.762314, 300, 10, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001307, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6279.74, -860.333, 402.096, 3.68502, 300, 7, 0, 168300, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001314, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6298.83, -777.922, 401.05, 5.19863, 300, 7, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001321, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6202.23, -772.783, 419.341, 4.89939, 300, 5, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001323, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6210.45, -842.356, 418.992, 2.96055, 300, 3, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001324, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6200.15, -842.105, 424.549, 2.62943, 300, 3, 0, 159417, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001327, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6154.07, -826.55, 424.593, 0.210087, 300, 8, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001328, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6135.71, -807.979, 424.527, 2.77363, 300, 12, 0, 163817, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001335, 600650, 0, 0, 910, 0, 0, 1, 1, 0, -6186.52, -740.784, 424.518, 4.91376, 300, 5, 0, 168300, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600650;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600650);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600650, 0, 0, 0, 0, 0, 100, 1, 0, 0, 5000, 5000, 0, 0, 11, 13583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Warrior - In Combat - Cast \'Curse of the Deadwood\' (No Repeat)'),
(600650, 0, 1, 0, 0, 0, 100, 0, 6000, 6000, 5000, 10000, 0, 0, 11, 13584, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Warrior - In Combat - Cast \'Strike\'');
