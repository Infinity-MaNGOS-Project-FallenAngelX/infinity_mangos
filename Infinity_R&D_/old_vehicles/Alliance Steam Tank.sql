/* Alliance Steam Tank */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27587);
INSERT INTO npc_spellclick_spells VALUES (27587, 43695, 0, 0, 0, 0);
REPLACE INTO creature_template_addon VALUES (27587, 0, 0, 0, 0, 0, 56, NULL, NULL);
REPLACE INTO vehicle_data VALUES (56, 4, 49315, 49333, 49109, 49081, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO vehicle_seat_data VALUES (945, 3),(946, 8),(949, 8),(950, 8);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE entry IN (27587);
UPDATE creature_template SET modelid_1 = 25341 WHERE entry = 27587;
UPDATE creature_model_info SET modelid_other_team = 0 WHERE modelid = 25341;
-- UPDATE creature_template_addon SET passengers = '27163 1 27588 2 27588 3' WHERE entry = 27587;
