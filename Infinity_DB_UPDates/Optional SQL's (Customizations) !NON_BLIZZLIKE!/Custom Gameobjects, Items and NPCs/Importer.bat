@echo off
color 0a
title Project Dark-iCE Standart SQL Importer
rem Standard install section
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /p svr=What is your MySQL host name?           [localhost]   : 
if %svr%. == . set svr=localhost

cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /p user=What is your MySQL user name?           [root]        : 
if %user%. == . set user=root

cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /p pass=What is your MySQL password?            [mangos]           : 
if %pass%. == . set pass=

cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /p port=What is your MySQL port?                [3306]        : 
if %port%. == . set port=3306

cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /p wdb=What is your World database name?       [mangos]      : 
if %wdb%. == . set wdb=mangos

cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /p cdb=What is your Characters database name?       [characters]      : 
if %cdb%. == . set cdb=characters

cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /p rdb=What is your Realm database name?       [realmd]      : 
if %rdb%. == . set rdb=characters

cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /p rdb=What is your ScriptDev2 database name?       [scriptdev2]      : 
if %sdb%. == . set sdb=scriptdev2

:install
set dbpathw=Data\MaNGOS
set dbpathc=Data\Characters
set dbpathr=Data\Realm
set dbpaths=Data\ScriptDev2
set mysql=Data

:checkpaths
if not exist %dbpathw% then goto patherror
if not exist %dbpathc% then goto patherror
if not exist %dbpathr% then goto patherror
if not exist %dbpaths% then goto patherror
if not exist %mysql%\mysql.exe then goto patherror
goto world

:patherror
cls
echo.
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ  Error: Files are missing. Please ensure that you have downloaded   บ
echo บ           This from a local repository of Project Dark-iCE.         บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo Press any key to exit...
pause>nul
exit

pause
:world
cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo Importing sql files into %wdb%
for %%i in (%dbpathw%\*.sql) do echo %%i & %mysql%\mysql -q -s -h %svr% --user=%user% --password=%pass% --port=%port% %wdb% < %%i
goto characters

:characters
cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo Importing sql files into %cdb%
for %%i in (%dbpathc%\*.sql) do echo %%i & %mysql%\mysql -q -s -h %svr% --user=%user% --password=%pass% --port=%port% %cdb% < %%i
goto realmd

:realmd
cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo Importing sql files into %rdb%
for %%i in (%dbpathr%\*.sql) do echo %%i & %mysql%\mysql -q -s -h %svr% --user=%user% --password=%pass% --port=%port% %rdb% < %%i
goto scriptdev2

:scriptdev2
cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo Importing sql files into %sdb%
for %%i in (%dbpaths%\*.sql) do echo %%i & %mysql%\mysql -q -s -h %svr% --user=%user% --password=%pass% --port=%port% %sdb% < %%i
goto done

:done
cls
echo.
echo ษออออออออออออออออออออออออออออออออออออออออออออัออออออออออออออออออออออออป
echo บ                                            ณ        Version 1       บ
echo บ   Project Dark-iCE Standart SQL Importer   ณ  For Project Dark-iCE  บ
echo บ                                            ณ  Copyright by Darkiss  บ
echo วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤมฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ
echo บ                 http://projectdarkice.clanice.com                   บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo Done. The queries have been executed.
echo Press any key to exit...
pause>nul