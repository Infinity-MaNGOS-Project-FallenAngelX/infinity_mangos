-- Oculus
UPDATE `instance_template` SET `ScriptName`='instance_oculus' WHERE `map`=578;

-- Nexus Portal
UPDATE `gameobject_template` SET `ScriptName` = 'go_oculus_portal' WHERE `entry` = 189985;

-- Orb of the Nexus
UPDATE `gameobject_template` SET `ScriptName` = 'go_oculus_portal' WHERE `entry` = 188715;

-- Drakos the Interrogator
UPDATE `creature_template` SET `maxhealth` = 431392 WHERE `entry` = 31558;  -- Hard diff  data from wow.com
UPDATE `creature_template` SET `ScriptName` = 'boss_drakos' WHERE `entry` = 27654;
UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 27654;
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299931 WHERE `entry` = 27654;  -- added immune to pacify
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299931 WHERE `entry` = 31558;  -- added immune to pacify to hard version
UPDATE `creature_template` SET `ScriptName` = 'mob_unstable_sphere_drakos' WHERE `entry` = 28166; -- unstable sphere

-- Varos
UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 27447;
UPDATE `creature_template` SET `ScriptName` = 'boss_varos_cloudstrider' WHERE `entry` = 27447;
UPDATE `creature_template` SET `ScriptName` = 'mob_azure_ring_captain_varos' WHERE `entry` = 28236; -- Azure_ring_captain Varos
UPDATE `creature_template` SET `ScriptName` = 'mob_centrifuge_core_varos' WHERE `entry` = 28183;  -- Centrifuge Core
UPDATE `creature_template` SET `unit_flags` = 33280 WHERE `entry` = 28183;
UPDATE `creature_template` SET `ScriptName` = 'mob_laser_dummy_varos' WHERE `entry` = 28239;  -- Laser_Varos
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299931 WHERE `entry` = 27447; -- added immune to pacify
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299931 WHERE `entry` = 31559; -- added immune to pacify to hard version 
UPDATE `creature_template` SET `unit_flags` = 33280 WHERE `entry` = 28183;

--  Centrifuge Construct
UPDATE `creature_template` SET `ScriptName` = 'mob_centrifuge_construct' WHERE `entry` = 27641;
UPDATE `creature_template` SET `KillCredit1` = 27641 WHERE `entry` = 27641;
UPDATE `creature_template` SET `ScriptName` = 'mob_centrifuge_construct' WHERE `entry` = 30905;

-- Urom
UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 27655;
UPDATE `creature_template` SET `ScriptName` = 'boss_urom' WHERE `entry` = 27655;


-- Eregos - dragon final boss
UPDATE `creature_template` SET `ScriptName` = 'boss_eregos' WHERE `entry` = 27656;
UPDATE `creature_template` SET `dynamicflags` = 1, `mechanic_immune_mask` = 617299931 WHERE `entry` = 27656; -- make him lootable and immune to pacify
UPDATE `creature_template` SET `dynamicflags` = 1, `mechanic_immune_mask` = 617299931 WHERE `entry` = 31561; -- same as above just  for hard version
-- Belgaristrasz
UPDATE `creature_template` SET `ScriptName` = 'npc_dragonber_giver' WHERE `entry` = 27658;

-- Verdisa
UPDATE `creature_template` SET `ScriptName` = 'npc_dragonver_giver' WHERE `entry` = 27657;

-- eternos
UPDATE `creature_template` SET `ScriptName` = 'npc_dragonete_giver' WHERE `entry` = 27659;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 27659; -- YTDB FIX Make eternos capable of gossip - to give out drake

-- oculus dragons /from rsa/
UPDATE `creature_template` SET `spell6` = 57403, `InhabitType` = 3 WHERE `entry` IN (27692,27755,27756);

-- from lanc
UPDATE `creature_template` SET
    spell1 = 50232,
    spell2 = 50248,
    spell3 = 50240,
    spell4 = 50253,
    spell5 = 0
WHERE `entry` IN (27756);

UPDATE `creature_template` SET
    spell1 = 49840,
    spell2 = 49838,
    spell3 = 49592,
    spell4 = 0,
    spell5 = 0
WHERE `entry` IN (27755);
 
UPDATE `creature_template` SET
    spell1 = 50328,
    spell2 = 50341,
    spell3 = 50344,
    spell4 = 0,
    spell5 = 0
WHERE `entry` IN (27692);

-- from rsa
UPDATE `creature_template` SET `AIName` = '', `VehicleId` = 70, `ScriptName` = 'mob_oculus_dragon' WHERE `entry` IN (27692,27756,27755);
DELETE FROM `spell_script_target` WHERE `entry` IN (49460, 49346, 49464);
INSERT INTO `spell_script_target` VALUES (49460, 1, 27755);
INSERT INTO `spell_script_target` VALUES (49346, 1, 27692);
INSERT INTO `spell_script_target` VALUES (49464, 1, 27756);

