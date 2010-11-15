/* Refurbished Shredder */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27496);
INSERT INTO npc_spellclick_spells VALUES (27496, 60944, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27496, 0, 0, 0, 0, 0, 55, NULL, NULL);
REPLACE INTO vehicle_data VALUES (55, 4, 48548, 48604, 48558, 0, 48610, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (922, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (27496);
