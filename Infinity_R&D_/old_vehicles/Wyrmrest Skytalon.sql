/* Wyrmrest Skytalon */
DELETE FROM npc_spellclick_spells WHERE npc_entry = 32535;
INSERT INTO npc_spellclick_spells VALUES (32535, 61245, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (32535, 0, 0, 0, 0, 0, 165, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (165, 12, 56091, 61621, 57090, 57143, 57108, 57092, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (2061, 3);
UPDATE creature_template SET IconName = 'vehichleCursor', InhabitType = 3 WHERE entry = 32535;

/* Aces High! quests */
REPLACE INTO gossip_scripts VALUES (32548,0,15,61287,1,0,0,0,0,0,0,0,0);
REPLACE INTO gossip_menu_option VALUES (10204,1,0,'I am ready Lady Corastrasza.',1,1,0,0,32548,0,0,NULL,9,13413,0,0,0,0,0,0,0);
REPLACE INTO gossip_menu_option VALUES (10204,2,0,'I am ready Lady Corastrasza.',1,1,0,0,32548,0,0,NULL,9,13414,0,0,0,0,0,0,0);
