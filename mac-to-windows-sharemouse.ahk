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
#f::Send ^f

#1::Send ^1
#2::Send ^2
#3::Send ^3
#4::Send ^4
#5::Send ^5
#6::Send ^6
#7::Send ^7
#8::Send ^8
#9::Send ^9
#0::Send ^0

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

;The ½-key should insert $ like on mac
½::$

;Alt+backspace and arrow keys should work like ctrl+*, like on mac.
!Backspace::Send ^{Backspace}

#IfWinNotActive ahk_exe chrome.exe
!Left::Send ^{Left}
<!+Left::Send ^+{Left}
!Right::Send ^{Right}
<!+Right::Send ^+{Right}
#IfWinNotActive

; Alt-shift-7 should insert backslash
!+7::Send ^!<

; Win-space should open the start menu, not change input method
#Space::
Send, {LWin down}
Send, {LWin up}
return

; Caps lock-> ESC
Capslock::Esc

; mintty copy/paste with win+c and win+v
#IfWinActive, ahk_class mintty
#c::Send ^{Insert}
#v::Send +{Insert}
#IfWinActive

; VSCode keys
#IfWinActive, ahk_exe code.exe
#+e::Send ^+e
#+f::Send ^+f
#+u::Send ^+u
#+p::Send ^+p
#+g::Send ^+g
#+x::Send ^+x
#æ::Send ^æ
#j::Send ^j
#k::Send ^k
#p::Send ^p
#b::Send ^b
#IfWinActive

