#Requires AutoHotkey v2.0.2
#SingleInstance Force

; https://www.autohotkey.com/docs/v1/Hotkeys.htm#Symbols
;
;   # == Win
;   ! == Alt
;   ^ == Ctrl
;   + == Shift

Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

; Window manager options
#r::Komorebic("reload-configuration")
#+r::Komorebic("retile")
#p::Komorebic("toggle-pause")

#Enter::Run('alacritty.exe --command "wsl --distribution Ubuntu-22.04 --cd ~"')
#+Enter::Run("cmd.exe")
#b::Run("chrome.exe")
#+s::Send("{PrintScreen}")
#d::Komorebic("close")

; Move windows
#+h::Komorebic("move left")
#+j::Komorebic("move down")
#+k::Komorebic("move up")
#+l::Komorebic("move right")

; Focus windows
#h::Komorebic("focus left")
#j::Komorebic("focus down")
#k::Komorebic("focus up")
#l::Komorebic("focus right")
#+[::Komorebic("cycle-focus previous")
#+]::Komorebic("cycle-focus next")

; Resize
#=::Komorebic("resize-axis horizontal increase")
#-::Komorebic("resize-axis horizontal decrease")
#+=::Komorebic("resize-axis vertical increase")
#+_::Komorebic("resize-axis vertical decrease")

; Manipulate windows
#t::Komorebic("toggle-float")
#f::Komorebic("toggle-monocle")
#m::Komorebic("toggle-maximize")

; Layout
#q::Komorebic("change-layout rows")
#w::Komorebic("change-layout columns")
#e::Komorebic("cycle-layout next")
#s::Komorebic("stack-all")
#^s::Komorebic("unstack")
#Left::Komorebic("stack left")
#Down::Komorebic("stack down")
#Up::Komorebic("stack up")
#Right::Komorebic("stack right")
#[::Komorebic("cycle-stack previous")
#]::Komorebic("cycle-stack next")

; Workspaces
#1::Komorebic("focus-monitor-workspace 0 1")
#2::Komorebic("focus-monitor-workspace 1 2")
#3::Komorebic("focus-monitor-workspace 0 3")
#4::Komorebic("focus-monitor-workspace 2 4")
#5::Komorebic("focus-monitor-workspace 2 5")
#6::Komorebic("focus-monitor-workspace 0 6")
#7::Komorebic("focus-monitor-workspace 0 7")
#8::Komorebic("focus-monitor-workspace 0 8")
#9::Komorebic("focus-monitor-workspace 0 9")
#0::Komorebic("focus-monitor-workspace 0 0")

; Move windows across workspaces
#+1::Komorebic("send-to-monitor-workspace 0 1")
#+2::Komorebic("send-to-monitor-workspace 1 2")
#+3::Komorebic("send-to-monitor-workspace 0 3")
#+4::Komorebic("send-to-monitor-workspace 2 4")
#+5::Komorebic("send-to-monitor-workspace 2 5")
#+6::Komorebic("send-to-monitor-workspace 0 6")
#+7::Komorebic("send-to-monitor-workspace 0 7")
#+8::Komorebic("send-to-monitor-workspace 0 8")
#+9::Komorebic("send-to-monitor-workspace 0 9")
#+0::Komorebic("send-to-monitor-workspace 0 0")
