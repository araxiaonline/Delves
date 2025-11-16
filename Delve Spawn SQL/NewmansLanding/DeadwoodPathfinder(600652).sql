DELETE FROM `creature_template` WHERE (`entry` = 600652);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(600652, 0, 0, 0, 0, 0, 'Deadwood Pathfinder', 'Delve', NULL, 0, 83, 85, 1, 168, 0, 1, 1.19048, 1, 1, 20, 1, 1, 0, 36.9, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 26115, 0, 0, 0, 0, 169, 225, 'SmartAI', 1, 1, 38, 1, 0.97, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 600652);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(600652, 0, 2000, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 600652);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(600652, 0, 6660, 12340),
(600652, 1, 6685, 12340),
(600652, 2, 13583, 12340);

DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = 600652);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(600652, 576, 0, 5, 0, 20, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 600652);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(600652, 1, 1905, 0, 5262, 18019);

DELETE FROM `creature_loot_template` WHERE (`Entry` = 26115);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(26115, 24727, 24727, 1.5, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26000, 26000, 3, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26001, 26001, 3, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26005, 26005, 1, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26006, 26006, 1, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26007, 26007, 1, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26008, 26008, 1, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26020, 26020, 0.5, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26021, 26021, 0.5, 0, 1, 1, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 26040, 26040, 20.4, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - (ReferenceTable)'),
(26115, 33358, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Belt'),
(26115, 33359, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Boots'),
(26115, 33360, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Bracers'),
(26115, 33361, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Gloves'),
(26115, 33362, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Thread-Bare Cloth Pants'),
(26115, 33372, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Armor'),
(26115, 33373, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Belt'),
(26115, 33374, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Boots'),
(26115, 33375, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Bracers'),
(26115, 33376, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Gloves'),
(26115, 33378, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Shoulderpads'),
(26115, 33390, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Armor'),
(26115, 33392, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Boots'),
(26115, 33394, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Gloves'),
(26115, 33395, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Pants'),
(26115, 33396, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Shoulderpads'),
(26115, 33404, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Belt'),
(26115, 33408, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Gloves'),
(26115, 33409, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Pants'),
(26115, 33410, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Shoulderpads'),
(26115, 33422, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Shattered Bow'),
(26115, 33423, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Rime-Covered Mace'),
(26115, 33424, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Cracked Iron Staff'),
(26115, 33425, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Pitted Blade'),
(26115, 33426, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Chipped Timber Axe'),
(26115, 33427, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Frost-Encrusted Rifle'),
(26115, 33428, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Dulled Shiv'),
(26115, 33429, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice Cleaver'),
(26115, 33431, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icesmashing Mace'),
(26115, 33437, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Icy Mail Circlet'),
(26115, 33439, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur-Lined Leather Helmet'),
(26115, 33440, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ice-Bound Plate Helmet'),
(26115, 33443, 0, 7.6, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Sour Goat Cheese'),
(26115, 33444, 0, 2.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Pungent Seal Whey'),
(26115, 33459, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Protection VI'),
(26115, 33461, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Stamina VI'),
(26115, 34815, 0, 100, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Vial of Fresh Blood'),
(26115, 35971, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Mur\'ghoul Girdle'),
(26115, 35973, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Mur\'ghoul Robe'),
(26115, 35975, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Mur\'ghoul Cap'),
(26115, 35976, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Mur\'ghoul Leggings'),
(26115, 35980, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Foothold Boots'),
(26115, 35981, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Foothold Robe'),
(26115, 35984, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Foothold Pants'),
(26115, 35986, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Foothold Cuffs'),
(26115, 35991, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Bristlepine Headpiece'),
(26115, 36085, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Riplash Jerkin'),
(26115, 36086, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Riplash Gloves'),
(26115, 36087, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Riplash Cover'),
(26115, 36092, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wildevar Boots'),
(26115, 36098, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wildevar Armguards'),
(26115, 36099, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Waistband'),
(26115, 36100, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Boots'),
(26115, 36102, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Gloves'),
(26115, 36104, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Britches'),
(26115, 36105, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Caribou Shoulders'),
(26115, 36197, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Skom Chain Vest'),
(26115, 36201, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Skom Spaulders'),
(26115, 36209, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Nifflevar Shoulderguards'),
(26115, 36210, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Nifflevar Bindings'),
(26115, 36215, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Orca Helmet'),
(26115, 36216, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Orca Legwraps'),
(26115, 36217, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Orca Spaulders'),
(26115, 36311, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Baleheim Helmet'),
(26115, 36314, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Baleheim Vambraces'),
(26115, 36315, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wyrmskull Girdle'),
(26115, 36316, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wyrmskull Sabatons'),
(26115, 36317, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wyrmskull Breastplate'),
(26115, 36320, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Wyrmskull Legplates'),
(26115, 36325, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Halgrind Carapace'),
(26115, 36328, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Halgrind Legplates'),
(26115, 36407, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Lace-Trimmed Cloak'),
(26115, 36419, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Glass Ring'),
(26115, 36420, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Gemstone Ring'),
(26115, 36434, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Gold Mesh Collar'),
(26115, 36490, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Tuskarr Cudgel'),
(26115, 36531, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Sawtooth Greatsword'),
(26115, 36548, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Promised Staff'),
(26115, 36562, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Blue-Nailed Claws'),
(26115, 36590, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Bone Plate Axe'),
(26115, 36618, 0, 1.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Twisted Longbow'),
(26115, 36671, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Ominous Dagger'),
(26115, 36672, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Strange Dagger'),
(26115, 36685, 0, 1.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Placid Lightmace'),
(26115, 36700, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Peat Greatstaff'),
(26115, 37091, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Intellect VII'),
(26115, 37093, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Stamina VII'),
(26115, 37097, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Spirit VII'),
(26115, 37764, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Corehound Fang Shoulderpads'),
(26115, 37775, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Helm of the Broken Ram'),
(26115, 43463, 0, 0.2, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Agility VII'),
(26115, 43465, 0, 0.3, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Strength VII'),
(26115, 43467, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Scroll of Protection VII'),
(26115, 43507, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Recipe: Tasty Cupcake'),
(26115, 43509, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Recipe: Bad Clams'),
(26115, 43510, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Recipe: Haunted Herring'),
(26115, 43622, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Froststeel Lockbox'),
(26115, 43851, 0, 28.5, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Fur Clothing Scraps'),
(26115, 45912, 0, 0.1, 0, 1, 0, 1, 1, 'Darkfallen Bloodbearer - Book of Glyph Mastery');

DELETE FROM `creature` WHERE (`id1` = 600652);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9001311, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6287.61, -834.54, 399.378, 2.96787, 300, 11, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001312, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6301.92, -811.539, 401.069, 1.02786, 300, 0, 0, 416160, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001316, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6271.67, -796.493, 400.592, 5.03974, 300, 5, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001319, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6226.84, -784.232, 413.866, 0.673712, 300, 6, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001320, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6212.6, -746.491, 424.233, 1.15705, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001329, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6145.89, -794.501, 425.917, 1.49853, 300, 7, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001330, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6144.33, -775.538, 423.161, 1.62922, 300, 5, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001331, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6139.32, -752.201, 424.212, 1.71601, 300, 8, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001338, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6156.22, -752.497, 423.37, 3.9324, 300, 4, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001339, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6168.86, -832.126, 424.698, 1.41858, 300, 10, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001341, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6307.75, -824.886, 399.976, 2.64428, 300, 13, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001342, 600652, 0, 0, 910, 0, 0, 1, 1, 1, -6334.91, -794.507, 400.423, 4.85383, 300, 13, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 600652;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 600652);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(600652, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2200, 3800, 0, 0, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Pathfinder - In Combat - Cast \'Shoot\''),
(600652, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 12000, 5, 30, 11, 6685, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Pathfinder - Within 5-30 Range - Cast \'Piercing Shot\''),
(600652, 0, 2, 0, 0, 0, 100, 0, 5000, 9000, 125000, 130000, 0, 0, 11, 13583, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Deadwood Pathfinder - In Combat - Cast \'Curse of the Deadwood\'');
