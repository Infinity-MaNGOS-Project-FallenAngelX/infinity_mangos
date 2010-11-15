/* Steel Gate Flying Machine */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (24418);
INSERT INTO npc_spellclick_spells VALUES (24418, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (24418, 0, 0, 0, 0, 0, 8, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (8, 4, 44009, 43770, 43799, 43769, 47769, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (261, 3),(461, 2);
UPDATE creature_template SET IconName = 'vehichleCursor', InhabitType = 3 WHERE entry IN (24418);
