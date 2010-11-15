/* Wintergrasp Tower Cannon (new) */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (28366);
INSERT INTO npc_spellclick_spells VALUES (28366, 60968, 0, 0, 0, 1);
REPLACE INTO creature_template_addon VALUES (28366, 0, 0, 0, 0, 0, 244, NULL, NULL);
REPLACE INTO vehicle_data VALUES (244, 5, 51362, 51421, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (2283, 3);

/* Ulduar Salvaged vehicles (fixes) */
UPDATE creature_model_info SET bounding_radius = '0.306' WHERE modelid IN (25870,25871);
UPDATE creature_template SET IconName = 'Gunner' WHERE entry = 33167;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (33060,33062,33109));
UPDATE creature_template SET AIName = 'NullAI' WHERE entry IN (33243,33229,33272);
