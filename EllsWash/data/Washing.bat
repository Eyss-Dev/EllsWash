:menu
@echo off & color 0f & cls & title EllsWash - Washing
mode 60,20
color 9
echo.
echo                       Washing
echo.
echo        [1] Optimisation    [2] SpaceSniffer
echo.
echo        [3] Close All task  [4] Retour
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
goto :menu
exit

:1
@echo off & title EllsWash - Optimisation
mode 90,30
color 9
start warning.vbs
ping localhost -n 10 >nul
echo.
echo Lancement du Washing
ping localhost -n 5 >ping
echo 1 etapes Task List de votre pc.
echo.
TASKLIST
echo Task List de votre pc termines...
ping localhost -n 10 >nul
echo.
echo 2 etapes selection de fichier inutile. 
echo.
TREE 
ping localhost -n 5 >nul
echo.
echo 3 etapes verification de votre systeme
ping localhost -n 3 >nul
SYSTEMINFO
ping localhost -n 3 >nul
echo Verification en cours
echo.
ping localhost -n 5 >nul
echo Verification termines
echo.
ping localhost -n 5 >nul
echo ---------------------------------------------
echo           Optimisation termines
echo ---------------------------------------------
ping localhost -n 10 >nul
set /p answer="Pour revenir au menu merci d'appuyer sur 0 ? > "
if /i {%ANSWER%}=={0} (goto :menu)
exit

:2
start SpaceSniffer.exe
exit

:3
@echo off & title EllsWash - Close Task
mode 90,30
ping localhost -n 2 >nul
echo.
echo Un probleme est survenue.
echo.
ping localhost -n 3 >nul
set /p answer="Pour revenir au menu merci d'appuyer sur 0 ? > "
if /i {%ANSWER%}=={0} (goto :menu)
exit

:4
start Menu.bat
exit