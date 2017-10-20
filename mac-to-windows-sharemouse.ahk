; Mappings

; cmd-(most normal keys) should be Ctrl-...
#c::Send ^c
#v::Send ^v
#x::Send ^x
#o::Send ^o
#s::Send ^s
#a::Send ^a
#z::Send ^z
#t::Send ^t
#+t::Send ^+t

; cmd-w should close current tab/mid window
#w::Send ^{F4}

; {} and []
+!8::Send {{}
+!9::Send {}}
!8::[
!9::]

;Alt-i should insert pipe like on mac
!i::|

;Alt-' should insert @ like on mac
!'::@

; Alt-shift-7 should insert backslash
!+7::Send ^!<

; Win-space should open the start menu, not change input method
#Space::
Send, {LWin down}
Send, {LWin up}
return

; mintty copy/paste with win+c and win+v
#IfWinActive, ahk_class mintty
#c::Send ^{Insert}
#v::Send +{Insert}
#IfWinActive

#IfWinActive, ahk_exe code.exe
#+e::Send ^+e
#+u::Send ^+u
#j::Send ^j
#æ::Send ^æ
#b::Send ^b
#IfWinActive

; Caps lock-> ESC
Capslock::Esc
