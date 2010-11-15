/* 7th Legion Chain Gun */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27714);
INSERT INTO npc_spellclick_spells VALUES (27714, 67373, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (27714, 0, 0, 0, 0, 0, 68, NULL, NULL);
REPLACE INTO vehicle_data VALUES (68, 5, 49190, 49550, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (1301, 3);
UPDATE creature_template SET IconName = 'Gunner' WHERE entry IN (27714);
