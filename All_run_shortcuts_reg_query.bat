@echo off
echo ^<---- List Of Run Shortcut----^> > shrtcut_temp.txt
for /f "tokens=7 delims=\" %%I IN ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths"') DO echo %%I >> shrtcut_temp.txt
start notepad shrtcut_temp.txt
exit
