:autorestart
@shift /0
@echo off
title Fal#2412 crash auto restarter
echo                       Make sure to add this to your enet
echo [40;32m__
set /p enet="[!] Enter your exe name : "
echo [40;32m__
echo Attempting to start %enet% >> logs.txt
goto wew

:wew
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
echo [LOGS] %mydate%:%mytime% Your server is running!
echo [LOGS] %mydate%:%mytime% Your server is running >> logs.txt
start /w %enet%
echo [LOGS] %mydate%:%mytime% Crashed!
echo %mydate%:%mytime% Crashed >> logs.txt
echo [LOGS] %mydate%:%mytime% Attempting to restart the server
echo [LOGS] %mydate%:%mytime% Attempting to restart the server..>> logs.txt
goto wew
