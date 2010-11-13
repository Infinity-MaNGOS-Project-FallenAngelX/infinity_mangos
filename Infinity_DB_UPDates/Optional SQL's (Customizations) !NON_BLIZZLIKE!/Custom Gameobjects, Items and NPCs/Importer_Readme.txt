╔═════════════════════════════════════════════════════════════════════════════════════════════════╗
║ iNFO:                                                                                           ║
╟─────────────────────────────────────────────────────────────────────────────────────────────────╢
║ This file holds the information needed to customize your server, get to know what does what and ║
║         in return - help us and/or contribute your own suggestions or portions of code.         ║
╚═════════════════════════════════════════════════════════════════════════════════════════════════╝


╔═════════════════════════════════════════════════════════════════════════════════════════════════╗
║ VERSiON:                                                                                        ║
║                                                                                                 ║
║                  ┌───────────┬───────────────────────────────────┬────────────┐                 ║
║                  │ Version:  │ Comment:                          │ Date:      │                 ║
║                  ├───────────┼───────────────────────────────────┼────────────┤                 ║
║                  │  0.0.0.1  │ First release of the importer.    │ 2010/06/07 │                 ║
║                  │           │            - Signed off: Darkiss. │            │                 ║
║                  └───────────┴───────────────────────────────────┴────────────┘                 ║
╚═════════════════════════════════════════════════════════════════════════════════════════════════╝


╔═════════════════════════════════════════════════════════════════════════════════════════════════╗
║ USAGE:                                                                                          ║
╟─────────────────────────────────────────────────────────────────────────────────────────────────╢
║ --- Using Importer ---                                                                          ║
║ 1. Run "Importer.bat"                                                                           ║
║ 2. Follow on-screen instructions. Provide info where need is due (Example: host name)           ║
║                                                                                                 ║
║ --- Manual Importing ---                                                                        ║
║ 1. Go to "Data" folder.                                                                         ║
║ 2. There should be two folders: MaNGOS and ScriptDev2.                                          ║
║ 3. Open folder named "MaNGOS"                                                                   ║
║ 4. Choose a customization (bellow) and execute it via your SQL management software.             ║
║ 5. Note that both Guildhall and Teleportmaster NPC's require executions from ScriptDev2 folder, ║
║    so if you will execute one of them, be sure to execute the same named file in ScriptDev2.    ║
╚═════════════════════════════════════════════════════════════════════════════════════════════════╝


╔═════════════════════════════════════════════════════════════════════════════════════════════════╗
║ DiFFERENCES: /!\ MANUAL IMPORTING ONLY FOR ADVANCED USERS /!\                                   ║
╟─────────────────────┬───────────────────────────────────────────────────────────────────────────╢
║ Using Importer:     │ Very fast execution. Cannot choose individual queries.                    ║
╟─────────────────────┼───────────────────────────────────────────────────────────────────────────╢
║ Manual Importing:   │ Slow execution. Can choose individual queries.                            ║
╚═════════════════════╧═══════════════════════════════════════════════════════════════════════════╝


