/* Wyrmrest Vanquisher */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27996);
INSERT INTO npc_spellclick_spells VALUES (27996, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27996, 0, 50331648, 1, 0, 0, 99, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (99, 4, 50430, 55987, 50348, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (1520, 3),(1521, 8);
UPDATE creature_template SET IconName = 'vehichleCursor', InhabitType = 3 WHERE entry IN (27996);
