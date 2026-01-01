-- ==================================================================================
-- NEWMAN'S LANDING DELVE - SQL EXPORT
-- ==================================================================================
-- Delve Name: Newman's Landing
-- Map ID: 910
-- Level Range: 83-85
-- Total NPCs: 7 (IDs 600650-600656)
-- Total Spawns: 48
-- ==================================================================================

-- ==================================================================================
-- CREATURE TEMPLATES
-- ==================================================================================

DELETE FROM creature_template WHERE entry IN (600650, 600651, 600652, 600653, 600654, 600655, 600656);
INSERT INTO creature_template (entry,difficulty_entry_1,difficulty_entry_2,difficulty_entry_3,KillCredit1,KillCredit2,name,subname,IconName,gossip_menu_id,minlevel,maxlevel,`exp`,faction,npcflag,speed_walk,speed_run,speed_swim,speed_flight,detection_range,`scale`,`rank`,dmgschool,DamageModifier,BaseAttackTime,RangeAttackTime,BaseVariance,RangeVariance,unit_class,unit_flags,unit_flags2,dynamicflags,family,trainer_type,trainer_spell,trainer_class,trainer_race,`type`,type_flags,lootid,pickpocketloot,skinloot,PetSpellDataId,VehicleId,mingold,maxgold,AIName,MovementType,HoverHeight,HealthModifier,ManaModifier,ArmorModifier,ExperienceModifier,RacialLeader,movementId,RegenHealth,mechanic_immune_mask,spell_school_immune_mask,flags_extra,ScriptName,VerifiedBuild) VALUES
(600650,0,0,0,0,0,'Deadwood Warrior','Delve',NULL,0,83,85,0,168,0,1.0,1.15287,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,600650,0,0,0,0,73,452,'SmartAI',0,1.0,25.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600651,0,0,0,0,0,'Deadwood Gardener','Delve',NULL,0,83,85,1,168,0,3.2,1.71429,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,2,32768,2048,0,0,0,0,0,0,7,0,36829,0,0,0,0,145,195,'SmartAI',1,1.0,25.0,10.0,0.97,1.0,0,0,1,0,0,0,'',12340),
(600652,0,0,0,0,0,'Deadwood Pathfinder','Delve',NULL,0,83,85,1,168,0,1.0,1.19048,1.0,1.0,20.0,1.0,1,0,36.9,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,26115,0,0,0,0,169,225,'SmartAI',1,1.0,38.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600653,0,0,0,0,0,'Deadwood Avenger','Delve',NULL,0,83,85,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,1,0,7.8,2600,2000,1.0,1.0,1,32832,2048,0,0,0,0,0,0,7,0,26115,0,0,0,0,483,1191,'SmartAI',1,1.0,16.2,8.0,1.1,1.0,0,0,1,8388624,0,0,'',12340),
(600654,0,0,0,0,0,'Deadwood Shaman','Delve',NULL,0,83,85,0,168,0,1.6,1.14286,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,8,32768,2048,0,0,0,0,0,0,7,0,36829,0,0,0,0,176,235,'SmartAI',1,1.0,40.0,10.0,1.0,1.0,0,51,1,0,0,0,'',12340),
(600655,0,0,0,0,0,'Chieftain Coldpaw','Delve Boss',NULL,0,85,85,0,168,0,1.123,1.72456,1.0,1.0,20.0,1.0,3,0,36.9,2000,2000,1.0,1.0,1,0,2048,0,0,0,0,0,0,7,4,600655,600655,0,0,0,123,672,'',0,1.0,68.72,20.0,1.1,1.0,0,0,1,0,0,0,'',12340),
(600656,0,0,0,0,0,'Overlord Rigto','Delve Boss',NULL,0,85,85,0,168,0,1.2,1.4236,1.0,1.0,20.0,1.0,3,0,34.3,2000,2000,1.0,1.0,1,0,2048,0,0,0,0,0,0,7,4,600656,600656,0,0,0,102,364,'',1,1.0,47.6,20.0,1.1,1.0,0,0,1,0,0,0,'',12340);

