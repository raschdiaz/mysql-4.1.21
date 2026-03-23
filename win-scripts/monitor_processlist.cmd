@echo off
:loop
cls
echo Monitoring MySQL Process List (Press Ctrl+C to exit)
..\bin\mysql -u root -proot -e "SHOW PROCESSLIST;"
:: Wait approximately 1 second
ping -n 2 127.0.0.1 >nul
goto loop