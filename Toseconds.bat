
@echo off

:top
if [%1]==[] GOTO Syntax
if [%2]==[] GOTO Syntax
if [%3]==[] GOTO Syntax
if [%4]==[ ] GOTO Syntax

set /a t=%1*3600+%2*60+%3

echo seconds : %t%
pause
exit

:Syntax
echo To seconds Covert HH:MM:SS to seconds
echo Designed to be use with windows xp or later
echo.
echo usage : toseconds HH MM SS
ECHO example: toseconds 02 24 30
echo.
echo written by Akash Kahalkar
ECHO http://www.ark.co.in
pause

:end