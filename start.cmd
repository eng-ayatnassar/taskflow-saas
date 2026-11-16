@echo off
setlocal
cd /d "%~dp0"

if not exist "node_modules\.bin\vite.cmd" (
  echo Installing project dependencies...
  call npm.cmd install
  if errorlevel 1 (
    echo Dependency installation failed.
    exit /b 1
  )
)

call npm.cmd run dev
