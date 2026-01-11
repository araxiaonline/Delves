-- ==================================================================================
-- ELWYNN FALLS DELVE - SQL EXPORT
-- ==================================================================================
-- Delve Name: Elwynn Falls
-- Map ID: 907
-- Level Range: 83
-- Total NPCs: 12 (IDs 600624-600635)
-- Total Spawns: 71
-- ==================================================================================

-- ==================================================================================
-- CREATURE TEMPLATES
-- ==================================================================================

DELETE FROM creature_template WHERE entry IN (600624, 600625, 600626, 600627, 600628, 600629, 600630, 600631, 600632, 600633, 600634, 600635);
INSERT INTO creature_template (entry,difficulty_entry_1,difficulty_entry_2,difficulty_entry_3,KillCredit1,KillCredit2,name,subname,IconName,gossip_menu_id,minlevel,maxlevel,`exp`,faction,npcflag,speed_walk,speed_run,speed_swim,speed_flight,detection_range,`scale`,`rank`,dmgschool,DamageModifier,BaseAttackTime,RangeAttackTime,BaseVariance,RangeVariance,unit_class,unit_flags,unit_flags2,dynamicflags,family,trainer_type,trainer_spell,trainer_class,trainer_race,`type`,type_flags,lootid,pickpocketloot,skinloot,PetSpellDataId,VehicleId,mingold,maxgold,AIName,MovementType,HoverHeight,HealthModifier,ManaModifier,ArmorModifier,ExperienceModifier,RacialLeader,movementId,RegenHealth,mechanic_immune_mask,spell_school_immune_mask,flags_extra,ScriptName,VerifiedBuild) VALUES
(600624,0,0,0,0,0,'Darkcrest Taskmaster','Delve',NULL,0,83,83,1,168,0,1.0,1.19048,1.0,1.0,20.0,1.0,1,0,36.9,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,17805,0,0,0,0,169,225,'SmartAI',1,1.0,38.0,1.0,0.97,1.0,0,0,1,0,0,0,'',12340),
(600625,0,0,0,0,0,'Darkcrest Siren','Delve',NULL,0,83,83,1,168,0,3.2,1.71429,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,2,32768,2048,0,0,0,0,0,0,7,0,17801,0,0,0,0,145,195,'SmartAI',1,1.0,25.0,10.0,0.97,1.0,0,0,1,0,0,0,'',12340),
(600626,0,0,0,0,0,'Darkcrest Wavecaller','Delve',NULL,0,83,83,1,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,1,0,13.0,2000,2000,1.0,1.0,2,32768,2048,0,0,0,0,0,0,7,0,17801,0,0,0,0,139,186,'SmartAI',1,1.0,21.0,20.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600627,0,0,0,0,0,'Darkcrest Sorceress','Delve',NULL,0,83,83,1,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,1,0,11.7,2000,2000,1.0,1.0,2,32768,2048,0,0,0,0,0,0,7,0,17722,0,0,0,0,138,1303,'SmartAI',1,1.0,25.0,5.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600628,0,0,0,0,0,'Darkcrest Sentry','Delve',NULL,0,83,83,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,1,4,31.5,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,4,0,17800,0,0,0,0,0,0,'SmartAI',1,1.0,50.0,0.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600629,0,0,0,0,0,'Murloc Tidecaller','Delve',NULL,0,83,83,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,2,32768,2048,0,0,0,0,0,0,7,0,17803,0,0,0,0,13,59,'SmartAI',1,1.0,40.0,10.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600630,0,0,0,0,0,'Murloc Oracle','Delve',NULL,0,83,83,0,168,0,1.0,1.28571,1.0,1.0,20.0,1.0,1,0,25.0,2000,2000,1.0,1.0,2,32768,2048,0,0,0,0,0,0,7,0,17803,0,0,0,0,10,53,'SmartAI',1,1.0,35.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600631,0,0,0,0,0,'Murloc Hunter','Delve',NULL,0,83,83,0,168,0,1.0,1.14286,1.0,1.0,18.0,1.0,1,0,17.8,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,17802,0,0,0,0,14,45,'SmartAI',1,1.0,22.0,15.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600632,0,0,0,0,0,'Coilfang Water Elemental','Delve',NULL,0,83,83,1,168,0,1.0,1.28968,1.0,1.0,20.0,1.0,1,4,30.0,2000,2000,1.0,1.0,2,0,2048,0,0,0,0,0,0,4,8,17938,0,0,0,0,0,0,'SmartAI',1,1.0,40.0,8.0,1.0,1.0,0,144,1,0,0,0,'',12340),
(600633,0,0,0,0,0,'Lord Mwargadon','Delve boss',NULL,0,83,83,1,168,0,1.0,1.42857,1.0,1.0,20.0,1.0,3,0,24.0,2000,2000,1.0,1.0,1,32832,2048,0,0,0,0,0,0,7,4,600633,0,0,0,0,1039,1362,'',1,1.0,85.0,10.0,1.1,1.0,0,0,1,1105,0,0,'',12340),
(600634,0,0,0,0,0,'Gurlgles','Delve Boss',NULL,0,83,83,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,3,0,42.0,1200,2000,1.0,1.0,1,32832,2048,0,0,0,0,0,0,7,76,600634,0,0,0,0,2500000,2500000,'',1,1.0,95.0,1.0,1.0,2.0,0,0,1,650854271,0,0,'',12340),
(600635,0,0,0,0,0,'Aguaspawn','Delve Boss',NULL,0,83,83,0,168,0,1.0,1.48762,1.0,1.0,20.0,1.0,3,0,28.65,2000,2000,1.0,1.0,2,0,2048,0,0,0,0,0,0,4,4,600635,0,0,0,0,0,0,'',1,1.0,78.6,50.0,1.0,2.0,0,0,1,613105499,16,0,'',12340);

