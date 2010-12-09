/* Wooly Mammoth Bull */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (25743);
INSERT INTO npc_spellclick_spells VALUES (25743, 43695, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (25743, 0, 0, 0, 0, 0, 72, NULL, NULL);
REPLACE INTO vehicle_data VALUES (72, 12, 46317, 46315, 46316, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (1362, 3);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (25743);
UPDATE creature_template SET faction_A = 7, faction_H = 7 WHERE entry IN (25743);
