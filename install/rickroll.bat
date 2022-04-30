timeout /t 3 /nobreak
:loop
start "" rickroll.mp4
timeout /t 7 /nobreak
taskkill /f "films & tv"
goto :loop
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
