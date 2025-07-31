@echo off
cd /d %~dp0

echo 🔄 Iniciando Vagrant...
vagrant up

echo.
echo ✅ Ejecutando provision (ansible-playbook)...
vagrant provision

echo.
echo 🌐 Abriendo archivo HTML generado...
start "" "%cd%\partidos.html"

pause
