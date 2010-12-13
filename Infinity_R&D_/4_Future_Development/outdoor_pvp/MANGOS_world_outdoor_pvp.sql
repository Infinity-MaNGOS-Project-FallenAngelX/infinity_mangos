-- del GOs
DELETE FROM gameobject_respawn WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (182267, 182280,182281,182282,182222,182272,182273,182274,182266,182275,182276,182277,182301,182302,182303,182304,182305,182306,182307,182308,182297,182298,182299,182300));
DELETE FROM gameobject WHERE id IN (182267, 182280,182281,182282,182222,182272,182273,182274,182266,182275,182276,182277,182301,182302,182303,182304,182305,182306,182307,182308,182297,182298,182299,182300);

-- del NPCs
DELETE FROM creature_addon WHERE guid IN (select guid from creature WHERE id IN (18816,18821,21474,21484,21483,18192,18817,18822,21485,21487,21488,18256));
DELETE FROM creature_respawn WHERE guid IN (select guid from creature WHERE id IN (18816,18821,21474,21484,21483,18192,18817,18822,21485,21487,21488,18256));
DELETE FROM creature WHERE id IN (18816,18821,21474,21484,21483,18192,18817,18822,21485,21487,21488,18256);

-- creature template changes
-- guards don't regen health
UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (18192,18256);
--
UPDATE creature_template SET faction_A = 1630, faction_H = 1630, ScriptName = 'mob_eventai' WHERE entry = 18225;

-- pvp flag
UPDATE creature_template SET unit_flags = unit_flags | 0x1000 WHERE entry IN (18816,18821,21474,21484,21483,18192,18817,18822,21485,21487,21488,18256);

-- faction changes
-- (destroyed) wyvern posts
UPDATE gameobject_template SET faction = 84, flags = 0 WHERE entry IN (182266,182267,182275,182276,182277,182280,182281,182282);
UPDATE gameobject_template SET faction = 83, flags = 0 WHERE entry IN (182297, 182298, 182299, 182300, 182301, 182302, 182303, 182304);
-- bomb wagons
UPDATE gameobject_template SET faction = 83, flags = 0 WHERE entry IN (182222, 182272, 182273, 182274); -- horde friendly
UPDATE gameobject_template SET faction = 84, flags = 0 WHERE entry IN (182305, 182306, 182307, 182308); -- ally friendly

UPDATE gameobject_template SET data0 = 0 WHERE entry IN (181598, 181597); -- without this, the client sends a spellcast packet on go use instead of use go packet
UPDATE gameobject_template SET data0 = 0 WHERE entry = 181682;

DELETE from gameobject WHERE id = 181682; -- DELETE the go that is spawned by the opvp
DELETE from creature WHERE id = 17209; -- DELETE the flight master that is spawned by the opvp

UPDATE creature_template SET faction_a = 83, faction_h = 83 WHERE entry = 17995; -- horde guards faction
UPDATE creature_template SET faction_a = 83, faction_h = 83 WHERE entry = 17996;
UPDATE creature_template SET faction_a = 84, faction_h = 84 WHERE entry = 17635; -- ally guards faction
UPDATE creature_template SET faction_a = 84, faction_h = 84 WHERE entry = 17647;
UPDATE creature_template SET faction_a = 84, faction_h = 83 WHERE entry = 17209; -- flight master
UPDATE creature_template SET AIName = 'OutdoorPvPObjectiveAI', ScriptName = '' WHERE entry = 12999;
UPDATE creature_template SET npcflag = npcflag | 536870912 WHERE entry IN (18564, 18581);

DELETE FROM game_graveyard_zone WHERE id IN (969, 927, 993); -- DELETE na, za, epl pvp graveyard associations, they should only be available to the controlling faction

UPDATE quest_template SET ReqSpellCast1 = 0, ReqSpellCast2 = 0, ReqSpellCast3 = 0, ReqSpellCast4 = 0 WHERE entry IN (9665, 9664); -- fix quests IN epl
UPDATE quest_template SET reqspellcast1 = 0, reqspellcast2 = 0, reqspellcast3 = 0, reqspellcast4 = 0 WHERE entry in(9664,9665);

DELETE FROM gameobject WHERE id IN (181899, 182096, 182097, 182173, 182174, 182175, 182210, 182522, 182523, 183104, 183411, 183412, 183413, 183414, 182098);
DELETE FROM creature WHERE id IN (18564, 18581);

