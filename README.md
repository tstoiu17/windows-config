```powershell
# open links
Start-Process "https://github.com/Raphire/Win11Debloat"
Start-Process "https://github.com/ChrisTitusTech/winutil"
Start-Process "https://scoop.sh"

# alacritty symlink
New-Item -ItemType SymbolicLink -Target "$env:USERPROFILE\windows-config\alacritty" -Path "$env:APPDATA\alacritty"

# komorebi config
[Environment]::SetEnvironmentVariable("KOMOREBI_CONFIG_HOME", "$env:USERPROFILE\windows-config\komorebi", "User")
komorebic.exe enable-autostart --bar --ahk
```
