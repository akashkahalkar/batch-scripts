:top
if [%1]==[a] goto abort
if [%1]==[] GOTO Syntax
if [%2]==[] GOTO Syntax
if [%3]==[] GOTO Syntax

set /a t=%1*3600+%2*60+%3
rem echo seconds :%t%
%SystemRoot%\System32\shutdown.exe /s /t %t% /f
exit

:Syntax
echo shutdowner.bat shutdowns system in HH MM SS
echo Designed to be use with windows xp or later
echo.
echo usage : shutdowner HH MM SS
ECHO example: shutdowner 02 24 30
echo         to abort previous shutdown use 
ECHO         shutdowner a

echo.
echo written by Akash Kahalkar
goto end

:abort
%SystemRoot%\System32\shutdown.exe /a

:end
pause
exit
