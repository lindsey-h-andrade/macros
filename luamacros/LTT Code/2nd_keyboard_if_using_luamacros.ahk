#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
; Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
Menu, Tray, Icon,  calculator_icon.ico ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm


;-------------2ND KEYBOARD USING LUAMACROS-----------------

; Use Window Spy to figure out window names

#IfWinActive ahk_exe Illustrator.exe
	~F24::
	FileRead, key, C:\Users\LindseyAndrade\Documents\Github\macros\luamacros\LTT Code\keypressed.txt
	
	If (key = "escape")
	Send a 
	
	else if (key = "tab")
	Send v

	Return

#IfWinActive ahk_exe SLDWORKS.exe
	~F24::
	FileRead, key, C:\Users\Lindsey\Documents\GitHub\macros\luamacros\LTT Code\keypressed.txt

	If (key = "escape")
	{
	command = "Save"
	Send ^s
	}
	else if (key = "tab")
	{
	command = "Zoom to Fit"
	Send ^f
	}
	else if (key = "equals")
	{
	command = "Rebuild"
	Send ^b
	}
	else if (key = "numDiv")
	{
	command = ""
	Send /
	}
	else if (key = "numMult")
	{
	command = ""
	Send *
	}
	else if (key = "backspace")
	{
	command = ""
	Send 00
	}
	else if (key = "num7")
	{
	command = "View: Planes"
	Send +p
	}
	else if (key = "num8")
	{
	command = "View: Sketches"
	Send +t
	}
	else if (key = "num9")
	{
	command = "View: Sketch Relations"
	Send +r
	}
	else if (key = "numMinus")
	{
	command = "Normal To"
	Send n
	}
	else if (key = "num4")
	{
	command = "Fillet"
	Send f
	}
	else if (key = "num5")
	{
	command = "Reference Plane"
	Send g
	}
	else if (key = "num6")
	{
	command = "Mirror"
	Send +m
	}
	else if (key = "numPlus")
	{
	command = "Measure"
	Send m
	}
	else if (key = "num1")
	{
	command = "Extrude Cut"
	Send c
	}
	else if (key = "num2")
	{
	command = "Extrude Boss"
	Send b
	}
	else if (key = "num3")
	{
	command = ""
	Send 3
	}
	else if (key = "enter")
	{
	command = "Enter"
	Send {Enter}
	}
	else if (key = "num0")
	{
	command = "Escape"
	Send {Esc}
	}
	else if (key = "numDelete")
	{
	command = "Delete"
	Send {Delete}
	}

	; tippy(command)

	Return ;from luamacros F24

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.
	~F24::
	FileRead, key, C:\Users\LindseyAndrade\Documents\Github\macros\luamacros\LTT Code\keypressed.txt
	
	tippy(key) ;<--- this function will just launch a quick tooltip that shows you what key you pressed. OPTIONAL.
	If (key = "escape")
	Send i love you
	else if (key = "tab")
	Send tab
	else if (key = "equals")
	Send equals
	else if (key = "numDiv")
	Send divide
	else if (key = "numMult")
	Send multiply
	else if (key = "backspace")
	Send backspace
	else if (key = "num7")
	Send num7
	else if (key = "num8")
	Send num8
	else if (key = "num9")
	Send num9
	else if (key = "numMinus")
	Send num9
	else if (key = "num4")
	Send num9
	else if (key = "num5")
	Send num9
	else if (key = "num6")
	Send num9
	else if (key = "numPlus")
	Send num9
	else if (key = "num1")
	Send num9
	else if (key = "num2")
	Send num9
	else if (key = "num3")
	Send num9
	else if (key = "enter")
	Send num9
	else if (key = "num0")
	Send num9
	else if (key = "numDelete")
	Send num9

	; else if(key = "p")
	; preset("flip vertical")
	; else if(key = "i")
	; 	{
	; 	preset("multiply")
	; 	;note that if you want to have multiple lines, you must use { } thingies.
	; 	}
	; else if (key = "leftbracket")
	; preset("pop in motion") 
	; else if(key = "rightbracket")
	; preset("pop out motion")

	; else if (key = "y")
	; preset("pop in transform") 
	; else if(key = "u")
	; preset("pop out transform")

	; else if(key = "m")
	; preset("pan down")
	; else if(key = "j")
	; preset("pan up")
	; else if(key = "n")
	; preset("pan left")
	; else if(key = "comma")
	; preset("pan right")
	; else if(key = "h")
	; preset("zoom fast")
	; else if(key = "k")
	; preset("zoom slow")

	; else if(key = "period")
	; preset("crop small")
	; else if(key = "slash")
	; preset("crop full")
	; else if(key = "singlequote")
	; preset("warp")

	; else if(key = "semicolon")
	; preset("blur with edges")
	; else if(key = "l")
	; preset("LTT")

	; else if(key = "F6")
	; insertSFX("buzz")
	; else if(key = "F7")
	; insertSFX("ding")
	; else if(key = "F8")
	; insertSFX("bleep")
	; else if(key = "F9")
	; insertSFX("woosh")
	; else if(key = "F10")
	; insertSFX("woosh TSFX")
	; else if(key = "F11")
	; insertSFX("bwoop")
	; else if(key = "F12")
	; insertSFX("pop")
	; else if(key = "F5")
	; insertSFX("SEARCH")

	; ;[[[[[[[[begin transitions]]]]]]]]]]]]

	; else if (key = "insert") ;FLASH TRANSITIONS
	; preset("impact flash long") ;it turns out you can SAVE transition presets from the effect controls triple line mnu button. But only cross dissolve and 3rd party transitions. I use filmimpact.net and red giant universe transitions. Lot of good free ones!
	; else if(key = "home") 
	; preset("impact flash med")
	; else if(key = "pageup")
	; preset("impact flash short")
	; else if(key = "delete") ;DISSOLVE TRANSITIONS
	; preset("cross dissolve long")
	; else if(key = "end")
	; preset("cross dissolve med")
	; else if(key = "pagedown")
	; preset("cross dissolve short")
	; else if(key = "q") ;WIPE transitions
	; recallTransition(20)
	; else if(key = "w")
	; recallTransition(21)
	; else if(key = "e")
	; recallTransition(22)
	; else if(key = "a")
	; recallTransition(23)
	; ; else if(key = "s")
	; ; recallTransition(??) ; iris
	; else if(key = "d")
	; recallTransition(24)
	; else if(key = "z")
	; recallTransition(25)
	; else if(key = "x")
	; recallTransition(26)
	; else if(key = "c")
	; recallTransition(27)

	; else if(key = "minus")
	; audioMonoMaker(0)
	; else if(key = "equals")
	; audioMonoMaker(1)


	; else if(key = "r")
	; copy(1)
	; else if(key = "f")
	; copy(2)
	; else if(key = "v")
	; copy(3)

	; else if(key = "t")
	; paste(1)
	; else if(key = "g")
	; paste(2)
	; else if(key = "b")
	; paste(3)

	; else if(key = "up") ;impact push transitions - fun fact, you can SAVE TRANSITION PRESETS if they are cross dissolve or from a 3rd party. In the effect controls triple line menu.
	; preset("push up")
	; else if(key = "left")
	; preset("push left")
	; else if(key = "down")
	; preset("push down")
	; else if(key = "right")
	; preset("push right")

	; else if(key = "enter")
	; Send ^!e ;in premiere, set this (CTRL ALT E) to "remove effects"

	; else if(key = "num0") ;just mirroring the normal numpad - IDK how else to do this.
	; Send {Numpad0}
	; else if(key = "num1")
	; Send {Numpad1}
	; else if(key = "num2")
	; Send {Numpad2}
	; else if(key = "num3")
	; Send {Numpad3}
	; else if(key = "num4")
	; Send {Numpad4}
	; else if(key = "num5")
	; Send {Numpad5}
	; else if(key = "num6")
	; Send {Numpad6}
	; else if(key = "num7")
	; Send {Numpad7}
	; else if(key = "num8")
	; Send {Numpad8}
	; else if(key = "num9")
	; Send {Numpad9}
	; else if(key = "numDiv")
	; Send {NumpadDiv}
	; else if(key = "numMult")
	; Send {NumpadMult}

	Return ;from luamacros F24




Tippy(tipsHere, wait:=333)
	; tippy is nice but makes the inputs really slow and buggy.
	; To use, put >command = "STRING" when the key is pressed
	; and then at the end of the IfWinActive block, put >tippy(command)
	{
	ToolTip, %tipsHere% TP,,,8
	SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
	}
	noTip:
		ToolTip,,,,8
		;removes the tooltip
	return

;; examples of how to put functions into keys
insertSFX(parameter){
	msgbox, you launched insertSFX with the parameter %parameter%
	msgbox, obviously you can now put any function you like in here.
}


audiomonomaker(parameter){
	msgbox, you launched audiomonomaker with the parameter %parameter%
	msgbox, you can grab the real function from Almost_All_Premiere_Functions.ahk
}

preset(parameter){
	msgbox, you launched PRESET with the parameter %parameter%
}