-- ==================================================================================
-- CREATURE TEMPLATE MODELS
-- ==================================================================================

DELETE FROM creature_template_model WHERE CreatureID IN (600650, 600651, 600652, 600653, 600654, 600655, 600656);
INSERT INTO creature_template_model (CreatureID,Idx,CreatureDisplayID,DisplayScale,Probability,VerifiedBuild) VALUES
(600650,0,2000,1.0,1.0,12340),
(600651,0,3028,1.0,1.0,12340),
(600652,0,2000,1.0,1.0,12340),
(600653,0,2003,1.0,1.0,12340),
(600654,0,6746,1.0,1.0,12340),
(600655,0,8589,1.0,1.0,12340),
(600656,0,8589,1.2,1.0,12340);

-- ==================================================================================
-- CREATURE TEMPLATE SPELLS
-- ==================================================================================

DELETE FROM creature_template_spell WHERE CreatureID IN (600650, 600651, 600652, 600653, 600654, 600655, 600656);
INSERT INTO creature_template_spell (CreatureID,`Index`,Spell,VerifiedBuild) VALUES
(600650,0,13584,12340),
(600650,1,13583,12340),
(600651,0,12160,12340),
(600651,1,11986,12340),
(600651,2,13583,12340),
(600652,0,6660,12340),
(600652,1,6685,12340),
(600652,2,13583,12340),
(600653,0,13583,12340),
(600653,1,8599,12340),
(600654,0,13585,12340),
(600654,1,9532,12340),
(600654,2,12058,12340),
(600654,3,13583,12340),
(600655,0,13583,12340),
(600655,1,15117,0),
(600655,2,5915,0),
(600656,0,36629,12340),
(600656,1,34298,12340);

-- ==================================================================================
-- CREATURE REPUTATION
-- ==================================================================================

DELETE FROM creature_onkill_reputation WHERE creature_id IN (600650, 600651, 600652, 600653, 600654, 600655, 600656);
INSERT INTO creature_onkill_reputation (creature_id,RewOnKillRepFaction1,RewOnKillRepFaction2,MaxStanding1,IsTeamAward1,RewOnKillRepValue1,MaxStanding2,IsTeamAward2,RewOnKillRepValue2,TeamDependent) VALUES
(600650,576,0,5,0,20.0,0,0,0.0,0),
(600651,576,0,5,0,20.0,0,0,0.0,0),
(600652,576,0,5,0,20.0,0,0,0.0,0),
(600653,576,0,5,0,20.0,0,0,0.0,0),
(600654,576,0,5,0,20.0,0,0,0.0,0),
(600655,576,0,7,0,60.0,0,0,0.0,0),
(600656,576,0,7,0,60.0,0,0,0.0,0);

-- ==================================================================================
-- CREATURE EQUIPMENT
-- ==================================================================================

DELETE FROM creature_equip_template WHERE CreatureID IN (600651, 600652, 600653, 600654, 600655, 600656);
INSERT INTO creature_equip_template (CreatureID,ID,ItemID1,ItemID2,ItemID3,VerifiedBuild) VALUES
(600651,1,3346,0,0,18019),
(600652,1,1905,0,5262,18019),
(600653,1,1899,0,0,18019),
(600654,1,5303,0,0,18019),
(600655,1,3361,0,0,18019),
(600656,1,3361,0,0,18019);

-- ==================================================================================
-- CREATURE LOOT
-- ==================================================================================

