/* Enraged Mammoth */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (28851);
INSERT INTO npc_spellclick_spells VALUES (28851, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (28851, 0, 0, 0, 0, 0, 145, NULL, NULL);
REPLACE INTO vehicle_data VALUES (145, 4, 52603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (1906, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (28851);
