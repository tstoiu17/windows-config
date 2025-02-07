To use Windows key as the modifier for komorebi shortcuts including Win+L, you
have to modify the registry and set the `DisableLockWorkstation` to 1.
Unfortunately, this disables the locking mechanism altogether.

[AHK forum post about Win+L hotkeys](https://www.autohotkey.com/boards/viewtopic.php?p=333845&sid=bc334331915e39bf3d766ebf5f3c3c73#p333845)

Key location for my PC as of 2024-12-09 (found using Ctrl+F):

```
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
```
