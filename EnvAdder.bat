@echo Off
set RegLog=RegLog.txt
rem environment variable adder for windows 7
rem specify name and value for env var
rem author : akash Kahalkar
echo --------EASY ENV VAR ADDER -------------------
ECHO.
Echo Current Date: && date /T 2>> %RegLog%
ECHO.
set "KEY=HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment"
set "TYPE=REG_SZ"

set /p "VALUE=Enter The Name Of Environment Variable:"
set /p "DaTa=Enter Value For Environment Variable: "
reg add "%KEY%" /v "%VALUE%" /t "%TYPE%" /d "%DaTa%" /f
:: Echo " %KEY% %VALUE% "
echo %ERRORLEVEL%
if NOT %ERRORLEVEL%==0 goto End

echo Key: "%KEY%" >> %RegLog%
echo Type: "%TYPE%" >> %RegLog%
echo Value: "%VALUE%" >> %RegLog%
echo Data: "%DaTa%" >> %RegLog%
echo. >> %RegLog%
ECHO.

if NOT %ERRORLEVEL% == 0  ( echo Error Occured
Echo.
pause
goto End
)
echo Env. Variable Named="%VALUE%" And Value="%DaTa%"
echo  is Successfully Added.
rem notepad %RegLog%
echo.
pause


:End
DEL %RegLog%
Exit %ERRORLEVEL%