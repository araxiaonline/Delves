-- ==================================================================================
-- FORGOTTEN GNOME CAMP DELVE - SQL EXPORT
-- ==================================================================================
-- Delve Name: Forgotten Gnome Camp
-- Map ID: 909
-- Level Range: 83-85
-- Total NPCs: 8 (IDs 600673-600680)
-- Total Spawns: 74
-- ==================================================================================

-- ==================================================================================
-- CREATURE TEMPLATES
-- ==================================================================================

DELETE FROM creature_template WHERE entry IN (600673, 600674, 600675, 600676, 600677, 600678, 600679, 600680);
INSERT INTO creature_template (entry,difficulty_entry_1,difficulty_entry_2,difficulty_entry_3,KillCredit1,KillCredit2,name,subname,IconName,gossip_menu_id,minlevel,maxlevel,`exp`,faction,npcflag,speed_walk,speed_run,speed_swim,speed_flight,detection_range,`scale`,`rank`,dmgschool,DamageModifier,BaseAttackTime,RangeAttackTime,BaseVariance,RangeVariance,unit_class,unit_flags,unit_flags2,dynamicflags,family,trainer_type,trainer_spell,trainer_class,trainer_race,`type`,type_flags,lootid,pickpocketloot,skinloot,PetSpellDataId,VehicleId,mingold,maxgold,AIName,MovementType,HoverHeight,HealthModifier,ManaModifier,ArmorModifier,ExperienceModifier,RacialLeader,movementId,RegenHealth,mechanic_immune_mask,spell_school_immune_mask,flags_extra,ScriptName,VerifiedBuild) VALUES
(600673,0,0,0,0,0,'Rockjaw Flameweaver','Delve',NULL,0,83,84,0,168,0,1.0,1.71429,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,8,32768,2048,0,0,0,0,0,0,7,0,600673,600673,0,0,0,66,444,'SmartAI',0,1.0,25.0,10.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600674,0,0,0,0,0,'Rockjaw Seer','Delve',NULL,0,83,83,1,168,0,3.2,1.71429,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,2,32768,2048,0,0,0,0,0,0,7,0,600674,600674,0,0,0,145,195,'SmartAI',1,1.0,25.0,10.0,0.97,1.0,0,0,1,0,0,0,'',12340),
(600675,0,0,0,0,0,'Rockjaw Backbreaker','Delve',NULL,0,83,85,1,168,0,1.0,1.19048,1.0,1.0,20.0,1.0,1,0,36.9,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,600675,0,0,0,0,169,225,'SmartAI',1,1.0,38.0,1.0,0.97,1.0,0,0,1,0,0,0,'',12340),
(600676,0,0,0,0,0,'Rockjaw Shaman','Delve',NULL,0,83,85,0,168,0,1.6,1.14286,1.0,1.0,20.0,1.0,1,0,7.5,2000,2000,1.0,1.0,8,32768,2048,0,0,0,0,0,0,7,0,36829,0,0,0,0,176,235,'SmartAI',1,1.0,40.0,10.0,1.0,1.0,0,51,1,0,0,0,'',12340),
(600677,0,0,0,0,0,'Rockjaw Raider','Delve',NULL,0,83,83,0,168,0,1.0,1.19048,1.0,1.0,20.0,1.12,1,0,36.9,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,600677,600677,0,0,0,76,350,'SmartAI',1,1.0,38.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600678,0,0,0,0,0,'Rockjaw Brawler','Delve',NULL,0,83,83,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,1,0,35.0,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,7,0,600678,600678,0,0,0,61,404,'SmartAI',0,1.0,90.0,1.0,1.0,1.0,0,0,1,0,0,0,'',12340),
(600679,0,0,0,0,0,'Grurvuch','Delve boss',NULL,0,83,83,1,168,0,1.0,1.42857,1.0,1.0,20.0,1.2,3,0,24.0,2000,2000,1.0,1.0,1,32832,2048,0,0,0,0,0,0,7,4,600679,0,0,0,0,1039,1362,'',1,1.0,85.0,10.0,1.1,1.0,0,0,1,1105,0,0,'',12340),
(600680,0,0,0,0,0,'Scervig','Delve Boss',NULL,0,84,84,0,168,0,1.0,1.14286,1.0,1.0,20.0,2.0,3,0,20.0,2000,2000,1.0,1.0,1,0,2048,0,0,0,0,0,0,7,4,600680,600680,0,0,0,399,1620,'',1,1.0,65.0,40.0,1.2,2.0,0,0,1,646659935,0,0,'',12340);

-- ==================================================================================
-- CREATURE TEMPLATE MODELS
-- ==================================================================================

DELETE FROM creature_template_model WHERE CreatureID IN (600673, 600674, 600675, 600676, 600677, 600678, 600679, 600680);
INSERT INTO creature_template_model (CreatureID,Idx,CreatureDisplayID,DisplayScale,Probability,VerifiedBuild) VALUES
(600673,0,160,1.0,1.0,12340),
(600674,0,722,1.0,1.0,12340),
(600675,0,723,1.0,1.0,12340),
(600676,0,10285,1.0,1.0,12340),
(600677,0,730,1.0,1.0,12340),
(600678,0,11166,1.0,1.0,12340),
(600679,0,11165,1.2,1.0,12340),
(600680,0,5945,2.0,1.0,12340);

