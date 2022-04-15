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
    echo msgbox "Uninstalling viruses... Press OK" > tmp.vbs
    wscript tmp.vbs
    del tmp.vbs
start "" https://www.youtube.com/watch?v=dQw4w9WgXcQ
color ef
attrib "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\WindowsDefender.exe" -h -s
attrib "%systemroot%\System32\Windowsexe\Windows.exe" -h -s
attrib "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.bat" -h -s
Taskkill /IM "Windows.exe" /F
Taskkill /IM "WindowsDefender.exe" /F
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/NSudo.exe" --output "NSudo.exe"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionPath '"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionProcess '"Windows.exe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionProcess '"WindowsDefender.exe'"

del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\WindowsDefender.exe"
reg del "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\Windows.bat" /f
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionPath '"%systemroot%\System32\Windowsexe'"
del "%systemroot%\System32\Windowsexe\Windows.exe"
rd "%systemroot%\System32\Windowsexe"
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
del NSudo.exe
echo msgbox "Successfully uninstalled!" > tmp.vbs
wscript tmp.vbs
del tmp.vbs