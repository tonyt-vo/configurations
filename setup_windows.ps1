Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install vscode -y
choco install node -y
choco install python -y
choco install ruby -y
choco install git -y
choco install autohotkey y
choco install vim -y
choco install intellijidea-community -y
choco install microsoft-windows-terminal -y
choco install googlechrome -y

New-Item -Path "c:\" -Name "Workspace" -ItemType "directory"
cd C:\Workspace
git clone https://github.com/tonyt-vo/configurations.git
cd C:\Worspace\configurations
./setup.sh

# TODO: set ahk for caps esc on startup