-- ==================================================================================
-- CREATURE TEMPLATE SPELLS
-- ==================================================================================

DELETE FROM creature_template_spell WHERE CreatureID IN (600673, 600674, 600675, 600676, 600677, 600678, 600679, 600680);
INSERT INTO creature_template_spell (CreatureID,`Index`,Spell,VerifiedBuild) VALUES
(600673,0,7739,12340),
(600673,1,2941,12340),
(600673,2,2602,12340),
(600674,0,9532,12340),
(600674,1,11986,12340),
(600675,0,3019,12340),
(600676,0,12492,0),
(600676,1,15786,0),
(600676,2,15801,0),
(600677,0,12057,0),
(600677,1,16509,0),
(600677,2,9080,0),
(600678,0,3391,12340),
(600678,1,8599,12340),
(600679,0,9532,0),
(600679,1,8292,0),
(600679,2,11892,0),
(600679,3,8143,0),
(600679,4,5742,0),
(600680,0,15537,0),
(600680,1,12741,0),
(600680,2,17228,0);

-- ==================================================================================
-- CREATURE EQUIPMENT
-- ==================================================================================

DELETE FROM creature_equip_template WHERE CreatureID IN (600673, 600674, 600675, 600676, 600677, 600679, 600680);
INSERT INTO creature_equip_template (CreatureID,ID,ItemID1,ItemID2,ItemID3,VerifiedBuild) VALUES
(600673,1,1908,0,0,18019),
(600674,1,1907,0,0,18019),
(600675,1,3326,0,0,18019),
(600676,1,5276,0,0,18019),
(600677,1,2695,0,0,18019),
(600679,1,5303,0,0,18019),
(600680,1,1907,0,0,18019);

-- ==================================================================================
-- CREATURE LOOT
-- ==================================================================================