DELETE FROM gossip_menu_option WHERE id = 51;
INSERT INTO gossip_menu_option (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES
(0, 51, 0, 'UNIT_NPC_FLAG_OUTDOORPVP', 19, 536870912, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `mangos_string` WHERE `entry` BETWEEN 10001 AND 10050;
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES
-- hellfire peninsula
(10001,'The Horde has taken The Overlook!'),
(10002,'The Alliance has taken The Overlook!'),
(10003,'The Horde has taken The Stadium!'),
(10004,'The Alliance has taken The Stadium!'),
(10005,'The Horde has taken Broken Hill!'),
(10006,'The Alliance has taken Broken Hill!'),
(10007,'The Horde lost The Overlook!'),
(10008,'The Alliance lost The Overlook!'),
(10009,'The Horde lost The Stadium!'),
(10010,'The Alliance lost The Stadium!'),
(10011,'The Horde lost Broken Hill!'),
(10012,'The Alliance lost Broken Hill!'),
-- zangarmarsh
(10013,'The Horde has taken the West Beacon!'),
(10014,'The Alliance has taken the West Beacon!'),
(10015,'The Horde has taken the East Beacon!'),
(10016,'The Alliance has taken the East Beacon!'),
(10017,'The Horde has captured the Twin Spire Graveyard!'),
(10018,'The Alliance has captured the Twin Spire Graveyard!'),
(10019,'The Horde lost the West Beacon!'),
(10020,'The Alliance lost the West Beacon!'),
(10021,'The Horde lost the East Beacon!'),
(10022,'The Alliance lost the East Beacon!'),
(10023,'The Horde lost the Twin Spire Graveyard!'),
(10024,'The Alliance lost the Twin Spire Graveyard!'),
-- nagrand
(10025,'The Horde has captured Halaa!'),
(10026,'The Alliance has captured Halaa!'),
(10027,'The Horde lost Halaa!'),
(10028,'The Alliance lost Halaa!'),
-- terokkar forest
(10029,'The Horde has taken a Spirit Tower!'),
(10030,'The Alliance has taken a Spirit Tower!'),
(10031,'The Horde lost a Spirit Tower!'),
(10032,'The Alliance lost a Spirit Tower!'),
-- eastern plaguelands
(10033,'The Horde has taken the Northpass Tower!'),
(10034,'The Alliance has taken the Northpass Tower!'),
(10035,'The Horde has taken the Eastwall Tower!'),
(10036,'The Alliance has taken the Eastwall Tower!'),
(10037,'The Horde has taken the Crown Guard Tower!'),
(10038,'The Alliance has taken the Crown Guard Tower!'),
(10039,'The Horde has taken the Plaguewood Tower!'),
(10040,'The Alliance has taken the Plaguewood Tower!'),
(10041,'The Horde lost the Northpass Tower!'),
(10042,'The Alliance lost the Northpass Tower!'),
(10043,'The Horde lost the Eastwall Tower!'),
(10044,'The Alliance lost the Eastwall Tower!'),
(10045,'The Horde lost the Crown Guard Tower!'),
(10046,'The Alliance lost the Crown Guard Tower!'),
(10047,'The Horde lost the Plaguewood Tower!'),
(10048,'The Alliance lost the Plaguewood Tower!'),
-- silithus
(10049,'The Horde has collected 200 silithyst!'),
(10050,'The Alliance has collected 200 silithyst!');

-- Fire bomb script

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 18225;
INSERT INTO `creature_ai_scripts`(`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`
,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`
,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,
`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(18225,11,0,100,0,0,0,0,0,11,31961,0,4,0,0,0,0,0,0,0,0,'Fire Bomb Target cast Fire Bomb on Spawn'),
(18225,0,100,5000,0,5000,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,'Fire Bomb Target Despawn');

UPDATE creature_template SET AIName = 'EventAI', ScriptName='' WHERE `entry` = 18225;

-- Make Hrotgar's Landing dead creatures really dead and ignore aggro
UPDATE `creature` SET `DeathState`=1 WHERE `id` IN (35079,35083,35084,35080,35104);
-- Use simply SET first, these creatures are only misc ones, than add type_flags 2 (not attackable)
UPDATE `creature_template` SET `flags_extra`=2,`type_flags`=`type_flags`|2,`dynamicflags`=4 WHERE `entry` IN (35079,35083,35084,35080,35104);
