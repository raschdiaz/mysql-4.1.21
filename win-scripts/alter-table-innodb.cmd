@echo off
echo Updating all tables from "prueba-inno" database
..\bin\mysql -u root -proot prueba-inno < "alter-table-innodb.sql"