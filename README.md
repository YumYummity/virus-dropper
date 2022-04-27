# Virus Dropper by YumYummity
Install files on a victim's computer! It can be any file, as Windows Defender won't interfere!
You can also add a scan exclusion where files can be hidden from Windows Defender.
**Educational Purposes Only!**
Direct installation of the entire code as a .zip file may fail as "virus detected", and it's not wrong! Temporarily disable any anti-viruses and browser protection to download. Delete the "install" folder, and reenable protection!

Obfuscator used made by @moom825
Code: https://github.com/moom825/batch-obfuscator-made-in-python

Running this as default won't do much; you need to create your own .exe files!
EXE files inside "install" were NOT MADE BY ME! These are only test files.

# Detection
_Unobfuscated: Undetected by all antiviruses as of 04/15/2022._ 

_Obfuscated/Release: Undetected by all but one antivirus (Kaspersky) as of 04/15/2022._ 

_Virustotal for unobfuscated: https://www.virustotal.com/gui/file/d0ea4a13bdc2df2c33a6aa5d3191a81b1b9e833a38ac3e5d42b30287d03a4f70/detection_

_Virustotal for release: https://www.virustotal.com/gui/file/d1a2249c5f301e639a764733ca6a27d4b04d8bb5f26cf2cf8f89863d61fca22e/detection_

==Release is detected by Kaspersky as "HEUR:Trojan.BAT.Generic", try using the unobfuscated version of the Install.bat that isn't detected (Download source code)==

Exclusions for other antiviruses are not added; antiviruses won't detect the installer but will detect the installed files. It will add exclusions for Windows Defender.


# Todo
(prob wont actually add these but who knows):

Exclusions for other antiviruses (Avast, Bitdefender, Norton, etc.)

Batch file generator (generates the installer)

# Changelog
- Added TaskScheduler to run files as Administrator without prompt
- Compacted files
- Starts main install.bat hidden
- Complete rewrite of code
