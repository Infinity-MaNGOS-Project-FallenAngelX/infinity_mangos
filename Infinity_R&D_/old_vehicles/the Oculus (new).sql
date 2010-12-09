/* the Oculus (new) */
DELETE FROM spell_script_target where entry IN (49460, 49346, 49464);
DELETE FROM npc_spellclick_spells where npc_entry IN (27755, 27692, 27756);
DELETE FROM creature_template_addon where entry IN (27755, 27692, 27756);
UPDATE creature_template SET IconName = 'vehichleCursor', InhabitType = 3 WHERE entry IN (27755,27756,27692);
/* Amber Drake */
INSERT INTO spell_script_target VALUES (49460, 1, 27755);
INSERT INTO npc_spellclick_spells VALUES (27755, 49459, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27755, 0, 0, 0, 0, 0, 70, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (70, 12, 49840, 49838, 49592, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (1323, 3);
/* Emerald Drake */
INSERT INTO spell_script_target VALUES (49346, 1, 27692);
INSERT INTO npc_spellclick_spells VALUES (27692, 49427, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27692, 0, 0, 0, 0, 0, 181, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (181, 12, 50328, 50341, 50344, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (2081, 3);
/* Ruby Drake */
INSERT INTO spell_script_target VALUES (49464, 1, 27756);
INSERT INTO npc_spellclick_spells VALUES (27756, 49463, 0, 0, 0, 1);
INSERT INTO creature_template_addon VALUES (27756, 0, 0, 0, 0, 0, 186, NULL, '48602 0 48602 2');
REPLACE INTO vehicle_data VALUES (186, 12, 50232, 50248, 50240, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (2089, 3);
/* Hack for broken Nexus Portal */
UPDATE gameobject_template SET data0 = 49665 WHERE entry = 189985;
UPDATE spell_target_position SET id = 49665 WHERE id = 49305;
