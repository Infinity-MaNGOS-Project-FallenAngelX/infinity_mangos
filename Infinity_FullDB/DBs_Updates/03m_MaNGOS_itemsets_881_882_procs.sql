INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES ('69755', '45');
INSERT INTO `spell_bonus_data` (`entry`, `comments`) VALUES ('69733', 'Cauterizing Heal');
INSERT INTO `spell_bonus_data` (`entry`, `comments`) VALUES ('69729', 'Searing Flames');

INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES ('69739', '45');
INSERT INTO `spell_bonus_data` (`entry`, `comments`) VALUES ('69734', 'Cauterizing Heal');
INSERT INTO `spell_bonus_data` (`entry`, `comments`) VALUES ('69730', 'Searing Flames');

--- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r02 r03 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r03');

UPDATE db_version SET `cache_id`= 'r03';
UPDATE db_version SET `version`= 'YTDB572_Infinity_Update_r03';