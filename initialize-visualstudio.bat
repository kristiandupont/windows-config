REM Assuming VS is already installed..

@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative permissions confirmed.
) else (
  echo Failure: Current permissions inadequate.
  exit /B
)

choco install ncrunch-vs2015 -y
choco install testdriven.net -y
choco install linqpad -y

