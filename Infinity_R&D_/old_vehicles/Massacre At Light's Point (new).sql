/* Massacre At Light's Point (new) */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (28887,28833,28864);
INSERT INTO npc_spellclick_spells VALUES (28833,52447,12701,1,12701,1),(28887,52447,12701,1,12701,1),(28864,67373,0,0,0,1);
REPLACE INTO creature_template_addon VALUES (28887,0,0,2049,0,0,79,'',''),(28833,0,0,2049,0,0,79,'',''),(28864,0,0,0,0,0,143,NULL,'48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (143,12,0,0,0,0,0,0,0,0,0,0,0),(79,5,52435,52576,52588,0,0,0,0,0,0,0,0);
REPLACE INTO vehicle_seat_data VALUES (1427, 3),(1902, 3);
UPDATE creature_template SET IconName = 'vehichleCursor', InhabitType = 3 WHERE entry IN (28887,28833,28864);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28887,28833,28864));
