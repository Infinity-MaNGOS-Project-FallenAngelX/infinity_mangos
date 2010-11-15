/* Onslaught Warhorse */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27213);
INSERT INTO npc_spellclick_spells VALUES (27213, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27213, 0, 0, 0, 0, 0, 43, NULL, NULL);
REPLACE INTO vehicle_data VALUES (43, 4, 48297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (742, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry = 27213;
