@echo off
rem color 0a
:start
echo ###############################################
echo ************   FILE Sniffer ******************
echo ###############################################
echo. 
echo   _     ___  
echo  #_~`--'_)__ `===-,
echo    `.`.     `#.,//
echo    ,_\_\     ## #\
echo    `__.__    `####\
echo         ~~\ ,###'~
echo            \##'
echo.
echo.
echo "* Specify What You Want To Search ?"
set /p "Item={*.mp3 | *.mkv | *.* } > "
cls
rem echo %item%
echo.
echo.
echo.
echo Where To Search For File?
echo press N for cancel..
echo.
echo (c) C:\  (d) D:\  (e) E:\  (f) F:\  (g) G:\ 
echo.
rem set /p "where=Your Choice => " 
choice /c cdefgn /M "Your choice "
cls
if %ERRORLEVEL%==1 set d=c:\
if %ERRORLEVEL%==2 set d=d:\
if %ERRORLEVEL%==3 set d=e:\
if %ERRORLEVEL%==4 set d=f:\
if %ERRORLEVEL%==5 set d=g:\
if %ERRORLEVEL%==6 exit
goto Findit
echo.
echo.
echo.
title Finding..
echo Send OutPut To a) Console b) File
choice /c ab /m "Your Choice "
cls
if %ERRORLEVEL%==1 goto Findit
if %ERRORLEVEL%==2 goto SendToFile

:Findit
Title finding
echo %d%%item%
dir /s /b %d%%item% | more
pause 
cls
goto ask

:SendToFile
set f=find.dat
echo "<--  Start Of File  -->" >> %f%
dir /s /b %d%%item% >> %f%
echo "<--  End Of File  -->"  >> %f%
notepad %f%
del %f%
pause
goto ask

:ask
prompt
echo.
echo.
echo Want To Find again?
choice /c yn
cls
if %ERRORLEVEL%==1 goto start
if %ERRORLEVEL%==2 (
echo Filesniffer.bat is a simple Search utility helps you find bulk files 
echo for specific extension.faster search than GUI search
echo Designed to be use with windows xp Or later
echo.
echo Written by : Akash Kahalkar (2014)
echo.
echo      usage : for Item input you can specify *.mp3 which will find all mp3
echo              files on your system. ^"a*.mp3^" find any music file which
echo              starts with ^"a^". works sam for all file type.
echo              output is provide Either in console mode or file mode.
pause
exit
)