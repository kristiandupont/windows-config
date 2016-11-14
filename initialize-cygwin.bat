@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative permissions confirmed.
) else (
  echo Failure: Current permissions inadequate.
  exit /B
)

choco install cygwin -y
choco install cyg-get -y

cyg-get wget
cyg-get fish
cyg-get tmux

