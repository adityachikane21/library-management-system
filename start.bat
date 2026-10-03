@echo off
setlocal
cd /d "%~dp0"
echo ==============================================
echo   Library Management System - Start
 echo ==============================================
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed. Install Node.js 18+ first.
  pause
  exit /b 1
)
if not exist backend\.env copy backend\.env.example backend\.env >nul
if not exist backend\node_modules (
  echo Installing backend dependencies...
  cd backend
  call npm install
  if errorlevel 1 goto install_error
  cd ..
)
if not exist frontend\node_modules (
  echo Installing frontend dependencies...
  cd frontend
  call npm install
  if errorlevel 1 goto install_error
  cd ..
)
start "Library Backend" cmd /k "cd /d %~dp0backend && npm start"
start "Library Frontend" cmd /k "cd /d %~dp0frontend && npm run dev"
timeout /t 3 /nobreak >nul
start "" http://localhost:5173
exit /b 0

:install_error
echo Dependency installation failed. Check your internet connection and Node.js installation.
pause
exit /b 1