-- ==================================================================================
-- CREATURE TEMPLATE MODELS
-- ==================================================================================

DELETE FROM creature_template_model WHERE CreatureID IN (600624, 600625, 600626, 600627, 600628, 600629, 600630, 600631, 600632, 600633, 600634, 600635);
INSERT INTO creature_template_model (CreatureID,Idx,CreatureDisplayID,DisplayScale,Probability,VerifiedBuild) VALUES
(600624,0,17951,1.0,1.0,12340),
(600625,0,17952,1.0,1.0,12340),
(600626,0,17953,1.0,1.0,12340),
(600627,0,17952,1.0,1.0,12340),
(600628,0,4606,1.0,1.0,12340),
(600629,0,5293,1.0,1.0,12340),
(600630,0,1079,1.0,1.0,12340),
(600631,0,757,1.0,1.0,12340),
(600632,0,5564,1.0,1.0,12340),
(600633,0,17581,1.0,1.0,12340),
(600634,0,1773,1.3,1.0,12340),
(600635,0,5489,1.0,1.0,12340);

-- ==================================================================================
-- CREATURE TEMPLATE SPELLS
-- ==================================================================================

DELETE FROM creature_template_spell WHERE CreatureID IN (600624, 600625, 600626, 600627, 600629, 600630, 600631, 600632, 600635);
INSERT INTO creature_template_spell (CreatureID,`Index`,Spell,VerifiedBuild) VALUES
(600624,0,34811,12340),
(600624,1,34812,12340),
(600625,0,9672,12340),
(600625,1,11831,12340),
(600625,2,34787,12340),
(600626,0,32011,12340),
(600626,1,34827,12340),
(600627,0,13901,12340),
(600627,1,12544,12340),
(600627,2,34787,12340),
(600629,0,122,12340),
(600629,1,913,12340),
(600630,0,9734,12340),
(600630,1,6074,12340),
(600630,2,4980,12340),
(600631,0,10277,12340),
(600632,0,34449,12340),
(600635,0,22419,12340),
(600635,2,22420,12340);

-- ==================================================================================
-- CREATURE REPUTATION
-- ==================================================================================

DELETE FROM creature_onkill_reputation WHERE creature_id IN (600624, 600626, 600627, 600632);
INSERT INTO creature_onkill_reputation (creature_id,RewOnKillRepFaction1,RewOnKillRepFaction2,MaxStanding1,IsTeamAward1,RewOnKillRepValue1,MaxStanding2,IsTeamAward2,RewOnKillRepValue2,TeamDependent) VALUES
(600624,942,0,3,0,25.0,0,0,0.0,0),
(600626,942,0,3,0,25.0,0,0,0.0,0),
(600627,942,0,3,0,25.0,0,0,0.0,0),
(600632,942,0,7,0,12.0,0,0,0.0,0);

-- ==================================================================================
-- CREATURE EQUIPMENT
-- ==================================================================================

DELETE FROM creature_equip_template WHERE CreatureID IN (600624, 600625, 600626, 600627, 600629, 600630, 600631, 600633, 600634);
INSERT INTO creature_equip_template (CreatureID,ID,ItemID1,ItemID2,ItemID3,VerifiedBuild) VALUES
(600624,1,28965,0,0,18019),
(600625,1,18122,6618,0,18019),
(600626,1,29107,6618,0,18019),
(600627,1,14618,6618,0,18019),
(600629,1,1907,0,0,18019),
(600630,1,1907,0,0,18019),
(600631,1,1897,0,5870,18019),
(600633,1,30403,12980,0,18019),
(600634,1,1897,2179,0,18019);

