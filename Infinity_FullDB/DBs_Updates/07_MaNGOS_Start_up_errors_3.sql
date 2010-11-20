UPDATE creature_ai_scripts SET action1_param1 = 59246 WHERE id = 2669101;
UPDATE creature_ai_scripts SET action1_param1 = 59246 WHERE id = 2669101;
UPDATE `creature_ai_texts` SET `content_default`='Tharon ja sees all! The work of mortals shall not end the eternal dynasty!' WHERE `entry`='-688';
UPDATE `creature_ai_texts` SET `content_default`='Im... impossible! Tharon ja is eternal! Tharon ja... is...' WHERE `entry`='-689';
UPDATE `creature_ai_texts` SET `content_default`='As Tharon ja predicted.' WHERE `entry`='-690';
UPDATE `creature_ai_texts` SET `content_default`='As it was written.' WHERE `entry`='-691';
UPDATE `creature_ai_texts` SET `content_default`='Your flesh serves Tharon ja now!' WHERE `entry`='-692';
UPDATE `creature_ai_texts` SET `content_default`='Tharon ja has a use for your mortal shell!' WHERE `entry`='-693';
DELETE FROM `spell_proc_event` WHERE (`entry`='48495'); 
DELETE FROM `spell_proc_event` WHERE (`entry`='48494'); 
DELETE FROM `spell_proc_event` WHERE (`entry`='44545');



--- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r06 r07 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r07');

UPDATE db_version SET `cache_id`= 'r07';
UPDATE db_version SET `version`= 'YTDB573_Infinity_Update_r07';