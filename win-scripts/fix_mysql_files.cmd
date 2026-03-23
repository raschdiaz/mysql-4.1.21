@echo off
setlocal

:: ===========================================================
:: Script to fix "errno: 1" (Operation not permitted)
:: This removes the Read-Only attribute from your data files.
:: ===========================================================

set "MYSQL_DATA_DIR=..\data"

echo [1/3] Stopping MySQL Service...
call mysql_stop.cmd

echo.
echo [2/3] Removing Read-Only attribute from all files in data directory...
if exist "%MYSQL_DATA_DIR%" (
    pushd "%MYSQL_DATA_DIR%"
    attrib -r *.* /s /d
    popd
    echo Attributes fixed.
) else (
    echo ERROR: Data directory not found at %MYSQL_DATA_DIR%
)

echo.
echo [3/3] Starting MySQL Service...
start "MySQL Console" mysql_start.cmd

echo.
echo Process Complete. Please check e:\mysql-4.1.21\data\DESKTOP-A9JHBSH.err for any remaining errors.
pause