-- ==================================================================================
-- CREATURE LOOT
-- ==================================================================================

DELETE FROM creature_loot_template WHERE Entry IN (600624, 600625, 600626, 600627, 600628, 600629, 600630, 600631, 600633, 600634, 600635);
INSERT INTO creature_loot_template (Entry,Item,Reference,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) VALUES
-- Darkcrest Taskmaster
(600624,1,6003,2.0,0,1,0,1,1,'Darkcrest Taskmaster - (ReferenceTable)'),
(600624,2,6001,90.0,0,1,0,1,1,'Darkcrest Taskmaster - (ReferenceTable)'),
(600624,13444,0,0.5,0,1,0,1,1,'Darkcrest Taskmaster - Major Mana Potion'),
(600624,13446,0,1.0,0,1,0,1,1,'Darkcrest Taskmaster - Major Healing Potion'),
(600624,17057,0,25.0,0,1,0,1,1,'Darkcrest Taskmaster - Shiny Fish Scales'),
(600624,17058,0,20.0,0,1,0,1,1,'Darkcrest Taskmaster - Fish Oil'),
(600624,24280,0,100.0,1,1,0,1,1,'Darkcrest Taskmaster - Naga Claws'),
(600624,24401,0,30.0,0,1,0,1,1,'Darkcrest Taskmaster - Unidentified Plant Parts'),
(600624,24476,0,15.0,0,1,0,1,1,'Darkcrest Taskmaster - Jaggal Clam'),
(600624,27858,0,3.0,0,1,0,1,3,'Darkcrest Taskmaster - Sunspring Carp'),
(600624,28399,0,1.5,0,1,0,1,1,'Darkcrest Taskmaster - Filtered Draenic Water'),

-- Darkcrest Siren
(600625,1,6001,90.0,0,1,0,1,1,'Darkcrest Siren - (ReferenceTable)'),
(600625,13444,0,0.5,0,1,0,1,1,'Darkcrest Siren - Major Mana Potion'),
(600625,13446,0,1.0,0,1,0,1,1,'Darkcrest Siren - Major Healing Potion'),
(600625,17057,0,25.0,0,1,0,1,1,'Darkcrest Siren - Shiny Fish Scales'),
(600625,17058,0,20.0,0,1,0,1,1,'Darkcrest Siren - Fish Oil'),
(600625,24280,0,100.0,1,1,0,1,1,'Darkcrest Siren - Naga Claws'),
(600625,24401,0,30.0,0,1,0,1,1,'Darkcrest Siren - Unidentified Plant Parts'),
(600625,24476,0,15.0,0,1,0,1,1,'Darkcrest Siren - Jaggal Clam'),
(600625,27858,0,3.0,0,1,0,1,3,'Darkcrest Siren - Sunspring Carp'),
(600625,28399,0,1.5,0,1,0,1,1,'Darkcrest Siren - Filtered Draenic Water'),

-- Darkcrest Wavecaller
(600626,1,6003,2.0,0,1,0,1,1,'Bloodscale Wavecaller - (ReferenceTable)'),
(600626,2,6010,90.0,0,1,0,1,1,'Bloodscale Wavecaller - (ReferenceTable)'),
(600626,13444,0,0.5,0,1,0,1,1,'Bloodscale Wavecaller - Major Mana Potion'),
(600626,13446,0,1.0,0,1,0,1,1,'Bloodscale Wavecaller - Major Healing Potion'),
(600626,17057,0,25.0,0,1,0,1,1,'Bloodscale Wavecaller - Shiny Fish Scales'),
(600626,17058,0,20.0,0,1,0,1,1,'Bloodscale Wavecaller - Fish Oil'),
(600626,24280,0,100.0,1,1,0,1,1,'Bloodscale Wavecaller - Naga Claws'),
(600626,24330,0,2.0,0,1,0,1,1,'Bloodscale Wavecaller - Drain Schematics'),
(600626,24401,0,30.0,0,1,0,1,1,'Bloodscale Wavecaller - Unidentified Plant Parts'),
(600626,24476,0,15.0,0,1,0,1,1,'Bloodscale Wavecaller - Jaggal Clam'),
(600626,27858,0,4.0,0,1,0,1,3,'Bloodscale Wavecaller - Sunspring Carp'),
(600626,28399,0,2.0,0,1,0,1,1,'Bloodscale Wavecaller - Filtered Draenic Water'),

