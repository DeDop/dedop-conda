@echo off

set SCRIPTS_DIR=%~dp0

pushd .
cd %SCRIPTS_DIR%
set PREFIX=%~f1
popd

call "%PREFIX%\Scripts\activate.bat" "%PREFIX%"
if errorlevel 1 exit 1

prompt $G$S

echo.
@echo Welcome to the DeDop Shell. Type "dedop -h" to get help.
echo.

cmd /K ""