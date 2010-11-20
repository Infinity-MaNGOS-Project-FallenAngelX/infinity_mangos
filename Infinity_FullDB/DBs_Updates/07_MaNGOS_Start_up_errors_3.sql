UPDATE creature_ai_scripts SET action1_param1 = 59246 WHERE id = 2669101;
UPDATE creature_ai_scripts SET action1_param1 = 59246 WHERE id = 2669101;
DELETE FROM `spell_proc_event` WHERE (`entry`='48495'); 
DELETE FROM `spell_proc_event` WHERE (`entry`='48494'); 
DELETE FROM `spell_proc_event` WHERE (`entry`='44545');

INSERT INTO creature_ai_texts (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES (-688, 'Tharon ja sees all! The work of mortals shall not end the eternal dynasty!', '0', '0', '0', 'insert comment here (optional)');
INSERT INTO creature_ai_texts (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES (-689, 'Im... impossible! Tharon ja is eternal! Tharon ja... is...', '0', '0', '0', 'insert comment here (optional)');
INSERT INTO creature_ai_texts (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES (-690, 'As Tharon ja predicted.', '0', '0', '0', 'insert comment here (optional)');
INSERT INTO creature_ai_texts (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES (-691, 'As it was written.', '0', '0', '0', 'insert comment here (optional)');
INSERT INTO creature_ai_texts (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES (-692, 'Your flesh serves Tharon ja now!', '0', '0', '0', 'insert comment here (optional)');
INSERT INTO creature_ai_texts (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) VALUES (-693, 'Tharon ja has a use for your mortal shell!', '0', '0', '0', 'insert comment here (optional)');

--- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r06 r07 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r07');

UPDATE db_version SET `cache_id`= 'r07';
UPDATE db_version SET `version`= 'YTDB573_Infinity_Update_r07';