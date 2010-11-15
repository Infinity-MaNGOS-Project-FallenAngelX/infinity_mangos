/* Rocket Propelled Warhead */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27593);
INSERT INTO npc_spellclick_spells VALUES (27593, 49177, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27593, 0, 0, 0, 0, 0, 57, NULL, NULL);
REPLACE INTO vehicle_data VALUES (57, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (961, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (27593);
