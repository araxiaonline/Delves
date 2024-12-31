DELETE FROM `gameobject_template` WHERE (`entry` = 130000);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(130000, 3, 259, 'Delve Chest', '', '', '', 1, 57, 110000, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);


DELETE FROM `gameobject_loot_template` WHERE (`Entry` = 110000);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(110000, 910001, 0, 50, 0, 1, 0, 1, 2, 'Araxia Token'),
(110000, 910900, 0, 100, 0, 1, 1, 1, 3, 'Delve Token'),
(110000, 911000, 0, 25, 0, 1, 0, 1, 3, 'Dice');
