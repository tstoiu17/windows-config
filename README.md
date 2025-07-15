```powershell
# open links 
Start-Process "https://github.com/Raphire/Win11Debloat#quick-method"
Start-Process "https://github.com/ChrisTitusTech/winutil#launch-command"
Start-Process "https://scoop.sh"
```

restart

```powershell
scoop install git
git clone https://github.com/tstoiu17/window-config
```

```powershell
# alacritty symlink
New-Item -ItemType SymbolicLink -Target "$env:USERPROFILE\windows-config\alacritty" -Path "$env:APPDATA\alacritty"

# komorebi config
[Environment]::SetEnvironmentVariable("KOMOREBI_CONFIG_HOME", "$env:USERPROFILE\windows-config\komorebi", "User")
komorebic.exe enable-autostart --bar --ahk
```
