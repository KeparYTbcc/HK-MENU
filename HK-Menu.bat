@echo off
echo @Echo off
timeout /t 1 >nul
title HK - Menu 
echo title HK - Menu 
timeout /t 1 >nul
color a
echo color a
timeout /t 2 >nul
cls
:dep
cls
echo Checking Dependencies...
timeout /t 1 >nul
echo.
echo.
echo due of lazyness, verify if u have these sofwares installed:
echo.
echo - Python3
echo - Git For windows
echo - Node.js
echo.
echo do all of them are installed?
set /p main=(y/n)
if %main%==y goto begin
if %main%==n goto depno
goto dep

:depno
cls
echo want to install them?
set /p main2=(y/n)
if %main2%==y goto install1
if %main2%==n exit
goto depno

:install1
start https://nodejs.org/dist/v14.17.0/node-v14.17.0-x64.msi
start https://www.python.org/ftp/python/3.9.5/python-3.9.5-amd64.exe
start https://github.com/git-for-windows/git/releases/download/v2.31.1.windows.1/Git-2.31.1-64-bit.exe
cls
echo Please install Dependencies
echo and restart the Menu
pause
exit


:begin
mkdir FILES
cd FILES
:sure123
cls
echo.
echo ARE YOU SURE U INSTALLED EVERY Dependencies CORRECTLY?
echo.
set /p main123=(y/n)
if %main123%==y goto rebegin
if %main123%==n start https://discord.com/channels/842631800726880256/842632011889377301/842632073630318652 && goto install1
goto sure123
:rebegin
start https://www.youtube.com/channel/UCJ2l3NRmNrmtOkcMjXycbcg
cls
:main
echo.
echo  ^/$$   ^/$$       ^/$$   ^/$$
echo ^| $$  ^| $$      ^| $$  ^/$$^/
echo ^| $$  ^| $$      ^| $$ ^/$$^/ 
echo ^| $$$$$$$$      ^| $$$$$^/  
echo ^| $$^_^_  $$      ^| $$  $$  
echo ^| $$  ^| $$      ^| $$^\  $$ 
echo ^| $$  ^| $$      ^| $$ ^\  $$
echo ^|^_^_^/  ^|^_^_^/      ^|^_^_^/  ^\^_^_^/
echo.
echo (1) Kahoot Hacks 
echo (2) Kahoot Flooder
echo (3) Quizizz Hacks
echo (4) Clear Output folder
echo (5) Quit
set /p menu4=;
if %menu4%==1 goto Ktools1
if %menu4%==2 goto Ktools2
if %menu4%==3 goto Quizizz1
if %menu4%==4 goto clear1
if %menu5%==5 goto end1
goto main

:clear1
cd..
rmdir /s FILES
MKDIR FILES
cd FILES
cls
echo.
echo Output Folder Cleared! :D
goto main

:Ktools1
cls
echo DOWNLOADING !
echo.
git clone https://github.com/Raymo111/kahoot-answer-bot.git
cd kahoot-answer-bot 
pip install -r requirements.txt
echo python kbot >start.bat
cd..
explorer "%CD%\kahoot-answer-bot"
cls
echo Download completed!
timeout /t 2 >nul
cls
echo.
echo start "start.bat" to start hacking on kahoot :D
goto main

:Ktools2
cls
echo DOWNLOADING !
echo.
git clone https://github.com/KeparYTbcc/kahoot-flooder.git
cd kahoot-flooder
explorer "%CD%"
cd..
cls
echo Download completed!
timeout /t 2 >nul
cls
echo.
echo Start "Flooder.bat" To invite tons of bots on a kahoot match :D
goto main

:Quizizz1
cls
start https://quizizz.rocks/
cls
echo.
echo Enter Game Pin to get answers of a quizizz Game
goto main
                          
:end1
cls
echo Go sub to "Hacking Kindom"
echo On youtube
timeout /t 5 >nul
exit
