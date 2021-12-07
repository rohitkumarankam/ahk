#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance, force

; ^ ctrl ! alt + shift # win

;; ASDF REMAP
>!w::Send {up}
return
>!s::Send {down}
return
>!a::Send {left}
return
>!d::Send {right}
return

;; windowsterminal
#IfWinActive, ahk_exe WindowsTerminal.exe
F12::
Return
F13::
Return
F14::
Return
F15::
Return
F16:: Send ^+w
Return
F17:: Send ^+{Tab}
Return
F18:: Send ^{Tab}
Return
F19::
Return
F20:: Send !{Up}
Return
F21:: Send !k
Return
F22:: Send !{Left}
Return
F23:: Send !{Down}
Return
F24:: Send !{Right}
Return

;;; VSCODE
#IfWinActive, ahk_exe Code.exe
f13:: ^`
return


;;; MSEDGE
#IfWinActive, ahk_exe msedge.exe

;; copy
f13::^c
return
;; paste
f14::^v
return
;; PIP mode for youtube
f15::!p
return
f16::
return
;; jump to previous tab
f17::^PgUp
return
;; jump to next tab
f18::^PgDn
return
f19::
return
;; open previous page from history in current tab
f20::!Left
return
;; open next page from history in the current tab
f21::!Right
return
;; reopen previously closed tab
f22::^+t
return
;; open new tab
f23::^t
return
;; close current tab
f24::^w
return

;;; EXPLORER
#IfWinActive, ahk_class CabinetWClass
;; copy
f13::^c
return
;; paste
f14::^v
return
;; cut
f15::^x
return
f16::
return
f17::
return
f18::
return
f19::
return
f20::
return
f21::
return
;; view the privious folder in history
f22::!Left
return
;; view the folder that the folder was in
f23::!Up
return
;; view the next folder in history
f24::!Right
return

;; taskbar
#IfWinActive, ahk_class Shell_TrayWnd
;; task view
f13::#Tab
return
;; close the current virtual desktop
f14::#^f4
return
;; new virtual desktop
f16::#^d
return
;; move to previous virtual desktop
f17::#^Left
return
;; move to next virtual desktop
f18::#^Right
return