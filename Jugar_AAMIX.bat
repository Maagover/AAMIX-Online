@echo off
setlocal
cd /d "%~dp0"
if not exist "%~dp0AAMIX.exe" goto incompleto
start "" "%~dp0AAMIX.exe"
exit /b 0
:incompleto
echo No se encontro el juego completo.
echo Extrae todo el ZIP antes de abrir AAMIX.exe.
pause
exit /b 1
