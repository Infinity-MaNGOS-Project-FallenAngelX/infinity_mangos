-- aldaron the reckless loc fix Blood elf starting area fix
DELETE FROM `creature` WHERE `id`=16294;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4457369, 16294, 530, 1, 1, 0, 160, 8780.36, -6101.31, 72.6879, 3.2764, 25, 0, 0, 148, 825, 0, 0);

--- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r08 r09 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r09');

UPDATE db_version SET `cache_id`= 'r08';
UPDATE db_version SET `version`= 'YTDB574_Infinity_Update_r09';