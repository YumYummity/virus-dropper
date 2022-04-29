timeout /t 10 /nobreak
start "" rickroll.mp4
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
