
CREATE TABLE IF NOT EXISTS `mail_external` ( 
`id` bigint(20) unsigned NOT NULL auto_increment, 
`receiver` bigint(20) unsigned NOT NULL, 
`subject` varchar(200) default 'Support Message', 
`message` varchar(500) default 'Support Message', 
`money` bigint(20) unsigned NOT NULL default '0', 
PRIMARY KEY  (`id`) 
) ENGINE=MyISAM  DEFAULT CHARSET=utf8; 

CREATE TABLE IF NOT EXISTS `mail_external_items` ( 
`id` int(10) unsigned NOT NULL auto_increment, 
`mail_id` int(10) unsigned NOT NULL, 
`item` int(11) NOT NULL, 
`count` int(11) NOT NULL, 
PRIMARY KEY  (`id`) 
) ENGINE=MyISAM  DEFAULT CHARSET=latin1; 



--- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r05 r06 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r06');

UPDATE db_version SET `cache_id`= 'r06';
UPDATE db_version SET `version`= 'YTDB573_Infinity_Update_r06';