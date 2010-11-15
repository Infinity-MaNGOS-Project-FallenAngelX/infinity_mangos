/* Broken-down Shredder */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27354);
INSERT INTO npc_spellclick_spells VALUES (27354, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27354, 0, 0, 0, 0, 0, 49, NULL, NULL);
REPLACE INTO vehicle_data VALUES (49, 4, 48558, 48604, 48548, 0, 48610, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (821, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (27354);
