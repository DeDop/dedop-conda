@echo off

set ROOT_PREFIX=%1
set PREFIX=%2

echo.
@echo Welcome to the DeDop Shell. Type "dedop -h" to get help.
echo.

call "%ROOT_PREFIX%\Scripts\activate.bat" "%PREFIX%"

prompt $G$S

cmd /K ""