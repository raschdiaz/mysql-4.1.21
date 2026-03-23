@echo off
cls
copy /Y "..\my.ini" "%WINDIR%\my.ini"
if errorlevel 1 (
    echo.
    echo [ERROR] Access is denied.
    echo This script requires administrative privileges to write to %WINDIR%.
    echo Please right-click 'copy-my.ini.cmd' and select "Run as administrator".
    echo.
)
pause
