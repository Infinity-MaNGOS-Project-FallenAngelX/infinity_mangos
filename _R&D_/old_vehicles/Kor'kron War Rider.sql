/* Kor'kron War Rider */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (26813);
INSERT INTO npc_spellclick_spells VALUES (26813, 47424, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (26813, 0, 0, 0, 0, 0, 80, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (80, 4, 47434, 63507, 47454, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (1431, 3),(1432, 2);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (26813);
UPDATE creature_template SET modelid_2 = 0 WHERE entry = 26813;

/* Kor'kron War Rider II */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (26572);
INSERT INTO npc_spellclick_spells VALUES (26572, 47424, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (26572, 0, 0, 0, 0, 0, 34, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (34, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (601, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (26572);
