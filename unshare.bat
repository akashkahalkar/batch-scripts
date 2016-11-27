@echo off
::author Akash R. Kahalkar
::for /f "tokens=2" %%i in (' net share ^| find ":" ') do net share %%i /delete
for /f "tokens=2" %%i in (' net share ^| find ":" ') do net share /delete %%i
pause