DELETE FROM creature_loot_template WHERE Entry IN (600650, 600655, 600656);
INSERT INTO creature_loot_template (Entry,Item,Reference,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) VALUES
-- Deadwood Warrior
(600650,24727,24727,1.5,0,1,0,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26000,26000,3.0,0,1,1,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26001,26001,3.0,0,1,1,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26005,26005,1.0,0,1,1,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26006,26006,1.0,0,1,1,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26007,26007,1.0,0,1,1,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26008,26008,1.0,0,1,1,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26020,26020,0.5,0,1,1,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26021,26021,0.5,0,1,1,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,26040,26040,20.4,0,1,0,1,1,'Darkfallen Bloodbearer - (ReferenceTable)'),
(600650,33358,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Thread-Bare Cloth Belt'),
(600650,33359,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Thread-Bare Cloth Boots'),
(600650,33360,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Thread-Bare Cloth Bracers'),
(600650,33361,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Thread-Bare Cloth Gloves'),
(600650,33362,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Thread-Bare Cloth Pants'),
(600650,33372,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Fur-Lined Armor'),
(600650,33373,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Fur-Lined Belt'),
(600650,33374,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Fur-Lined Boots'),
(600650,33375,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Fur-Lined Bracers'),
(600650,33376,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Fur-Lined Gloves'),
(600650,33378,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Fur-Lined Shoulderpads'),
(600650,33390,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Icy Mail Armor'),
(600650,33392,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Icy Mail Boots'),
(600650,33394,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Icy Mail Gloves'),
(600650,33395,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Icy Mail Pants'),
(600650,33396,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Icy Mail Shoulderpads'),
(600650,33404,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Ice-Bound Plate Belt'),
(600650,33408,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Ice-Bound Plate Gloves'),
(600650,33409,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Ice-Bound Plate Pants'),
(600650,33410,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Ice-Bound Plate Shoulderpads'),
(600650,33422,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Shattered Bow'),
(600650,33423,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Rime-Covered Mace'),
(600650,33424,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Cracked Iron Staff'),
(600650,33425,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Ice-Pitted Blade'),
(600650,33426,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Chipped Timber Axe'),
(600650,33427,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Frost-Encrusted Rifle'),
(600650,33428,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Dulled Shiv'),
(600650,33429,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Ice Cleaver'),
(600650,33431,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Icesmashing Mace'),
(600650,33437,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Icy Mail Circlet'),
(600650,33439,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Fur-Lined Leather Helmet'),
(600650,33440,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Ice-Bound Plate Helmet'),
(600650,33443,0,7.6,0,1,0,1,1,'Darkfallen Bloodbearer - Sour Goat Cheese'),
(600650,33444,0,2.1,0,1,0,1,1,'Darkfallen Bloodbearer - Pungent Seal Whey'),
(600650,33459,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Scroll of Protection VI'),
(600650,33461,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Scroll of Stamina VI'),
(600650,34815,0,100.0,0,1,0,1,1,'Darkfallen Bloodbearer - Vial of Fresh Blood'),
(600650,35971,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Mur''ghoul Girdle'),
(600650,35973,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Mur''ghoul Robe'),
(600650,35975,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Mur''ghoul Cap'),
(600650,35976,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Mur''ghoul Leggings'),
(600650,35980,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Foothold Boots'),
(600650,35981,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Foothold Robe'),
(600650,35984,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Foothold Pants'),
(600650,35986,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Foothold Cuffs'),
(600650,35991,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Bristlepine Headpiece'),
(600650,36085,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Riplash Jerkin'),
(600650,36086,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Riplash Gloves'),
(600650,36087,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Riplash Cover'),
(600650,36092,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Wildevar Boots'),
(600650,36098,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Wildevar Armguards'),
(600650,36099,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Caribou Waistband'),
(600650,36100,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Caribou Boots'),
(600650,36102,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Caribou Gloves'),
(600650,36104,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Caribou Britches'),
(600650,36105,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Caribou Shoulders'),
(600650,36197,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Skom Chain Vest'),
(600650,36201,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Skom Spaulders'),
(600650,36209,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Nifflevar Shoulderguards'),
(600650,36210,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Nifflevar Bindings'),
(600650,36215,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Orca Helmet'),
(600650,36216,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Orca Legwraps'),
(600650,36217,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Orca Spaulders'),
(600650,36311,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Baleheim Helmet'),
(600650,36314,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Baleheim Vambraces'),
(600650,36315,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Wyrmskull Girdle'),
(600650,36316,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Wyrmskull Sabatons'),
(600650,36317,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Wyrmskull Breastplate'),
(600650,36320,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Wyrmskull Legplates'),
(600650,36325,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Halgrind Carapace'),
(600650,36328,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Halgrind Legplates'),
(600650,36407,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Lace-Trimmed Cloak'),
(600650,36419,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Glass Ring'),
(600650,36420,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Gemstone Ring'),
(600650,36434,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Gold Mesh Collar'),
(600650,36490,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Tuskarr Cudgel'),
(600650,36531,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Sawtooth Greatsword'),
(600650,36548,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Promised Staff'),
(600650,36562,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Blue-Nailed Claws'),
(600650,36590,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Bone Plate Axe'),
(600650,36618,0,1.1,0,1,0,1,1,'Darkfallen Bloodbearer - Twisted Longbow'),
(600650,36671,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Ominous Dagger'),
(600650,36672,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Strange Dagger'),
(600650,36685,0,1.1,0,1,0,1,1,'Darkfallen Bloodbearer - Placid Lightmace'),
(600650,36700,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Peat Greatstaff'),
(600650,37091,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Scroll of Intellect VII'),
(600650,37093,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Scroll of Stamina VII'),
(600650,37097,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Scroll of Spirit VII'),
(600650,37764,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Corehound Fang Shoulderpads'),
(600650,37775,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Helm of the Broken Ram'),
(600650,43463,0,0.2,0,1,0,1,1,'Darkfallen Bloodbearer - Scroll of Agility VII'),
(600650,43465,0,0.3,0,1,0,1,1,'Darkfallen Bloodbearer - Scroll of Strength VII'),
(600650,43467,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Scroll of Protection VII'),
(600650,43507,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Recipe: Tasty Cupcake'),
(600650,43509,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Recipe: Bad Clams'),
(600650,43510,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Recipe: Haunted Herring'),
(600650,43622,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Froststeel Lockbox'),
(600650,43851,0,28.5,0,1,0,1,1,'Darkfallen Bloodbearer - Fur Clothing Scraps'),
(600650,45912,0,0.1,0,1,0,1,1,'Darkfallen Bloodbearer - Book of Glyph Mastery'),

-- Chieftain Coldpaw (Boss)
(600655,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600655,43949,0,100.0,0,1,0,1,2,'Delve Token'),

-- Overlord Rigto (Boss)
(600656,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600656,43949,0,100.0,0,1,0,1,2,'Delve Token');

-- ==================================================================================
-- CREATURE SPAWNS
-- ==================================================================================

DELETE FROM creature WHERE id1 IN (600650, 600651, 600652, 600653, 600654, 600655, 600656) AND `map` = 910;
INSERT INTO creature (id1,id2,id3,`map`,zoneId,areaId,spawnMask,phaseMask,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,wander_distance,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags,ScriptName,VerifiedBuild,CreateObject,Comment) VALUES
-- Deadwood Warrior - 10 spawns
(600650,0,0,910,0,0,1,1,0,-6303.15,-873.42,401.139,6.27377,1800,5.0,0,163817,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6295.0,-858.519,401.302,0.762314,1800,10.0,0,163817,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6279.74,-860.333,402.596,3.68502,1800,7.0,0,168300,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6298.83,-777.922,401.55,5.19863,1800,7.0,0,159417,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6202.23,-772.783,419.841,4.89939,1800,5.0,0,159417,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6210.45,-842.356,419.492,2.96055,1800,3.0,0,159417,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6200.15,-842.105,425.049,2.62943,1800,3.0,0,159417,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6154.07,-826.55,425.093,0.210087,1800,8.0,0,163817,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6135.71,-807.979,425.027,2.77363,1800,12.0,0,163817,0,1,0,0,0,'',NULL,0,NULL),
(600650,0,0,910,0,0,1,1,0,-6186.52,-740.784,425.018,4.91376,1800,5.0,0,168300,0,1,0,0,0,'',NULL,0,NULL),

-- Deadwood Gardener - 4 spawns
(600651,0,0,910,0,0,1,1,1,-6250.44,-841.222,401.84,3.30033,1800,6.0,0,230560,44500,1,0,0,0,'',NULL,0,NULL),
(600651,0,0,910,0,0,1,1,1,-6271.94,-769.285,401.918,3.75797,1800,9.0,0,219037,42620,1,0,0,0,'',NULL,0,NULL),
(600651,0,0,910,0,0,1,1,1,-6182.35,-811.644,424.977,0.959122,1800,5.0,0,224757,43550,1,0,0,0,'',NULL,0,NULL),
(600651,0,0,910,0,0,1,1,1,-6149.94,-737.519,425.824,3.52117,1800,3.0,0,230560,44500,1,0,0,0,'',NULL,0,NULL),

-- Deadwood Pathfinder - 12 spawns
(600652,0,0,910,0,0,1,1,1,-6287.61,-834.54,399.878,2.96787,1800,11.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6301.92,-811.539,401.569,1.02786,1800,0.0,0,416160,0,0,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6271.67,-796.493,401.092,5.03974,1800,5.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6226.84,-784.232,414.366,0.673712,1800,6.0,0,438064,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6212.6,-746.491,424.733,1.15705,1800,10.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6145.89,-794.501,426.417,1.49853,1800,7.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6144.33,-775.538,423.661,1.62922,1800,5.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6139.32,-752.201,424.712,1.71601,1800,8.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6156.22,-752.497,423.87,3.9324,1800,4.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6168.86,-832.126,425.198,1.41858,1800,10.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6307.75,-824.886,400.476,2.64428,1800,13.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),
(600652,0,0,910,0,0,1,1,1,-6334.91,-794.507,400.923,4.85383,1800,13.0,0,416160,0,1,0,0,0,'',NULL,0,NULL),

-- Deadwood Avenger - 3 spawns
(600653,0,0,910,0,0,1,1,1,-6248.16,-832.927,402.149,3.40714,1800,3.0,0,80599,0,1,0,0,0,'',NULL,0,NULL),
(600653,0,0,910,0,0,1,1,1,-6258.5,-811.826,401.647,2.64593,1800,6.0,0,82803,0,1,0,0,0,'',NULL,0,NULL),
(600653,0,0,910,0,0,1,1,1,-6173.76,-771.589,421.289,3.37029,1800,8.0,0,78434,0,1,0,0,0,'',NULL,0,NULL),

-- Deadwood Shaman - 7 spawns
(600654,0,0,910,0,0,1,1,1,-6264.08,-831.186,400.924,5.43795,1800,0.0,0,183524,95080,0,0,0,0,'',NULL,0,NULL),
(600654,0,0,910,0,0,1,1,1,-6288.93,-762.614,401.459,4.79274,1800,4.0,0,183524,95080,1,0,0,0,'',NULL,0,NULL),
(600654,0,0,910,0,0,1,1,1,-6239.26,-771.342,415.358,4.79941,1800,8.0,0,178772,93300,1,0,0,0,'',NULL,0,NULL),
(600654,0,0,910,0,0,1,1,1,-6173.62,-807.248,424.961,1.46115,1800,0.0,0,183524,95080,0,0,0,0,'',NULL,0,NULL),
(600654,0,0,910,0,0,1,1,1,-6166.43,-727.178,425.134,4.78959,1800,4.0,0,183524,95080,1,0,0,0,'',NULL,0,NULL),
(600654,0,0,910,0,0,1,1,1,-6201.85,-731.931,425.051,5.11003,1800,6.0,0,178772,93300,1,0,0,0,'',NULL,0,NULL),
(600654,0,0,910,0,0,1,1,1,-6311.49,-796.013,409.227,0.0286623,1800,4.0,0,183524,95080,1,0,0,0,'',NULL,0,NULL),

-- Chieftain Coldpaw (Boss) - 1 spawn
(600655,0,0,910,0,0,1,1,1,-6168.31,-802.287,424.834,1.98203,1800,0.0,0,307836,0,0,0,0,0,'',NULL,0,NULL),

-- Overlord Rigto (Boss) - 1 spawn
(600656,0,0,910,0,0,1,1,1,-6154.95,-730.893,425.446,4.03788,1800,0.0,0,291312,0,0,0,0,0,'',NULL,0,NULL);

-- ==================================================================================
-- SMART SCRIPTS (AI)
-- ==================================================================================

DELETE FROM smart_scripts WHERE entryorguid IN (600650, 600651, 600652, 600653, 600654) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,event_param5,event_param6,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_param4,target_x,target_y,target_z,target_o,comment) VALUES
-- Deadwood Warrior
(600650,0,0,0,0,0,100,1,0,0,5000,5000,0,0,11,13583,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Warrior - In Combat - Cast ''Curse of the Deadwood'' (No Repeat)'),
(600650,0,1,0,0,0,100,0,6000,6000,5000,10000,0,0,11,13584,1,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Warrior - In Combat - Cast ''Strike'''),

-- Deadwood Gardener
(600651,0,0,0,0,0,100,1,0,0,5000,5000,0,0,11,13583,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Gardener - In Combat - Cast ''Curse of the Deadwood'' (No Repeat)'),
(600651,0,1,0,2,0,100,0,0,70,15000,15000,0,0,11,12160,1,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Gardener - Between 0-70% Health - Cast ''Rejuvenation'''),
(600651,0,2,0,2,0,100,0,0,30,10000,10000,0,0,11,11986,0,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Gardener - Between 0-30% Health - Cast ''Healing Wave'''),

-- Deadwood Pathfinder
(600652,0,0,0,0,0,100,0,0,0,2200,3800,0,0,11,6660,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Pathfinder - In Combat - Cast ''Shoot'''),
(600652,0,1,0,9,0,100,0,0,0,6000,12000,5,30,11,6685,1,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Pathfinder - Within 5-30 Range - Cast ''Piercing Shot'''),
(600652,0,2,0,0,0,100,0,5000,9000,125000,130000,0,0,11,13583,1,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Pathfinder - In Combat - Cast ''Curse of the Deadwood'''),

-- Deadwood Avenger
(600653,0,0,0,0,0,100,1,0,0,5000,5000,0,0,11,13583,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Avenger - In Combat - Cast ''Curse of the Deadwood'' (No Repeat)'),
(600653,0,1,2,2,0,100,1,0,30,15000,15000,0,0,11,8599,1,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Avenger - Between 0-30% Health - Cast ''Enrage'' (No Repeat)'),

-- Deadwood Shaman
(600654,0,0,0,1,0,100,0,1000,1000,600000,600000,0,0,11,13585,1,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Shaman - Out of Combat - Cast ''Lightning Shield'''),
(600654,0,1,0,0,0,100,0,0,0,2400,3800,0,0,11,9532,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Shaman - In Combat - Cast ''Lightning Bolt'''),
(600654,0,2,0,0,0,100,0,2500,7000,120000,130000,0,0,11,13583,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Shaman - In Combat - Cast ''Curse of the Deadwood'''),
(600654,0,3,0,0,0,100,0,5500,9000,6500,9500,0,0,11,12058,1,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Deadwood Shaman - In Combat - Cast ''Chain Lightning''');

-- ==================================================================================
-- END OF DEADWOOD VILLAGE DELVE EXPORT
-- ==================================================================================