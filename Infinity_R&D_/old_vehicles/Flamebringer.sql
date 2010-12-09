/* Flamebringer */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27292);
INSERT INTO npc_spellclick_spells VALUES (27292, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27292, 0, 0, 0, 0, 0, 50, NULL, NULL);
REPLACE INTO vehicle_data VALUES (50, 4, 48619, 48620, 52812, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (841, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (27292);
