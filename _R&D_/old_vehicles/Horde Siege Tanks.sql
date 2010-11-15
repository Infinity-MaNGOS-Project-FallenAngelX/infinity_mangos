/* Horde Siege Tanks */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (25334);
INSERT INTO npc_spellclick_spells VALUES (25334, 43695, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (25334, 0, 0, 0, 0, 0, 26, NULL, NULL);
REPLACE INTO vehicle_data VALUES (26, 4, 50672, 45750, 50677, 47849, 47962, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (365,3),(366,6),(367,6),(368,6);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry = 25334;
