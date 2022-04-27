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

# Detection
_All, unobfuscated and obfuscated: Undetected by all antiviruses as of 04/26/2022._ 

_Virustotal for unobfuscated and release: https://www.virustotal.com/gui/file/e8446787043eb3257140ac5bc90c7a209bc333cbeb1138a0d339d6e765169444/detection_

_Virustotal for release/obfuscated/deleted: https://www.virustotal.com/gui/file/0a8364a4e5c2d7899f6245726f9f54528820f607b1ba412003ad46e8aee83960/detection_

Exclusions for other antiviruses are not added; antiviruses won't detect the installer but will detect the installed files. It will add exclusions for Windows Defender.


# Todo
(prob wont actually add these but who knows):

Batch file generator (generates the installer)

# Changelog
- Added TaskScheduler to run files as Administrator without prompt
- Compacted files
- Starts main install.bat hidden
- Complete rewrite of code
- Made undetectable by all antiviruses (the dropper, not the payload)
- Added AV.bat to permanently remove all extra antiviruses by running every minute.