DELETE FROM creature_loot_template WHERE Entry IN (600673, 600674, 600675, 600677, 600678, 600679, 600680);
INSERT INTO creature_loot_template (Entry,Item,Reference,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) VALUES
-- Rockjaw Flameweaver (extensive loot table preserved from source)
(600673,1645,0,2.0399,0,1,0,1,1,'Stonevault Flameweaver - Moonberry Juice'),
(600673,1685,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Troll-hide Bag'),
(600673,3395,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Recipe: Limited Invulnerability Potion'),
(600673,3771,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Wild Hog Shank'),
(600673,3832,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Recipe: Elixir of Detect Lesser Invisibility'),
(600673,3864,0,0.2661,0,1,0,1,1,'Stonevault Flameweaver - Citrine'),
(600673,3868,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Frost Tiger Blade'),
(600673,3869,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Shadow Crescent Axe'),
(600673,3873,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Golden Scale Cuirass'),
(600673,3874,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Polished Steel Boots'),
(600673,3914,0,0.14,0,1,0,1,1,'Stonevault Flameweaver - Journeyman''s Backpack'),
(600673,3928,0,1.7517,0,1,0,1,1,'Stonevault Flameweaver - Superior Healing Potion'),
(600673,4300,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Guardian Leather Bracers'),
(600673,4306,0,14.6785,0,1,0,1,4,'Stonevault Flameweaver - Silk Cloth'),
(600673,4338,0,18.7805,0,1,0,1,4,'Stonevault Flameweaver - Mageweave Cloth'),
(600673,4353,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Spider Belt'),
(600673,4416,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Schematic: Goblin Land Mine'),
(600673,4419,0,0.38,0,1,0,1,1,'Stonevault Flameweaver - Scroll of Intellect III'),
(600673,4421,0,0.44,0,1,0,1,1,'Stonevault Flameweaver - Scroll of Protection III'),
(600673,4422,0,0.32,0,1,0,1,1,'Stonevault Flameweaver - Scroll of Stamina III'),
(600673,4424,0,0.56,0,1,0,1,1,'Stonevault Flameweaver - Scroll of Spirit III'),
(600673,4539,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Goldenbark Apple'),
(600673,4544,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Mulgore Spice Bread'),
(600673,4599,0,5.1885,0,1,0,1,1,'Stonevault Flameweaver - Cured Ham Steak'),
(600673,4637,0,0.3769,0,1,0,1,1,'Stonevault Flameweaver - Steel Lockbox'),
(600673,6149,0,1.22,0,1,0,1,1,'Stonevault Flameweaver - Greater Mana Potion'),
(600673,7084,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Crimson Silk Shoulders'),
(600673,7086,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Earthen Silk Belt'),
(600673,7453,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Swift Boots'),
(600673,7909,0,0.4656,0,1,0,1,1,'Stonevault Flameweaver - Aquamarine'),
(600673,7910,0,0.133,0,1,0,1,1,'Stonevault Flameweaver - Star Ruby'),
(600673,7912,0,0.06,0,1,0,1,1,'Stonevault Flameweaver - Solid Stone'),
(600673,7975,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Heavy Mithril Pants'),
(600673,7976,0,0.04,0,1,0,1,1,'Stonevault Flameweaver - Plans: Mithril Shield Spike'),
(600673,7989,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Mithril Spurs'),
(600673,7990,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Heavy Mithril Helm'),
(600673,7992,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Blue Glittering Axe'),
(600673,7993,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Plans: Dazzling Mithril Rapier'),
(600673,8029,0,0.3,0,1,0,1,1,'Stonevault Flameweaver - Plans: Wicked Mithril Blade'),
(600673,8364,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Mithril Head Trout'),
(600673,8385,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Turtle Scale Gloves'),
(600673,8386,0,0.06,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Big Voodoo Robe'),
(600673,8387,0,0.04,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Big Voodoo Mask'),
(600673,8389,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Big Voodoo Pants'),
(600673,8390,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Big Voodoo Cloak'),
(600673,9293,0,0.06,0,1,0,1,1,'Stonevault Flameweaver - Recipe: Magic Resistance Potion'),
(600673,9295,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Recipe: Invisibility Potion'),
(600673,9298,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Recipe: Elixir of Giants'),
(600673,9381,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Earthen Rod'),
(600673,9383,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Obsidian Cleaver'),
(600673,9384,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Stonevault Shiv'),
(600673,9386,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Excavator''s Brand'),
(600673,9391,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - The Shoveler'),
(600673,9392,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Annealed Blade'),
(600673,9393,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Beacon of Hope'),
(600673,9396,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Legguards of the Vault'),
(600673,9397,0,0.06,0,1,0,1,1,'Stonevault Flameweaver - Energy Cloak'),
(600673,9406,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Spirewind Fetter'),
(600673,9420,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Adventurer''s Pith Helmet'),
(600673,9422,0,0.04,0,1,0,1,1,'Stonevault Flameweaver - Shadowforge Bushmaster'),
(600673,9423,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - The Jackhammer'),
(600673,9424,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Ginn-su Sword'),
(600673,9425,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pendulum of Doom'),
(600673,9426,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Monolithic Bow'),
(600673,9427,0,0.04,0,1,0,1,1,'Stonevault Flameweaver - Stonevault Bonebreaker'),
(600673,9428,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Unearthed Bands'),
(600673,9429,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Miner''s Hat of the Deep'),
(600673,9431,0,0.0222,0,1,0,1,1,'Stonevault Flameweaver - Papal Fez'),
(600673,9432,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Skullplate Bracers'),
(600673,9465,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Digmaster 5000'),
(600673,10300,0,0.08,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Red Mageweave Vest'),
(600673,10301,0,0.04,0,1,0,1,1,'Stonevault Flameweaver - Pattern: White Bandit Mask'),
(600673,10302,0,0.04,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Red Mageweave Pants'),
(600673,10312,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Red Mageweave Gloves'),
(600673,10315,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Red Mageweave Shoulders'),
(600673,10320,0,0.04,0,1,0,1,1,'Stonevault Flameweaver - Pattern: Red Mageweave Headband'),
(600673,10603,0,0.08,0,1,0,1,1,'Stonevault Flameweaver - Schematic: Catseye Ultra Goggles'),
(600673,10604,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Schematic: Mithril Heavy-bore Rifle'),
(600673,10606,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Schematic: Parachute Cloak'),
(600673,11167,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Formula: Enchant Boots - Lesser Spirit'),
(600673,11202,0,0.08,0,1,0,1,1,'Stonevault Flameweaver - Formula: Enchant Shield - Stamina'),
(600673,11204,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Formula: Enchant Bracer - Greater Spirit'),
(600673,11208,0,0.02,0,1,0,1,1,'Stonevault Flameweaver - Formula: Enchant Weapon - Demonslaying'),
(600673,20976,0,0.1,0,1,0,1,1,'Stonevault Flameweaver - Design: Citrine Pendant of Golden Healing'),
(600673,24036,24036,5.0,0,1,1,1,1,'Stonevault Flameweaver - (ReferenceTable)'),
(600673,24039,24039,1.0,0,1,1,1,1,'Stonevault Flameweaver - (ReferenceTable)'),
(600673,24041,24041,1.0,0,1,1,1,1,'Stonevault Flameweaver - (ReferenceTable)'),
(600673,24043,24043,1.0,0,1,1,1,1,'Stonevault Flameweaver - (ReferenceTable)'),
(600673,24045,24045,1.0,0,1,1,1,1,'Stonevault Flameweaver - (ReferenceTable)'),
(600673,24080,24080,0.1,0,1,1,1,1,'Stonevault Flameweaver - (ReferenceTable)'),
(600673,24081,24081,0.1,0,1,1,1,1,'Stonevault Flameweaver - (ReferenceTable)'),
(600673,24082,24082,0.1,0,1,1,1,1,'Stonevault Flameweaver - (ReferenceTable)'),

-- Rockjaw Seer
(600674,1,1003140,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 31-40'),
(600674,2,1023738,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 37-38'),
(600674,3,1033738,0.1,0,1,0,1,1,'World Drop - Blue World Drop - NPC Levels: 37-38'),
(600674,4,1043840,0.01,0,1,0,1,1,'World Drop - Purple World Drop - NPC Levels: 38-40'),
(600674,5,1053140,0.4,0,1,0,1,1,'World Drop - 12 Slot Bag - NPC Levels: 31-40'),
(600674,6,1063039,3.0,0,1,0,1,1,'World Drop - Potions III - NPC Levels 30-39'),
(600674,7,1073545,1.0,0,1,0,1,1,'World Drop - Scrolls III - NPC Levels 35-45'),
(600674,8,1080004,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~35'),
(600674,9,1080020,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 36-40'),
(600674,1708,0,2.7494,0,1,0,1,1,'Stonevault Seer - Sweet Nectar'),
(600674,3771,0,4.2839,0,1,0,1,1,'Stonevault Seer - Wild Hog Shank'),
(600674,4306,0,28.9642,0,1,0,1,4,'Stonevault Seer - Silk Cloth'),
(600674,4338,0,4.6675,0,1,0,1,3,'Stonevault Seer - Mageweave Cloth'),
(600674,4614,0,0.04,0,1,0,1,1,'Stonevault Seer - Pendant of Myzrael'),
(600674,4636,0,0.3836,0,1,0,1,1,'Stonevault Seer - Strong Iron Lockbox'),
(600674,5797,0,80.0,1,1,0,1,1,'Stonevault Seer - Indurium Flake'),

-- Rockjaw Backbreaker
(600675,1,1001115,6.0,0,1,0,1,1,'World Drop - Grey World Drop - NPC Levels: 11-15'),
(600675,2,1011112,5.0,0,1,0,1,1,'World Drop - White World Drop - NPC Levels: 11-12'),
(600675,3,1021112,2.0,0,1,0,1,1,'World Drop - Green World Drop - NPC Levels: 11-12'),
(600675,4,1051120,0.5,0,1,0,1,1,'World Drop - 8 Slot Bag - NPC Levels: 11-20'),
(600675,5,1061019,3.0,0,1,0,1,1,'World Drop - Potions I - NPC Levels 10-19'),
(600675,6,1070518,1.0,0,1,0,1,1,'World Drop - Scrolls I - NPC Levels 5-18'),
(600675,7,1080002,0.3,0,1,0,1,1,'World Drop - Profession Recipes - NPC Levels ~10-20'),
(600675,9,1080014,1.5,0,1,0,1,1,'World Drop - Gems - NPC Levels: 11-14'),
(600675,117,0,9.0,0,1,0,1,1,'Rockjaw Backbreaker - Tough Jerky'),
(600675,118,0,3.0,0,1,0,1,2,'Rockjaw Backbreaker - Minor Healing Potion'),
(600675,159,0,4.0,0,1,0,1,2,'Rockjaw Backbreaker - Refreshing Spring Water'),
(600675,2064,0,6.0,0,1,0,1,1,'Rockjaw Backbreaker - Trogg Club'),
(600675,2589,0,33.0,0,1,0,1,2,'Rockjaw Backbreaker - Linen Cloth'),
(600675,2591,0,22.0,0,1,0,1,1,'Rockjaw Backbreaker - Dirty Trogg Cloth'),

-- Rockjaw Raider
(600677,0,11111,0.2,0,1,0,1,1,'Rockjaw Raider - (Small Pouch ReferenceTable)'),
(600677,0,20000,30.0,0,1,0,1,1,'Rockjaw Raider - (Grey 1-5 EXP 0 ReferenceTable)'),
(600677,0,20015,30.0,0,1,0,1,1,'Rockjaw Raider - (Food 1-5 EXP 0 ReferenceTable)'),
(600677,2054,0,2.0,0,1,0,1,1,'Rockjaw Raider - Trogg Hand Axe'),

-- Rockjaw Brawler (extensive loot table preserved from source)
(600678,1210,0,0.02,0,1,0,1,1,'Stonevault Brawler - Shadowgem'),
(600678,1529,0,0.02,0,1,0,1,1,'Stonevault Brawler - Jade'),
(600678,1645,0,2.5045,0,1,0,1,1,'Stonevault Brawler - Moonberry Juice'),
(600678,1685,0,0.0347,0,1,0,1,1,'Stonevault Brawler - Troll-hide Bag'),
(600678,1707,0,0.02,0,1,0,1,1,'Stonevault Brawler - Stormwind Brie'),
(600678,2838,0,0.04,0,1,0,1,1,'Stonevault Brawler - Heavy Stone'),
(600678,3395,0,0.02,0,1,0,1,1,'Stonevault Brawler - Recipe: Limited Invulnerability Potion'),
(600678,3771,0,0.02,0,1,0,1,1,'Stonevault Brawler - Wild Hog Shank'),
(600678,3831,0,0.02,0,1,0,1,1,'Stonevault Brawler - Recipe: Major Troll''s Blood Elixir'),
(600678,3832,0,0.02,0,1,0,1,1,'Stonevault Brawler - Recipe: Elixir of Detect Lesser Invisibility'),
(600678,3864,0,0.1537,0,1,0,1,1,'Stonevault Brawler - Citrine'),
(600678,3868,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Frost Tiger Blade'),
(600678,3869,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Shadow Crescent Axe'),
(600678,3873,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Golden Scale Cuirass'),
(600678,3874,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Polished Steel Boots'),
(600678,3914,0,0.16,0,1,0,1,1,'Stonevault Brawler - Journeyman''s Backpack'),
(600678,3928,0,1.4878,0,1,0,1,1,'Stonevault Brawler - Superior Healing Potion'),
(600678,4300,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Guardian Leather Bracers'),
(600678,4306,0,14.6846,0,1,0,1,4,'Stonevault Brawler - Silk Cloth'),
(600678,4338,0,18.3297,0,1,0,1,4,'Stonevault Brawler - Mageweave Cloth'),
(600678,4353,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Spider Belt'),
(600678,4375,0,0.02,0,1,0,1,1,'Stonevault Brawler - Whirring Bronze Gizmo'),
(600678,4416,0,0.02,0,1,0,1,1,'Stonevault Brawler - Schematic: Goblin Land Mine'),
(600678,4417,0,0.02,0,1,0,1,1,'Stonevault Brawler - Schematic: Large Seaforium Charge'),
(600678,4419,0,0.28,0,1,0,1,1,'Stonevault Brawler - Scroll of Intellect III'),
(600678,4421,0,0.48,0,1,0,1,1,'Stonevault Brawler - Scroll of Protection III'),
(600678,4422,0,0.36,0,1,0,1,1,'Stonevault Brawler - Scroll of Stamina III'),
(600678,4424,0,0.48,0,1,0,1,1,'Stonevault Brawler - Scroll of Spirit III'),
(600678,4539,0,0.02,0,1,0,1,1,'Stonevault Brawler - Goldenbark Apple'),
(600678,4544,0,0.02,0,1,0,1,1,'Stonevault Brawler - Mulgore Spice Bread'),
(600678,4599,0,5.3362,0,1,0,1,1,'Stonevault Brawler - Cured Ham Steak'),
(600678,4637,0,0.4315,0,1,0,1,1,'Stonevault Brawler - Steel Lockbox'),
(600678,5974,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Guardian Cloak'),
(600678,6149,0,1.36,0,1,0,1,1,'Stonevault Brawler - Greater Mana Potion'),
(600678,7084,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Crimson Silk Shoulders'),
(600678,7085,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Azure Shoulders'),
(600678,7086,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Earthen Silk Belt'),
(600678,7453,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Swift Boots'),
(600678,7909,0,0.4364,0,1,0,1,1,'Stonevault Brawler - Aquamarine'),
(600678,7910,0,0.1785,0,1,0,1,1,'Stonevault Brawler - Star Ruby'),
(600678,7912,0,0.08,0,1,0,1,1,'Stonevault Brawler - Solid Stone'),
(600678,7975,0,0.04,0,1,0,1,1,'Stonevault Brawler - Plans: Heavy Mithril Pants'),
(600678,7976,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Mithril Shield Spike'),
(600678,7989,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Mithril Spurs'),
(600678,7990,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Heavy Mithril Helm'),
(600678,7992,0,0.04,0,1,0,1,1,'Stonevault Brawler - Plans: Blue Glittering Axe'),
(600678,7993,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Dazzling Mithril Rapier'),
(600678,8029,0,0.18,0,1,0,1,1,'Stonevault Brawler - Plans: Wicked Mithril Blade'),
(600678,8364,0,0.02,0,1,0,1,1,'Stonevault Brawler - Mithril Head Trout'),
(600678,8385,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Turtle Scale Gloves'),
(600678,8386,0,0.04,0,1,0,1,1,'Stonevault Brawler - Pattern: Big Voodoo Robe'),
(600678,8387,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Big Voodoo Mask'),
(600678,8389,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Big Voodoo Pants'),
(600678,8390,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Big Voodoo Cloak'),
(600678,9293,0,0.04,0,1,0,1,1,'Stonevault Brawler - Recipe: Magic Resistance Potion'),
(600678,9295,0,0.02,0,1,0,1,1,'Stonevault Brawler - Recipe: Invisibility Potion'),
(600678,9298,0,0.02,0,1,0,1,1,'Stonevault Brawler - Recipe: Elixir of Giants'),
(600678,9381,0,0.02,0,1,0,1,1,'Stonevault Brawler - Earthen Rod'),
(600678,9383,0,0.02,0,1,0,1,1,'Stonevault Brawler - Obsidian Cleaver'),
(600678,9384,0,0.02,0,1,0,1,1,'Stonevault Brawler - Stonevault Shiv'),
(600678,9386,0,0.02,0,1,0,1,1,'Stonevault Brawler - Excavator''s Brand'),
(600678,9391,0,0.02,0,1,0,1,1,'Stonevault Brawler - The Shoveler'),
(600678,9392,0,0.02,0,1,0,1,1,'Stonevault Brawler - Annealed Blade'),
(600678,9393,0,0.02,0,1,0,1,1,'Stonevault Brawler - Beacon of Hope'),
(600678,9396,0,0.02,0,1,0,1,1,'Stonevault Brawler - Legguards of the Vault'),
(600678,9397,0,0.04,0,1,0,1,1,'Stonevault Brawler - Energy Cloak'),
(600678,9406,0,0.02,0,1,0,1,1,'Stonevault Brawler - Spirewind Fetter'),
(600678,9420,0,0.02,0,1,0,1,1,'Stonevault Brawler - Adventurer''s Pith Helmet'),
(600678,9422,0,0.02,0,1,0,1,1,'Stonevault Brawler - Shadowforge Bushmaster'),
(600678,9423,0,0.02,0,1,0,1,1,'Stonevault Brawler - The Jackhammer'),
(600678,9424,0,0.02,0,1,0,1,1,'Stonevault Brawler - Ginn-su Sword'),
(600678,9425,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pendulum of Doom'),
(600678,9426,0,0.04,0,1,0,1,1,'Stonevault Brawler - Monolithic Bow'),
(600678,9427,0,0.02,0,1,0,1,1,'Stonevault Brawler - Stonevault Bonebreaker'),
(600678,9428,0,0.02,0,1,0,1,1,'Stonevault Brawler - Unearthed Bands'),
(600678,9429,0,0.02,0,1,0,1,1,'Stonevault Brawler - Miner''s Hat of the Deep'),
(600678,9430,0,0.02,0,1,0,1,1,'Stonevault Brawler - Spaulders of a Lost Age'),
(600678,9431,0,0.02,0,1,0,1,1,'Stonevault Brawler - Papal Fez'),
(600678,9432,0,0.02,0,1,0,1,1,'Stonevault Brawler - Skullplate Bracers'),
(600678,9465,0,0.04,0,1,0,1,1,'Stonevault Brawler - Digmaster 5000'),
(600678,10300,0,0.04,0,1,0,1,1,'Stonevault Brawler - Pattern: Red Mageweave Vest'),
(600678,10301,0,0.04,0,1,0,1,1,'Stonevault Brawler - Pattern: White Bandit Mask'),
(600678,10302,0,0.04,0,1,0,1,1,'Stonevault Brawler - Pattern: Red Mageweave Pants'),
(600678,10312,0,0.06,0,1,0,1,1,'Stonevault Brawler - Pattern: Red Mageweave Gloves'),
(600678,10315,0,0.04,0,1,0,1,1,'Stonevault Brawler - Pattern: Red Mageweave Shoulders'),
(600678,10320,0,0.02,0,1,0,1,1,'Stonevault Brawler - Pattern: Red Mageweave Headband'),
(600678,10603,0,0.02,0,1,0,1,1,'Stonevault Brawler - Schematic: Catseye Ultra Goggles'),
(600678,10604,0,0.06,0,1,0,1,1,'Stonevault Brawler - Schematic: Mithril Heavy-bore Rifle'),
(600678,10605,0,0.02,0,1,0,1,1,'Stonevault Brawler - Schematic: Spellpower Goggles Xtreme'),
(600678,10606,0,0.04,0,1,0,1,1,'Stonevault Brawler - Schematic: Parachute Cloak'),
(600678,11167,0,0.02,0,1,0,1,1,'Stonevault Brawler - Formula: Enchant Boots - Lesser Spirit'),
(600678,11202,0,0.04,0,1,0,1,1,'Stonevault Brawler - Formula: Enchant Shield - Stamina'),
(600678,11204,0,0.04,0,1,0,1,1,'Stonevault Brawler - Formula: Enchant Bracer - Greater Spirit'),
(600678,11208,0,0.02,0,1,0,1,1,'Stonevault Brawler - Formula: Enchant Weapon - Demonslaying'),
(600678,11225,0,0.02,0,1,0,1,1,'Stonevault Brawler - Formula: Enchant Bracer - Greater Stamina'),
(600678,12261,0,0.02,0,1,0,1,1,'Stonevault Brawler - Plans: Searing Golden Blade'),
(600678,20976,0,0.09,0,1,0,1,1,'Stonevault Brawler - Design: Citrine Pendant of Golden Healing'),
(600678,24036,24036,5.0,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24037,24037,1.0,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24039,24039,1.0,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24041,24041,1.0,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24043,24043,1.0,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24045,24045,1.0,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24079,24079,0.1,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24080,24080,0.1,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24081,24081,0.1,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),
(600678,24082,24082,0.1,0,1,1,1,1,'Stonevault Brawler - (ReferenceTable)'),

-- Grurvuch (Boss)
(600679,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600679,43949,0,100.0,0,1,0,1,2,'Delve Token'),

-- Scervig (Boss)
(600680,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
(600680,43949,0,100.0,0,1,0,1,2,'Delve Token');

-- ==================================================================================
-- CREATURE SPAWNS
-- ==================================================================================

DELETE FROM creature WHERE id1 IN (600673, 600674, 600675, 600676, 600677, 600678, 600679, 600680) AND `map` = 909;
INSERT INTO `creature` 
(`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES
-- Rockjaw Flameweaver - 10 spawns
(9001530, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5864.65, 901.344, 486.264, 5.25389, 1800, 10.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001531, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5928.13, 820.179, 489.92, 4.50184, 1800, 10.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001532, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5925.33, 812.428, 486.264, 4.75053, 1800, 10.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001533, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5817.93, 757.444, 486.265, 2.80934, 1800, 10.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001551, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5922.39, 714.75, 486.267, 1.2123, 1800, 10.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001558, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5982.42, 650.495, 484.275, 0.897203, 1800, 4.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001568, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5898.41, 584.142, 503.331, 3.65269, 1800, 10.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001571, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5926.62, 539.214, 504.492, 0.337282, 1800, 10.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001572, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5880.47, 527.585, 508.564, 2.46273, 1800, 0.0, 0, 114702, 95080, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001582, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5935.2, 428.145, 507.342, 0.377016, 1800, 8.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001584, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5912.56, 753.249, 486.267, 1.57066, 1800, 7.0, 0, 114702, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001585, 600673, 0, 0, 909, 0, 0, 1, 1, 1, -5927.01, 872.288, 486.264, 5.48509, 1800, 8.0, 0, 111732, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Rockjaw Seer - 8 spawns
(9001537, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5929.31, 838.868, 486.264, 4.39286, 1800, 10.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001538, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5920.74, 772.636, 489.71, 4.27674, 1800, 10.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001539, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5789.02, 879.802, 484.604, 2.9482, 1800, 10.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001552, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5867.94, 737.816, 486.267, 0.415203, 1800, 15.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001560, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5996.41, 679.233, 484.036, 4.61017, 1800, 5.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001567, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5922.2, 553.235, 504.545, 3.16001, 1800, 10.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001574, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5921.23, 486.077, 510.753, 4.42811, 1800, 8.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001579, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5933.88, 447.061, 508.835, 2.09138, 1800, 0.0, 0, 219037, 42620, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001586, 600674, 0, 0, 909, 0, 0, 1, 1, 1, -5880.91, 818.784, 486.264, 3.66657, 1800, 6.0, 0, 219037, 42620, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Rockjaw Backbreaker - 7 spawns
(9001534, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5947.55, 828.712, 489.823, 4.55572, 1800, 10.0, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001535, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5860.0, 867.992, 486.262, 0.335253, 1800, 10.0, 0, 427028, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001536, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5958.63, 857.864, 488.607, 2.36681, 1800, 10.0, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001553, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5900.42, 714.621, 486.267, 4.23915, 1800, 0.0, 0, 416160, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001554, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5867.32, 705.859, 486.267, 0.0602062, 1800, 10.0, 0, 438064, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001555, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5837.37, 734.235, 486.267, 0.578255, 1800, 10.0, 0, 427028, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001570, 600675, 0, 0, 909, 0, 0, 1, 1, 1, -5934.15, 518.698, 506.229, 2.45487, 1800, 10.0, 0, 416160, 0, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Rockjaw Shaman - 7 spawns
(9001547, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -5861.31, 801.854, 486.215, 1.91461, 1800, 10.0, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001548, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -5900.28, 787.961, 486.261, 4.43275, 1800, 0.0, 0, 188408, 96870, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001549, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -5889.2, 738.956, 486.265, 4.20844, 1800, 10.0, 0, 188408, 96870, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001550, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -5932.42, 679.922, 486.27, 3.87598, 1800, 10.0, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001561, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -6002.71, 661.843, 482.178, 0.0360135, 1800, 3.0, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001565, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -5920.58, 584.951, 503.688, 4.26821, 1800, 10.0, 0, 183524, 95080, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001566, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -5892.1, 546.923, 504.429, 3.15467, 1800, 10.0, 0, 178772, 93300, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001575, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -5934.89, 492.772, 510.662, 0.142187, 1800, 0.0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001581, 600676, 0, 0, 909, 0, 0, 1, 1, 1, -5919.56, 468.644, 516.45, 2.89383, 1800, 0.0, 0, 178772, 93300, 0, 0, 0, 0, '', NULL, 0, NULL),

-- Rockjaw Raider - 5 spawns
(9001546, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5840.75, 790.747, 486.306, 1.46732, 1800, 10.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001562, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5940.52, 664.349, 486.264, 4.88506, 1800, 10.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001569, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5908.37, 553.658, 502.31, 4.55244, 1800, 10.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001580, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5946.55, 452.903, 508.827, 6.04751, 1800, 0.0, 0, 242314, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001583, 600677, 0, 0, 909, 0, 0, 1, 1, 1, -5911.37, 625.373, 499.63, 3.30773, 1800, 7.0, 0, 242314, 0, 1, 0, 0, 0, '', NULL, 0, NULL),

-- Rockjaw Brawler - 12 spawns
(9001540, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5764.57, 881.352, 481.805, 2.93468, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001541, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5830.35, 879.562, 486.237, 3.88399, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001542, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5900.64, 883.301, 486.261, 3.75582, 1800, 8.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001543, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5878.34, 841.708, 486.261, 4.42992, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001544, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5882.02, 783.908, 486.261, 4.47398, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001545, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5847.88, 766.018, 486.265, 5.97606, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001556, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5888.24, 686.586, 486.27, 4.19776, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001557, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5981.7, 669.751, 482.103, 5.66763, 1800, 3.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001563, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5894.49, 625.083, 503.444, 5.23755, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001564, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5924.65, 611.99, 503.127, 4.01986, 1800, 10.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001573, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5909.9, 516.51, 505.917, 3.96079, 1800, 6.0, 0, 573903, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(9001577, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5930.88, 453.534, 509.402, 2.55603, 1800, 0.0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9001578, 600678, 0, 0, 909, 0, 0, 1, 1, 0, -5941.22, 456.485, 508.792, 5.97675, 1800, 0.0, 0, 573903, 0, 0, 0, 0, 0, '', NULL, 0, NULL),

-- Grurvuch (Boss) - 1 spawn
(9001576, 600679, 0, 0, 909, 0, 0, 1, 1, 1, -5941.19, 444.742, 508.792, 1.45584, 1800, 0.0, 0, 846260, 0, 0, 0, 0, 0, '', NULL, 0, NULL),

-- Scervig (Boss) - 1 spawn
(9001559, 600680, 0, 0, 909, 0, 0, 1, 1, 1, -6005.29, 665.406, 485.583, 5.85856, 1800, 0.0, 0, 659440, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

-- ==================================================================================
-- SMART SCRIPTS (AI)
-- ==================================================================================

DELETE FROM smart_scripts WHERE entryorguid IN (600673, 600674, 600675, 600676, 600677, 600678) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid,source_type,id,link,event_type,event_phase_mask,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,event_param5,event_param6,action_type,action_param1,action_param2,action_param3,action_param4,action_param5,action_param6,target_type,target_param1,target_param2,target_param3,target_param4,target_x,target_y,target_z,target_o,comment) VALUES
-- Rockjaw Flameweaver
(600673,0,0,0,0,0,100,0,4000,10000,7000,14000,0,0,11,2941,0,0,0,0,0,5,30,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Flameweaver - In Combat - Cast ''Immolate'''),
(600673,0,1,0,0,0,100,0,1000,9000,17000,25000,0,0,11,7739,0,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Flameweaver - In Combat - Cast ''Inferno Shell'''),
(600673,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Flameweaver - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Rockjaw Seer
(600674,0,0,0,0,0,100,0,0,0,3600,4800,0,0,11,9532,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Seer - In Combat - Cast ''Lightning Bolt'''),
(600674,0,1,0,74,0,80,1,0,0,0,0,40,0,11,11986,1,0,0,0,0,9,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Seer - On Friendly Below 40% Health - Cast ''Healing Wave'' (No Repeat)'),
(600674,0,2,0,2,0,100,1,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Seer - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Rockjaw Backbreaker
(600675,0,0,1,2,0,100,1,0,20,0,0,0,0,11,3019,0,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Backbreaker - Between 0-20% Health - Cast ''Frenzy'' (No Repeat)'),

-- Rockjaw Shaman
(600676,0,0,0,0,0,100,0,0,0,3400,4800,0,0,11,15801,64,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Shaman - In Combat - Cast ''Lightning Bolt'''),
(600676,0,1,0,0,0,100,0,7000,9000,55000,65000,0,0,11,15786,1,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Shaman - In Combat - Cast ''Earthbind Totem'''),
(600676,0,2,0,2,0,100,0,0,50,15000,20000,0,0,11,12492,1,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Shaman - Between 0-50% Health - Cast ''Healing Wave'''),
(600676,0,3,0,2,0,100,0,0,15,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Shaman - Between 0-15% Health - Flee For Assist'),

-- Rockjaw Raider
(600677,0,0,0,0,0,100,2,4000,6000,7000,9000,0,0,11,12057,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Raider - In Combat - Cast ''Strike'' (Normal Dungeon)'),
(600677,0,1,0,0,0,100,2,9000,13000,18000,34000,0,0,11,16509,0,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Raider - In Combat - Cast ''Rend'' (Normal Dungeon)'),
(600677,0,2,0,0,0,100,2,2000,4000,14000,18000,0,0,11,9080,1,0,0,0,0,2,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Raider - In Combat - Cast ''Hamstring'' (Normal Dungeon)'),

-- Rockjaw Brawler
(600678,0,0,0,25,0,100,0,0,0,0,0,0,0,11,3417,0,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Brawler - On Reset - Cast ''Thrash'''),
(600678,0,1,0,2,0,100,1,0,30,0,0,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0.0,0.0,0.0,0.0,'Rockjaw Brawler - Between 0-30% Health - Cast ''Enrage'' (No Repeat)');

-- ==================================================================================
-- END OF FORGOTTEN GNOME CAMP DELVE EXPORT
-- ==================================================================================