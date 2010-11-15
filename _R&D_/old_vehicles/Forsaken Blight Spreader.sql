/* Forsaken Blight Spreader */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (26523);
INSERT INTO npc_spellclick_spells VALUES (26523, 47961, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (26523, 0, 0, 0, 0, 0, 36, NULL, NULL);
REPLACE INTO vehicle_data VALUES (36, 4, 48211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (644, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry = 26523;
