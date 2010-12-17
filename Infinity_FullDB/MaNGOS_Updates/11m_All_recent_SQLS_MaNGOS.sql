ALTER TABLE db_version CHANGE COLUMN required_10835_01_mangos_spell_proc_event required_10863_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (38332,40971,60517,75490,75495);
INSERT INTO spell_proc_event VALUES
(38332, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(40971, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(60517, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(75490, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(75495, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_10863_01_mangos_spell_proc_event required_10864_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (69755,69739);
INSERT INTO spell_proc_event VALUES
(69755, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(69739, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);

-- from lanc
-- Refurbished Shredder (quest 12050)
UPDATE `creature_template` SET
spell1 = 47938,
spell2 = 47921,
spell3 = 47939,
spell4 = 0,
spell5 = 0,
spell6 = 0,
VehicleId = 55
WHERE `entry` IN (27061);

DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (27061);
INSERT INTO `npc_spellclick_spells` VALUES (27061, 67373, 0, 0, 0, 1);
REPLACE INTO `spell_script_target` VALUES (47939, 2, 188539);

-- from Lordron
-- Spectral tiger
UPDATE `creature_template` SET `VehicleId` = 354 WHERE `entry` = 33357;

UPDATE `creature_template` SET `VehicleId` = 639, `AIName`='', `PowerType` = 3, `faction_A` = '14', `faction_H` = '14', `ScriptName`='boss_deathbringer_saurfang' WHERE `entry`=37813;
DELETE FROM `spell_script_target` WHERE `entry` IN (72260, 72202);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('72202', '1', '37813');

-- Abomination
DELETE FROM `creature_template_addon` WHERE (`entry`=37672);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (37672, '70385 0 70405 0');
UPDATE `creature_template` SET `VehicleId`=587 WHERE `entry` in (36678,38431,38585,38586);
UPDATE `creature_template` SET `VehicleId`=591 WHERE `entry` in (37672,38605,38786,38787);
INSERT INTO `spell_script_target` VALUES (70360,1,37690);

ALTER TABLE db_version CHANGE COLUMN required_10864_01_mangos_spell_proc_event required_10867_01_mangos_npc_trainer_template bit;

DROP TABLE IF EXISTS `npc_trainer_template`;
CREATE TABLE `npc_trainer_template` (
 `entry` mediumint(8) unsigned NOT NULL default '0',
 `spell` mediumint(8) unsigned NOT NULL default '0',
 `spellcost` int(10) unsigned NOT NULL default '0',
 `reqskill` smallint(5) unsigned NOT NULL default '0',
 `reqskillvalue` smallint(5) unsigned NOT NULL default '0',
 `reqlevel` tinyint(3) unsigned NOT NULL default '0',
 UNIQUE KEY `entry_spell` (`entry`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE db_version CHANGE COLUMN required_10867_01_mangos_npc_trainer_template required_10867_02_mangos_creature_template bit;

ALTER TABLE creature_template
ADD COLUMN trainer_id mediumint(8) unsigned NOT NULL default '0' AFTER equipment_id;

-- Ferocious Inspiration
DELETE FROM `spell_pet_auras` WHERE `spell` IN ('34455','34459','34460');
INSERT INTO `spell_pet_auras` (`spell`, `effectId`, `pet`, `aura`) VALUES
('34455','0','0','75593'),
('34459','0','0','75446'),
('34460','0','0','75447');

--- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r10 r11 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r11');

UPDATE db_version SET `cache_id`= 'r11';
UPDATE db_version SET `version`= 'YTDB576_Infinity_Update_r11';