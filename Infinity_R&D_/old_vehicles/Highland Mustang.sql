/* Highland Mustang */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (26472);
INSERT INTO npc_spellclick_spells VALUES (26472, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (26472, 0, 0, 0, 0, 0, 62, NULL, NULL);
REPLACE INTO vehicle_data VALUES (62, 4, 49285, 29577, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (1270, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (26472);