-- Darkcrest Sorceress
(600627,1,6003,2.0,0,1,0,1,1,'Darkcrest Sorceress - (ReferenceTable)'),
(600627,2,6001,90.0,0,1,0,1,1,'Darkcrest Sorceress - (ReferenceTable)'),
(600627,13444,0,0.5,0,1,0,1,1,'Darkcrest Sorceress - Major Mana Potion'),
(600627,13446,0,1.0,0,1,0,1,1,'Darkcrest Sorceress - Major Healing Potion'),
(600627,17057,0,25.0,0,1,0,1,1,'Darkcrest Sorceress - Shiny Fish Scales'),
(600627,17058,0,20.0,0,1,0,1,1,'Darkcrest Sorceress - Fish Oil'),
(600627,24280,0,100.0,1,1,0,1,1,'Darkcrest Sorceress - Naga Claws'),
(600627,24401,0,30.0,0,1,0,1,1,'Darkcrest Sorceress - Unidentified Plant Parts'),
(600627,24476,0,15.0,0,1,0,1,1,'Darkcrest Sorceress - Jaggal Clam'),
(600627,27858,0,3.0,0,1,0,1,3,'Darkcrest Sorceress - Sunspring Carp'),
(600627,28399,0,1.5,0,1,0,1,1,'Darkcrest Sorceress - Filtered Draenic Water'),

-- Darkcrest Sentry
(600628,1,6001,95.0,0,1,0,1,1,'Darkcrest Sentry - (ReferenceTable)'),
(600628,7080,0,1.0,0,1,0,1,2,'Darkcrest Sentry - Essence of Water'),
(600628,22578,0,15.0,0,1,0,1,2,'Darkcrest Sentry - Mote of Water'),
(600628,24507,0,70.0,0,1,1,1,1,'Darkcrest Sentry - Elemental Shard'),
(600628,24510,0,15.0,0,1,1,1,1,'Darkcrest Sentry - Primordial Core'),

