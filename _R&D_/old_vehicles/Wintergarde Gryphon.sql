/* Wintergarde Gryphon */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27258);
INSERT INTO npc_spellclick_spells VALUES (27258, 49288, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27258, 0, 0, 0, 0, 0, 44, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (44, 4, 48363, 48397, 54170, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (762, 3),(764, 2);
UPDATE creature_template SET IconName = 'vehichleCursor', InhabitType = 3 WHERE entry IN (27258);

/* Wintergarde Gryphon II, Into Hostile Territory quest */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27661);
INSERT INTO npc_spellclick_spells VALUES (27661, 48862, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27661, 0, 0, 0, 0, 0, 61, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (61, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (1267, 3),(1268, 2);
UPDATE creature_template SET IconName = 'vehichleCursor', InhabitType = 3 WHERE entry IN (27661);
