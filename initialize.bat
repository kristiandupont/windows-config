@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative permissions confirmed.
) else (
  echo Failure: Current permissions inadequate.
  exit /B
)

echo Disable Windows Search..
sc config wsearch start= disabled

echo Fix keyboard speed..
mode con rate=32 delay=0

echo Apply settings.reg
regedit.exe /S settings.reg

echo Install Chocolatey..
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

echo Installing chocolatey packages..
choco install autohotkey -y
choco install katmouse -y

choco install git -y
choco install ag -y
choco install vim -y
choco install curl -y

choco install google-chrome-x64 -y


