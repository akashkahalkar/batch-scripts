@echo off

Title ::Virus_Removal_Tool::
echo ---------------------------
echo  link virus remover ver1.0
echo ---------------------------
echo.
echo Enter Removable drive letter (eg. j:)
set /p "dl=>> "


if exist %dl%\*.lnk ( goto RA ) else (goto EX)


:RA
cls
if exist %dl%\do_not_remove.lnk (goto EX) else (
cls
echo removing virus pleas wait...
ping localhost -n 3 >nul 2>nul 
cls
echo removing virus pleas wait.
ping localhost -n 2 >nul 2>nul 
cls
echo removing virus pleas wait..
ping localhost -n 2 >nul 2>nul 
cls
echo removing virus pleas wait...
ping localhost -n 2 >nul 2>nul 
cls

	attrib -s -h %dl%\*.* /s /d
	ren *.lnk *.mal
	echo 1 > %dl%\do_not_remove.lnk
	if exist "%dl%\ÿ" (
	move "%dl%\ÿ" recovered 2>nul
	start %dl%\recovered\
)
	set file=%0%
	set loc=%userprofile%\Desktop\
	if not exist "Virus_Removal_Tool.bat" copy %file% %loc%
	echo done
	goto EX
)

:EX
cls
echo.
echo written by Akash Kahalkar
ECHO http://www.ark.co.in
goto end

:end
pause
exit
