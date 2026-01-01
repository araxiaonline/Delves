INSERT INTO creature_template (entry,difficulty_entry_1,difficulty_entry_2,difficulty_entry_3,KillCredit1,KillCredit2,name,subname,IconName,gossip_menu_id,minlevel,maxlevel,`exp`,faction,npcflag,speed_walk,speed_run,speed_swim,speed_flight,detection_range,`scale`,`rank`,dmgschool,DamageModifier,BaseAttackTime,RangeAttackTime,BaseVariance,RangeVariance,unit_class,unit_flags,unit_flags2,dynamicflags,family,trainer_type,trainer_spell,trainer_class,trainer_race,`type`,type_flags,lootid,pickpocketloot,skinloot,PetSpellDataId,VehicleId,mingold,maxgold,AIName,MovementType,HoverHeight,HealthModifier,ManaModifier,ArmorModifier,ExperienceModifier,RacialLeader,movementId,RegenHealth,mechanic_immune_mask,spell_school_immune_mask,flags_extra,ScriptName,VerifiedBuild) VALUES
	 (600662,0,0,0,0,0,'Nessie','Delve Boss',NULL,0,84,84,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,3,0,35.0,2000,2000,1.0,1.0,1,32768,2048,0,0,0,0,0,0,1,4,600662,0,0,0,0,0,0,'',1,1.0,100.0,1.0,1.0,1.0,0,0,1,617299803,0,2,'',12340),
	 (600663,0,0,0,0,0,'Ruin Smasher X-98','Delve Boss',NULL,0,85,85,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,3,0,36.9,2000,2000,1.0,1.0,1,64,2048,0,0,0,0,0,0,9,4,600663,0,0,0,0,0,0,'',1,1.0,78.6,20.0,1.2,2.0,0,0,1,608908883,0,0,'',12340),
	 (600664,0,0,0,0,0,'Foreman Glitzbolt','Delve Boss',NULL,0,85,85,0,168,0,1.0,1.14286,1.0,1.0,20.0,1.0,3,0,41.0,2000,2000,1.0,1.0,2,0,2048,0,0,0,0,0,0,7,4,600664,600664,0,0,0,57,311,'',0,1.0,87.6,20.0,1.1,1.0,0,0,1,0,0,0,'',12340);

INSERT INTO creature_template_model (CreatureID,Idx,CreatureDisplayID,DisplayScale,Probability,VerifiedBuild) VALUES
	 (600662,0,15288,1.0,1.0,12340),
	 (600663,0,6774,1.8,1.0,12340),
	 (600664,0,7207,1.3,1.0,12340);

INSERT INTO creature_template_spell (CreatureID,`Index`,Spell,VerifiedBuild) VALUES
	 (600663,0,16169,12340),
	 (600663,1,5568,12340),
	 (600663,2,10887,12340),
	 (600664,0,9532,12340),
	 (600664,1,4979,12340),
	 (600664,2,184,12340);

INSERT INTO creature_onkill_reputation (creature_id,RewOnKillRepFaction1,RewOnKillRepFaction2,MaxStanding1,IsTeamAward1,RewOnKillRepValue1,MaxStanding2,IsTeamAward2,RewOnKillRepValue2,TeamDependent) VALUES
	 (600664,21,0,5,0,5.0,0,0,0.0,0);

INSERT INTO creature_equip_template (CreatureID,ID,ItemID1,ItemID2,ItemID3,VerifiedBuild) VALUES
	 (600664,1,3361,0,0,18019);

INSERT INTO creature_loot_template (Entry,Item,Reference,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) VALUES
	 (600662,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
	 (600662,43949,0,100.0,0,1,0,1,2,'Delve Token'),
	 (600663,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
	 (600663,43949,0,100.0,0,1,0,1,2,'Delve Token'),
	 (600664,0,100500,100.0,0,1,0,1,1,'Custom Boss Loot'),
	 (600664,43949,0,100.0,0,1,0,1,2,'Delve Token');

INSERT INTO creature (id1,id2,id3,`map`,zoneId,areaId,spawnMask,phaseMask,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,wander_distance,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags,ScriptName,VerifiedBuild,CreateObject,Comment) VALUES
	 (600662,0,0,900,0,0,1,1,0,2773.29,2301.8,191.904,0.0884714,1800,15.0,0,595700,0,1,0,0,0,'',NULL,0,NULL),
	 (600663,0,0,900,0,0,1,1,0,2866.05,2296.91,203.115,3.87801,1800,0.0,0,481032,0,0,0,0,0,'',NULL,0,NULL),
	 (600664,0,0,900,0,0,1,1,1,2929.01,2522.82,139.353,0.548201,300,0.0,0,428978,89000,0,0,0,0,'',NULL,0,NULL);