╔═════════════════════════════════════════════════════════════════════════════════════════════════╗
║ DETAiLED INFO:                                                                                  ║
╟─────────────────────────────────────────────────────────────────────────────────────────────────╢
║ ┌─────────────────────────────────┬───────────────────────────────────────────────────────────┐ ║
║ │ File Name:                      │ Description:                                              │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_gameobject_chestbank     │ Opens your bank. (Much the same as simple Banker NPC)     │ ║
║ │ ( .gob add 100103 )             │                                                           │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_gameobject_deception_orb │ Changes the look of the character who uses it. Example:   │ ║
║ │ ( .gob add 100101 )             │ Horde character will become Alliance and vice versa.      │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_gameobject_morph         │ Changes the look of the character who uses it.            │ ║
║ │ ( .gob add 100100 )             │ Contains 55 random Display ID's.                          │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_gameobject_spellmachine  │ Casts various spells on the character who uses it.        │ ║
║ │ ( .gob add 100102 )             │ Contains 17 random spells.                                │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_item_cooldownremover     │ Removes any and all cooldowns of spells of the character. │ ║
║ │ ( .additem 9 )                  │                                                           │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_item_druid_forms         │ Transforms into druid flight forms.                       │ ║
║ │ ( .additem 4451 ) OR            │ (Need more info about this one!)                          │ ║
║ │ ( .additem 33179 )              │                                                           │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_item_invinciblemount     │ Teaches the user to mount Invincible Mount without any    │ ║
║ │ ( .additem 11 )                 │ riding skill.                                             │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_item_levelplayer         │ Levels up the character with the amount you've set up.    │ ║
║ │ ( .additem 6 )                  │ ( Configurable in darkice.conf file! )                    │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_item_metamorphosisspell  │ Allows any class and race character to learn              │ ║
║ │ ( .additem 12 )                 │ Metamorphosis.                                            │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_item_summonbanker        │ Summons a Banker NPC near you.                            │ ║
║ │ ( .additem 10 )                 │ ( Configurable in darkice.conf file! )                    │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_item_summontelenpc       │ Summons a Teleport Master NPC near you.                   │ ║
║ │ ( .additem 8 )                  │ ( Configurable in darkice.conf file! )                    │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_item_talentstone         │ Gives amount of Talent Points to the user that you can    │ ║
║ │ ( .additem 7 )                  │ configure in darkice.conf file.                           │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_buffmaster           │ A simple Buffer. Has various buffs to offer.              │ ║
║ │ ( .npc add 90011 )              │ ( Configurable in darkice.conf file! )                    │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_guildmaster          │ An NPC which features ability to buy and sell Guild halls.│ ║
║ │ ( .npc add 90002 )              │ ( Configurable in darkice.conf file and via Database )    │ ║
║ │                                 │ /!\ This file requires a query from ScriptDev2 folder /!\ │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_professionmaster     │ A profession NPC. Can help a character to increase his    │ ║
║ │ ( .npc add 90001 )              │ profession rank.                                          │ ║
║ │                                 │ ( Configurable in darkice.conf file! )                    │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_renamecharacters     │ Allows players to re-name their characters upon next      │ ║
║ │ ( .npc add 90003 )              │ re-login.                                                 │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_resetlevel           │ Resets the characters level and gives a reward.           │ ║
║ │ ( .npc add 90004 )              │ ( Configurable in darkice.conf file! )                    │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_spellmaster          │ Allows the character to learn his class spells along with │ ║
║ │ ( .npc add 90007 )              │ riding and weapon skills.                                 │ ║
║ │                                 │ ( Configurable in darkice.conf file! )                    │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_teleportmaster       │ This file speaks for itself. Provides various             │ ║
║ │ ( .npc add 90000 )              │ teleportations across the Azeroth and Outland.            │ ║
║ │                                 │ ( Configurable in darkice.conf file and via Database )    │ ║
║ │                                 │ /!\ This file requires a query from ScriptDev2 folder /!\ │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_titlemaster          │ Gives the ability to buy various titles for honor and     │ ║
║ │ ( .npc add 90006 )              │ gold. ( To configure, you must edit the source itself! )  │ ║
║ ├─────────────────────────────────┼───────────────────────────────────────────────────────────┤ ║
║ │ custom_npc_tokenvendor          │ Gives the ability to buy various items in exchange for    │ ║
║ │ ( .npc add 90008 )              │ tokens.                                                   │ ║
║ └─────────────────────────────────┴───────────────────────────────────────────────────────────┘ ║
║                       NOTE: All of these files have .sql file extensions.                       ║
╟─────────────────────────────────────────────────────────────────────────────────────────────────╢
║                     Copyright © 2010 Project Dark-iCE. All Rights Reserved.                     ║
╚═════════════════════════════════════════════════════════════════════════════════════════════════╝
