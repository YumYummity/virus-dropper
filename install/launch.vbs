Set UAC = CreateObject^("Shell.Application"^)
UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1
Set UAC = Nothing