-- Murloc Tidecaller
(600629,1,1001620,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 16-20'),
(600629,2,1011920,1.0,0,1,0,1,1,'World Drop - White World Drop - NPC Levels: 19-20'),
(600629,3,1021920,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 19-20'),
(600629,4,1031820,0.1,0,1,0,1,1,'World Drop - Blue World Drop - NPC Levels: 18-20'),
(600629,5,1051120,0.5,0,1,0,1,1,'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600629,6,1062029,3.0,0,1,0,1,1,'World Drop - Potions II - NPC Levels 20-29'),
(600629,7,1071930,1.0,0,1,0,1,1,'World Drop - Scrolls II - NPC Levels 19-30'),
(600629,8,1080002,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600629,9,1080016,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 20-25'),
(600629,414,0,0.04,0,1,0,1,1,'Murloc Tidecaller - Dalaran Sharp'),
(600629,422,0,0.16,0,1,0,1,1,'Murloc Tidecaller - Dwarven Mild'),
(600629,730,0,37.5966,0,1,0,1,1,'Murloc Tidecaller - Murloc Eye'),
(600629,1179,0,5.903,0,1,0,1,1,'Murloc Tidecaller - Ice Cold Milk'),
(600629,1205,0,0.22,0,1,0,1,1,'Murloc Tidecaller - Melon Juice'),
(600629,1467,0,45.0,1,1,0,1,1,'Murloc Tidecaller - Spotted Sunfish'),
(600629,1468,0,31.1314,0,1,0,1,1,'Murloc Tidecaller - Murloc Fin'),
(600629,1473,0,1.0,0,1,0,1,1,'Murloc Tidecaller - Riverside Staff'),
(600629,2589,0,0.02,0,1,0,1,1,'Murloc Tidecaller - Linen Cloth'),
(600629,2592,0,0.04,0,1,0,1,1,'Murloc Tidecaller - Wool Cloth'),
(600629,2700,0,0.04,0,1,0,1,1,'Murloc Tidecaller - Recipe: Succulent Pork Ribs'),
(600629,3770,0,0.06,0,1,0,1,1,'Murloc Tidecaller - Mutton Chop'),
(600629,4537,0,0.04,0,1,0,1,1,'Murloc Tidecaller - Tel''Abim Banana'),
(600629,4538,0,0.04,0,1,0,1,1,'Murloc Tidecaller - Snapvine Watermelon'),
(600629,4542,0,0.06,0,1,0,1,1,'Murloc Tidecaller - Moist Cornbread'),
(600629,4606,0,0.06,0,1,0,1,1,'Murloc Tidecaller - Spongy Morel'),
(600629,5498,0,0.04,0,1,0,1,1,'Murloc Tidecaller - Small Lustrous Pearl'),
(600629,5503,0,2.58,0,1,0,1,1,'Murloc Tidecaller - Clam Meat'),
(600629,5504,0,0.02,0,1,0,1,1,'Murloc Tidecaller - Tangy Clam Meat'),
(600629,5523,0,39.9157,0,1,0,1,1,'Murloc Tidecaller - Small Barnacled Clam'),
(600629,5784,0,18.0604,0,1,0,1,1,'Murloc Tidecaller - Slimy Murloc Scale'),
(600629,6289,0,4.0056,0,1,0,1,3,'Murloc Tidecaller - Raw Longjaw Mud Snapper'),

-- Murloc Oracle
(600630,1,1001620,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 16-20'),
(600630,2,1011718,1.0,0,1,0,1,1,'World Drop - White World Drop - NPC Levels: 17-18'),
(600630,3,1021718,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 17-18'),
(600630,4,1051120,0.5,0,1,0,1,1,'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600630,5,1061019,3.0,0,1,0,1,1,'World Drop - Potions I - NPC Levels 10-19'),
(600630,6,1070518,1.0,0,1,0,1,1,'World Drop - Scrolls I - NPC Levels 5-18'),
(600630,7,1080002,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600630,9,1080015,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 15-19'),
(600630,414,0,0.02,0,1,0,1,1,'Murloc Oracle - Dalaran Sharp'),
(600630,730,0,36.4778,0,1,0,1,1,'Murloc Oracle - Murloc Eye'),
(600630,1179,0,2.197,0,1,0,1,5,'Murloc Oracle - Ice Cold Milk'),
(600630,1357,0,1.0,0,1,0,1,1,'Murloc Oracle - Captain Sanders'' Treasure Map'),
(600630,1468,0,43.012,0,1,0,1,1,'Murloc Oracle - Murloc Fin'),
(600630,2287,0,0.02,0,1,0,1,1,'Murloc Oracle - Haunch of Meat'),
(600630,2698,0,0.06,0,1,0,1,1,'Murloc Oracle - Recipe: Cooked Crab Claw'),
(600630,4359,0,0.02,0,1,0,1,1,'Murloc Oracle - Handful of Copper Bolts'),
(600630,4364,0,0.02,0,1,0,1,1,'Murloc Oracle - Coarse Blasting Powder'),
(600630,4537,0,0.02,0,1,0,1,1,'Murloc Oracle - Tel''Abim Banana'),
(600630,4541,0,0.02,0,1,0,1,1,'Murloc Oracle - Freshly Baked Bread'),
(600630,4605,0,0.02,0,1,0,1,1,'Murloc Oracle - Red-speckled Mushroom'),
(600630,5498,0,0.0523,0,1,0,1,1,'Murloc Oracle - Small Lustrous Pearl'),
(600630,5503,0,1.62,0,1,0,1,1,'Murloc Oracle - Clam Meat'),
(600630,5523,0,36.5998,0,1,0,1,1,'Murloc Oracle - Small Barnacled Clam'),
(600630,5784,0,17.0009,0,1,0,1,1,'Murloc Oracle - Slimy Murloc Scale'),
(600630,6289,0,4.2371,0,1,0,1,3,'Murloc Oracle - Raw Longjaw Mud Snapper'),

-- Murloc Hunter
(600631,1,1001620,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 16-20'),
(600631,2,1011617,1.0,0,1,0,1,1,'World Drop - White World Drop - NPC Levels: 16-17'),
(600631,3,1021617,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 16-17'),
(600631,4,1051120,0.5,0,1,0,1,1,'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600631,5,1061019,3.0,0,1,0,1,1,'World Drop - Potions I - NPC Levels 10-19'),
(600631,6,1070518,1.0,0,1,0,1,1,'World Drop - Scrolls I - NPC Levels 5-18'),
(600631,7,1080002,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600631,9,1080015,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 15-19'),
(600631,730,0,35.3831,0,1,0,1,1,'Murloc Hunter - Murloc Eye'),
(600631,1179,0,2.3676,0,1,0,1,1,'Murloc Hunter - Ice Cold Milk'),
(600631,1357,0,1.0,0,1,0,1,1,'Murloc Hunter - Captain Sanders'' Treasure Map'),
(600631,1468,0,13.201,0,1,0,1,1,'Murloc Hunter - Murloc Fin'),
(600631,2287,0,0.02,0,1,0,1,1,'Murloc Hunter - Haunch of Meat'),
(600631,2698,0,0.12,0,1,0,1,1,'Murloc Hunter - Recipe: Cooked Crab Claw'),
(600631,4359,0,0.06,0,1,0,1,1,'Murloc Hunter - Handful of Copper Bolts'),
(600631,4361,0,0.02,0,1,0,1,1,'Murloc Hunter - Copper Tube'),
(600631,4363,0,0.02,0,1,0,1,1,'Murloc Hunter - Copper Modulator'),
(600631,4364,0,0.12,0,1,0,1,1,'Murloc Hunter - Coarse Blasting Powder'),
(600631,4405,0,0.02,0,1,0,1,1,'Murloc Hunter - Crude Scope'),
(600631,4541,0,0.02,0,1,0,1,1,'Murloc Hunter - Freshly Baked Bread'),
(600631,5498,0,0.08,0,1,0,1,1,'Murloc Hunter - Small Lustrous Pearl'),
(600631,5503,0,1.92,0,1,0,1,1,'Murloc Hunter - Clam Meat'),
(600631,5523,0,35.8435,0,1,0,1,1,'Murloc Hunter - Small Barnacled Clam'),
(600631,5784,0,17.0996,0,1,0,1,1,'Murloc Hunter - Slimy Murloc Scale'),
(600631,6289,0,5.0641,0,1,0,1,3,'Murloc Hunter - Raw Longjaw Mud Snapper'),

-- Lord Mwargadon (Boss)
(600633,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600633,43949,0,100.0,0,1,0,1,2,'Delve Token'),

-- Gurlgles (Boss)
(600634,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600634,43949,0,100.0,0,1,0,1,2,'Delve Token'),

-- Aguaspawn (Boss)
(600635,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600635,43949,0,100.0,0,1,0,1,2,'Delve Token');

-- ==================================================================================
-- CREATURE SPAWNS
-- ==================================================================================

DELETE FROM creature WHERE id1 IN (600624, 600625, 600626, 600627, 600628, 600629, 600630, 600631, 600632, 600633, 600634, 600635) AND `map` = 907;
INSERT INTO `creature` 
(`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES
-- Darkcrest Taskmaster - 7 spawns
(9001168, 600624, 0, 0, 907, 0, 0, 1, 1, 1, -8405.07, -393.481, 140.78, 0.293486, 1800, 4.0, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001175, 600624, 0, 0, 907, 0, 0, 1, 1, 1, -8471.0, -450.141, 140.54, 4.80737, 1800, 8.0, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001180, 600624, 0, 0, 907, 0, 0, 1, 1, 1, -8525.65, -492.228, 140.658, 3.30212, 1800, 7.0, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001187, 600624, 0, 0, 907, 0, 0, 1, 1, 1, -8566.54, -550.488, 146.918, 4.50718, 1800, 10.0, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001191, 600624, 0, 0, 907, 0, 0, 1, 1, 1, -8591.13, -619.741, 145.188, 1.95982, 1800, 8.0, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001196, 600624, 0, 0, 907, 0, 0, 1, 1, 1, -8622.26, -574.894, 145.933, 5.16809, 1800, 5.0, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001201, 600624, 0, 0, 907, 0, 0, 1, 1, 1, -8652.66, -564.27, 145.87, 1.85794, 1800, 7.0, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Darkcrest Siren - 5 spawns
(9001156, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8370.48, -372.574, 145.868, 4.42438, 1800, 7.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001174, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8470.66, -433.585, 140.539, 4.1785, 1800, 6.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001183, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8545.94, -516.417, 145.117, 1.81963, 1800, 12.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001197, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8641.32, -584.835, 145.188, 3.07987, 1800, 8.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001207, 600625, 0, 0, 907, 0, 0, 1, 1, 1, -8681.55, -497.089, 152.948, 3.86747, 1800, 7.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Darkcrest Wavecaller - 5 spawns
(9001165, 600626, 0, 0, 907, 0, 0, 1, 1, 1, -8321.71, -375.9, 140.779, 3.2299, 1800, 6.0, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001171, 600626, 0, 0, 907, 0, 0, 1, 1, 1, -8453.78, -418.773, 140.576, 3.54257, 1800, 6.0, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001188, 600626, 0, 0, 907, 0, 0, 1, 1, 1, -8549.13, -559.684, 145.599, 1.89573, 1800, 8.0, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001189, 600626, 0, 0, 907, 0, 0, 1, 1, 1, -8573.08, -563.993, 145.624, 3.21088, 1800, 8.0, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001190, 600626, 0, 0, 907, 0, 0, 1, 1, 1, -8586.62, -592.527, 146.187, 4.9159, 1800, 13.0, 0, 52569, 85240, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Darkcrest Sorceress - 6 spawns
(9001176, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8500.84, -460.555, 140.698, 5.95507, 1800, 5.0, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001184, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8559.63, -529.361, 146.344, 0.225583, 1800, 6.0, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001192, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8601.27, -581.298, 146.274, 2.15209, 1800, 10.0, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001194, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8589.3, -534.467, 145.979, 3.68604, 1800, 4.0, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001199, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8617.75, -524.22, 146.261, 2.50943, 1800, 6.0, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001200, 600627, 0, 0, 907, 0, 0, 1, 1, 1, -8673.27, -533.745, 152.291, 2.94862, 1800, 10.0, 0, 219037, 21310, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Darkcrest Sentry - 3 spawns
(9001186, 600628, 0, 0, 907, 0, 0, 1, 1, 0, -8514.78, -479.521, 142.474, 0.770176, 1800, 13.0, 0, 382602, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001204, 600628, 0, 0, 907, 0, 0, 1, 1, 0, -8633.67, -491.319, 142.535, 1.51889, 1800, 5.0, 0, 382602, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001212, 600628, 0, 0, 907, 0, 0, 1, 1, 0, -8603.63, -488.587, 142.581, 6.08095, 1800, 5.0, 0, 382602, 0, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Murloc Tidecaller - 8 spawns
(9001158, 600629, 0, 0, 907, 0, 0, 1, 1, 1, -8288.86, -374.619, 140.779, 5.91334, 1800, 15.0, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001159, 600629, 0, 0, 907, 0, 0, 1, 1, 1, -8267.73, -380.33, 140.876, 1.57321, 1800, 16.0, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001169, 600629, 0, 0, 907, 0, 0, 1, 1, 1, -8388.32, -384.42, 146.333, 4.73908, 1800, 0.0, 0, 204072, 42620, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001178, 600629, 0, 0, 907, 0, 0, 1, 1, 1, -8509.9, -456.999, 140.697, 0.255351, 1800, 4.0, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001182, 600629, 0, 0, 907, 0, 0, 1, 1, 1, -8544.53, -491.736, 140.54, 5.65884, 1800, 10.0, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001202, 600629, 0, 0, 907, 0, 0, 1, 1, 1, -8653.99, -531.199, 146.734, 0.769856, 1800, 7.0, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001209, 600629, 0, 0, 907, 0, 0, 1, 1, 1, -8688.35, -453.964, 142.371, 6.02881, 1800, 9.0, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001211, 600629, 0, 0, 907, 0, 0, 1, 1, 1, -8652.87, -480.487, 141.51, 5.61615, 1800, 5.0, 0, 204072, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Murloc Oracle - 7 spawns
(9001157, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8307.07, -363.72, 140.779, 5.78917, 1800, 13.0, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001160, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8273.2, -350.991, 140.787, 2.32914, 1800, 14.0, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001170, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8438.74, -419.994, 140.817, 4.50123, 1800, 10.0, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001177, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8496.9, -477.264, 140.72, 0.881549, 1800, 6.0, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001193, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8583.12, -511.079, 145.391, 1.68878, 1800, 8.0, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001203, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8653.83, -506.431, 145.557, 1.62303, 1800, 8.0, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001210, 600630, 0, 0, 907, 0, 0, 1, 1, 1, -8676.79, -457.026, 142.571, 6.02881, 1800, 5.0, 0, 178563, 4262, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Murloc Hunter - 4 spawns
(9001161, 600631, 0, 0, 907, 0, 0, 1, 1, 1, -8311.99, -320.921, 140.78, 3.0845, 1800, 8.0, 0, 6376, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001164, 600631, 0, 0, 907, 0, 0, 1, 1, 1, -8346.89, -259.137, 140.78, 1.08357, 1800, 14.0, 0, 6376, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001198, 600631, 0, 0, 907, 0, 0, 1, 1, 1, -8678.5, -570.492, 156.721, 4.41598, 1800, 14.0, 0, 6376, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001208, 600631, 0, 0, 907, 0, 0, 1, 1, 1, -8691.95, -515.198, 159.331, 0.405512, 1800, 7.0, 0, 6376, 0, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Coilfang Water Elemental - 7 spawns
(9001162, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8336.9, -296.276, 142.486, 4.50818, 1800, 4.0, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001166, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8368.21, -389.868, 142.491, 0.715499, 1800, 4.0, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001167, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8418.06, -395.057, 142.491, 6.06005, 1800, 5.0, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001172, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8448.86, -439.495, 142.403, 1.52408, 1800, 10.0, 0, 43807, 34096, 1, 0, 32768, 0, '', NULL, 0, NULL),
(9001173, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8477.78, -407.396, 142.403, 4.92211, 1800, 10.0, 0, 43807, 34096, 1, 0, 32768, 0, '', NULL, 0, NULL),
(9001179, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8531.21, -469.836, 142.498, 0.0169186, 1800, 8.0, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001181, 600632, 0, 0, 907, 0, 0, 1, 1, 0, -8559.28, -490.448, 142.499, 0.264503, 1800, 10.0, 0, 43807, 34096, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Lord Mwargadon (Boss) - 1 spawn
(9001195, 600633, 0, 0, 907, 0, 0, 1, 1, 1, -8635.07, -542.1, 145.742, 1.28288, 1800, 0.0, 0, 846260, 0, 0, 0, 0, 0, '', NULL, 0, NULL),

-- Gurlgles (Boss) - 1 spawn
(9001206, 600634, 0, 0, 907, 0, 0, 1, 1, 1, -8682.18, -476.965, 146.362, 5.87023, 1800, 8.0, 0, 34782, 0, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Aguaspawn (Boss) - 1 spawn
(9001163, 600635, 0, 0, 907, 0, 0, 1, 1, 0, -8320.1, -261.177, 144.475, 3.16042, 1800, 0.0, 0, 364547, 213100, 0, 0, 32768, 0, '', NULL, 0, NULL);

-- ==================================================================================
-- SMART SCRIPTS (AI)
-- ==================================================================================

DELETE FROM smart_scripts WHERE entryorguid IN (600624, 600625, 600626, 600627, 600628, 600629, 600630, 600631, 600632) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,event_param5,event_param6,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_param4,target_x,target_y,target_z,target_o,comment) VALUES
-- Darkcrest Taskmaster
(600624,0,0,0,0,0,100,0,4000,4000,4000,7000,0,0,11,34811,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Taskmaster - In Combat - Cast ''Tail Lash'''),
(600624,0,1,0,0,0,100,0,6000,6000,8000,13000,0,0,11,34812,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Taskmaster - In Combat - Cast ''Curse of Nazjatar'''),

-- Darkcrest Siren
(600625,0,0,0,0,0,100,0,0,0,2400,3800,0,0,11,9672,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Siren - In Combat - Cast ''Frostbolt'''),
(600625,0,1,0,106,0,100,0,7000,10000,14000,18000,0,10,11,11831,1,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Siren - On Hostile in Range - Cast ''Frost Nova'''),
(600625,0,2,0,0,0,100,0,5000,7000,12000,17000,0,0,11,6726,1,0,0,0,0,5,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Siren - In Combat - Cast ''Silence'''),
(600625,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Siren - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Darkcrest Wavecaller
(600626,0,0,0,1,0,100,0,1000,1000,600000,600000,0,0,11,34827,33,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodscale Wavecaller - Out of Combat - Cast ''Water Shield'' (No Repeat)'),
(600626,0,1,0,0,0,100,0,0,0,2400,3800,0,0,11,32011,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Bloodscale Wavecaller - In Combat CMC - Cast ''Water Bolt'''),

-- Darkcrest Sorceress
(600627,0,0,0,1,0,100,0,1000,1000,1800000,1800000,0,0,11,12544,33,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Sorceress - Out of Combat - Cast ''Frost Armor'''),
(600627,0,1,0,0,0,100,0,0,0,2400,3800,0,0,11,13901,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Sorceress - In Combat - Cast ''Arcane Bolt'''),
(600627,0,2,0,0,0,100,0,10000,15000,20000,25000,0,0,11,34787,1,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Sorceress - In Combat - Cast ''Freezing Circle'''),
(600627,0,3,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Sorceress - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Darkcrest Sentry
(600628,0,0,0,2,0,100,1,5,20,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Darkcrest Sentry - Between 5-20% Health - Flee For Assist (No Repeat)'),

-- Murloc Tidecaller
(600629,0,0,0,106,0,100,0,6200,12600,25000,30000,0,10,11,122,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Tidecaller - On Hostile in Range - Cast ''Frost Nova'''),
(600629,0,1,0,74,0,100,0,0,0,24100,25500,40,0,11,913,0,0,0,0,0,9,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Tidecaller - On Friendly Below 40% Health - Cast ''Healing Wave'''),
(600629,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Tidecaller - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Murloc Oracle
(600630,0,0,0,0,0,100,0,2900,3600,2900,3600,0,0,11,9734,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Oracle - In Combat - Cast ''Holy Smite'''),
(600630,0,1,0,74,0,100,0,0,0,48800,53700,50,0,11,6074,1,0,0,0,0,9,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Oracle - On Friendly Below 50% Health - Cast ''Renew'''),
(600630,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Oracle - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Murloc Hunter
(600631,0,0,0,1,0,100,1,1000,1000,0,0,0,0,11,8656,0,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Hunter - Out of Combat - Cast ''Summon Crawler'' (No Repeat)'),
(600631,0,1,0,0,0,100,0,0,0,2900,4800,0,0,11,10277,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Hunter - In Combat CMC - Cast ''Throw'''),
(600631,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Murloc Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Coilfang Water Elemental
(600632,0,0,0,0,0,100,0,3000,6000,7000,12000,0,0,11,34449,0,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Coilfang Water Elemental - In Combat - Cast Water Bolt Volley');

-- ==================================================================================
-- END OF ELWYNN FALLS DELVE EXPORT
-- ==================================================================================