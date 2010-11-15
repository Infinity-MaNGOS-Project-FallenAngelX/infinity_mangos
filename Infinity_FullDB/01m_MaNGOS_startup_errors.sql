-- Start_Errors for After build from rsa
-- script name errors 
UPDATE creature_template SET ScriptName='npc_amanitar_mushroom' WHERE entry IN (30391, 30435);
UPDATE creature_template SET ScriptName='boss_amanitar' WHERE entry = 30258;
UPDATE creature_template SET ScriptName='mob_flame_orb' WHERE entry=30702;
UPDATE creature_template SET ScriptName='npc_twilight_volunteer' WHERE entry=30385;
UPDATE creature_template SET ScriptName='mob_twisted_visage' WHERE entry=30621;
UPDATE creature_template SET ScriptName='mob_ancient_void' WHERE entry=30622;
UPDATE creature_template SET ScriptName='mob_tribuna_controller' WHERE entry=28234;
UPDATE creature_template SET ScriptName='mob_dark_rune_acolyte' WHERE entry=33110;
UPDATE creature_template SET ScriptName='mob_dark_rune_evoker' WHERE entry=32878;
UPDATE creature_template SET ScriptName='mob_ancient_void' WHERE entry =30622;
UPDATE creature_template SET ScriptName='mob_boombot' WHERE entry=33346;
UPDATE creature_template SET ScriptName='mob_orange_gas_stalker' WHERE entry=36659;
UPDATE creature_template SET Scriptname='boss_krick' WHERE entry=36477;
UPDATE creature_template SET ScriptName='boss_ick' WHERE entry=36476;
UPDATE creature_template SET ScriptName='mob_exploding_orb' WHERE entry=36610;
UPDATE creature_template SET ScriptName='boss_scourgelord_tyrannus' WHERE entry=36658;
UPDATE creature_template SET ScriptName = 'mob_assault_bot' WHERE entry = 34057;
UPDATE creature_template SET ScriptName = 'mob_dark_rune_acolyte' WHERE entry = 33110;
UPDATE `creature_template` SET `ScriptName`='mob_rimefang_pos', `AIName` ='' WHERE `entry`=36661;
UPDATE `creature_template` SET `ScriptName`='npc_jaina_or_sylvanas_POSintro', `AIName` ='' WHERE `entry` IN (36990,36993);
UPDATE `creature_template` SET `ScriptName`='npc_jaina_or_sylvana_POSoutro', `AIName` ='' WHERE `entry` IN (38189,38188);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_watchman' where `entry` IN (36478);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_reaper' where `entry` IN (36499);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_adept' where `entry` IN (36620);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_bonecaster' where `entry` IN (36564);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soulguard_animator' where `entry` IN (36516);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_soul_horror' where `entry` IN (36522);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_spectral_warden' where `entry` IN (36666);
UPDATE creature_template SET ScriptName = 'mob_dark_rune_acolyte' WHERE entry = 33110;
UPDATE creature_template SET ScriptName='mob_dark_rune_evoker' WHERE entry=32878;

-- creatures errors
UPDATE `creature_template` SET `minhealth` = 5647 WHERE `entry` = 33413;
UPDATE `creature_template` SET `minhealth` = 1 WHERE `entry` = 30258;
UPDATE `creature_template` SET `minhealth` = 5647 WHERE `entry` = 33411;
UPDATE `creature_template` SET `minhealth` = 5647 WHERE `entry` = 33410;
UPDATE `creature_template` SET `minhealth` = 5647 WHERE `entry` = 32938;
UPDATE `creature_template` SET `minhealth` = 5647 WHERE `entry` = 32897;
UPDATE `creature_template` SET `minhealth` = 5647, `minmana` = 0 WHERE `entry` = 32897;
UPDATE `creature_template` SET `minhealth` = 5647, `minmana` = 0 WHERE `entry` = 33327;
UPDATE `creature_template` SET `minhealth` = 1 WHERE `entry` = 30391;
UPDATE `creature_template` SET `minhealth` = 50400 WHERE `entry` = 34004;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 38160;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 38161;
UPDATE `creature_template` SET `minhealth` = 5647 WHERE `entry` = 33412;

UPDATE `creature_template` SET `lootid` = 26627 WHERE `entry` = 26627;
UPDATE `creature_template` SET `lootid` = 29940 WHERE `entry` = 29940;
UPDATE `creature_template` SET `lootid` = 31360 WHERE `entry` = 31360;

UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 27641;
UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 32938;
UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 33271;
UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 33768;

DELETE FROM `pool_creature` WHERE (`guid`='47738');
DELETE FROM `creature_addon` WHERE (`guid`='115064');

DELETE FROM `creature` WHERE `id`=28439;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456389, 28439, 595, 2, 1, 0, 0, 2336.56, 1277.9, 132.885, 3.47923, 25, 0, 0, 1, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=27892;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456387, 27892, 595, 3, 1, 0, 0, 1602.3, 809.385, 123.454, 5.02884, 25, 0, 0, 8982, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=32273;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456388, 32273, 595, 2, 1, 0, 1839, 2330.93, 1275.59, 132.848, 3.60489, 86400, 0, 0, 417911, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=26528;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456385, 26528, 595, 3, 1, 0, 1819, 1761.42, 1285.75, 139.945, 4.93874, 25, 0, 0, 126000, 59910, 0, 0);

DELETE FROM `creature` WHERE `id`=33134;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(131859, 33134, 603, 3, 1, 0, 0, 1980.28, -25.5868, 329.397, 3.12414, 604800, 0, 0, 199999, 212900, 0, 0);

DELETE FROM `creature` WHERE `id`=27891;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456386, 27891, 595, 3, 1, 0, 0, 1603.38, 805.988, 123.272, 1.90688, 25, 0, 0, 8982, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=26497;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456384, 26497, 595, 3, 1, 0, 1221, 1896.39, 1292.91, 143.711, 0.016332, 25, 0, 0, 100800, 88140, 0, 0);

UPDATE creature_ai_scripts SET event_param2 = -1 WHERE id = 3017611;
UPDATE creature_ai_scripts SET event_flags = 2 WHERE id = 1642701;
UPDATE creature_ai_scripts SET event_flags = 4 WHERE id = 1642702;

UPDATE `mangos`.`creature_template_addon` SET `auras`='' WHERE `entry`='37970';
UPDATE `mangos`.`creature_template_addon` SET `auras`='' WHERE `entry`='37972';
UPDATE `mangos`.`creature_template_addon` SET `auras`='' WHERE `entry`='37973' 

--- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r00 r01 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r01');

UPDATE db_version SET `cache_id`= 'r01';
UPDATE db_version SET `version`= 'YTDB572_Infinity_Update_r01';