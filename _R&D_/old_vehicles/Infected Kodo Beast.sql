/* Infected Kodo Beast */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (25596);
INSERT INTO npc_spellclick_spells VALUES (25596, 45875, 11690, 1, 11690, 1);
REPLACE INTO creature_template_addon VALUES (25596, 0, 0, 0, 0, 0, 29, NULL, NULL);
REPLACE INTO vehicle_data VALUES (29, 12, 45876, 45877, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (422, 3);
UPDATE creature_template SET speed_run = 2, IconName = 'vehichleCursor' WHERE entry = 25596;
REPLACE INTO spell_script_target VALUES (45877, 1, 25596);

/* Bring 'Em Back Alive quest */
REPLACE INTO creature_ai_scripts VALUES (2559651,25596,8,0,100,0,45877,-1,0,0,33,25698,0,0,41,0,0,0,0,0,0,0,'q11690');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 25596;
