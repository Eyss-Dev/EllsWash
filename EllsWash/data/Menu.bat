:menu
@echo off & color 0f & cls & title EllsWash By Eyss
mode 60,20
color 9
echo.
echo                 Programme de lavage de PC
echo.
echo           [1] Washing        [2] Creer une backup
echo.
echo           [3] Besoin d'aide  [4] Mode jeu
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
goto :menu
exit

:1
start Washing.bat
exit


:2
@echo off & title EllsWash - BackUp
mode 50,10
color 9
echo       -----------------------------------
echo        Creation d'une backup en cours...
echo       -----------------------------------
ping localhost -n 8 >nul
XCOPY C:\Users\user\Desktop\FiveM C:\Users\user\Desktop\FiveM-backup\ /m /e /y
echo.
echo Backup cree avec succes !
ping localhost -n 5 >nul
set /p answer="Pour revenir au menu merci d'appuyer sur 0 ? > "
if /i {%ANSWER%}=={0} (goto :menu)
exit

:3
echo.
color 9
echo Rejoignez notre Discord : https://discord.gg/hAy5VMP
echo.
echo Puis ouvrez un ticket dans le salon #support
echo.
ping localhost -n 15 >nul
echo.
set /p answer="Pour revenir au menu merci d'appuyer sur 0 ? > "
if /i {%ANSWER%}=={0} (goto :menu)
exit

:4
@echo off & title EllsWash - Mode Jeu
mode 60,20
echo. 
echo            Que voulez vous faire ?
echo.
echo           [O] Ouvrir     [F] Fermer
echo.   
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={o} (goto :o)
if /i {%ANSWER%}=={f} (goto :f)
goto :menu
exit


:o
@echo off & title EllsWash - Mode Jeu Open
mode 60,20
ping localhost -n 3 >nul
echo.
echo Preparation du Mode Jeu
ping localhost -n 7 >nul
echo.
echo Mode Jeu Activee votre PC est Optimiser pour jouer.
echo.
ping localhost -n 3 >nul
set /p answer="Pour revenir au menu merci d'appuyer sur 0 ? > "
if /i {%ANSWER%}=={0} (goto :menu)
exit

:f
@echo off & title EllsWash - Mode Jeu Close
mode 60,20
ping localhost -n 3 >nul
echo.
echo Arret du Mode Jeu
ping localhost -n 7 >nul
echo.
echo Mode Jeu Desactivez
echo.
ping localhost -n 3 >nul
set /p answer="Pour revenir au menu merci d'appuyer sur 0 ? > "
if /i {%ANSWER%}=={0} (goto :menu)
exit