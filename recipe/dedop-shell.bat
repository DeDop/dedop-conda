@echo off

set SCRIPTS_DIR=%~dp0

rem Make PREFIX=%SCRIPTS_DIR%\.. an absolute path
pushd .
cd %SCRIPTS_DIR%\..
set PREFIX=%CD%
popd

call "%SCRIPTS_DIR%\activate.bat" "%PREFIX%"
if errorlevel 1 exit 1

prompt $G$S

echo.
@echo Welcome to the DeDop Shell. Type "dedop -h" to get help.
echo.

cmd /K ""