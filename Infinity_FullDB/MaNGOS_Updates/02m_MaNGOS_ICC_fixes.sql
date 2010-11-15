-- icc fixes
UPDATE `creature_template` SET `dynamicflags` = 0 WHERE `entry` = 37970;
UPDATE `creature_template` SET `dynamicflags` = 0 WHERE `entry` = 37972;
UPDATE `creature_template` SET `dynamicflags` = 0 WHERE `entry` = 37973;

DELETE FROM `creature_template_addon` WHERE (`entry`=37970);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (37970, 0, 0, 0, 0, 0, '71598 0 71598 1');

DELETE FROM `creature_template_addon` WHERE (`entry`=37972);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (37972, 0, 0, 0, 0, 0, '71598 0 71598 1');

DELETE FROM `creature_template_addon` WHERE (`entry`=37973);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (37973, 0, 0, 0, 0, 0, '71598 0 71598 1');

UPDATE `creature_template` SET `unit_flags` = 33088 WHERE `entry` = 37970;
UPDATE `creature_template` SET `unit_flags` = 33088 WHERE `entry` = 37972;
UPDATE `creature_template` SET `unit_flags` = 33088 WHERE `entry` = 37973;

DELETE FROM `creature_template_addon` WHERE (`entry`=37134);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (37134, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE (`entry`=37133);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (37133, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE (`entry`=37132);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (37132, 0, 0, 0, 333, 0, '');

--- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r01 r02 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r02');

UPDATE db_version SET `cache_id`= 'r02';
UPDATE db_version SET `version`= 'YTDB572_Infinity_Update_r02';