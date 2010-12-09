/* Wyrmrest Defender */
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27629);
INSERT INTO npc_spellclick_spells VALUES (27629, 49256, 12372, 1, 12372, 1);
REPLACE INTO creature_template_addon VALUES (27629,0,50331648,1,0,0,60,NULL,'50069 0 50069 1 50069 2');
REPLACE INTO vehicle_data VALUES (60,4,49161,49243,49263,49264,49367,0,0,0,0,0,0);
REPLACE INTO vehicle_seat_data VALUES (1262, 3);
UPDATE creature_template SET IconName = 'vehichleCursor', InhabitType = 3 WHERE entry IN (27629);

/* Defending Wyrmrest Temple quest */
REPLACE INTO spell_script_target VALUES (49370,1,27698),(49367,1,27698);
UPDATE quest_template SET ReqSpellCast3 = 49367 WHERE entry = 12372;
UPDATE creature_template SET npcflag = 0, unit_flags = 0 WHERE entry IN (27629);
