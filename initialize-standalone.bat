REM Install stuff that goes on a standalone (i.e. not virtual) Windows box. Run in addition to initialize.bat.

@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative permissions confirmed.
) else (
  echo Failure: Current permissions inadequate.
  exit /B
)

choco install f.lux -y
choco install vagrant -y

