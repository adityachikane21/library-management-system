@echo off
setlocal
cd /d "%~dp0"
echo ==============================================
echo   Library Management System - Database Setup
 echo ==============================================
where mysql >nul 2>nul
if errorlevel 1 (
  echo MySQL command-line client was not found in PATH.
  echo Open MySQL Workbench and run database\library.sql manually.
  pause
  exit /b 1
)
set /p DBPASS=Enter MySQL root password (leave blank if none):
mysql -u root -p%DBPASS% < database\library.sql
if errorlevel 1 (
  echo.
  echo Database setup failed. Check MySQL is running and the password is correct.
  pause
  exit /b 1
)
echo.
echo Database setup completed successfully.
pause
endlocal
