#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
; Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
Menu, Tray, Icon,  calculator_icon.ico ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm
; #Include, dictionarytest.ahk
#Include, solidworksDictionary.ahk

; dict := { "key1" : "value", "key2" : "value 2" } ;
;-------------2ND KEYBOARD USING LUAMACROS-----------------

; Use Window Spy to figure out window names

#IfWinActive ahk_exe Illustrator.exe
	~F24::
	FileRead, key, C:\Users\LindseyAndrade\Documents\Github\macros\luamacros\LTT Code\keypressed.txt
	
	If (key = "escape")
	Send a 
	
	else if (key = "tab")
	Send v

	else if (key = "numDelete") 
	Send {Delete}

	Return

#IfWinActive ahk_exe sldworks.exe
	~F24::
	FileRead, key, C:\Users\LindseyAndrade\Documents\Github\macros\luamacros\LTT Code\keypressed.txt

	If (key = "escape")
	{
	Send % solidworksDictionary["save"]
	MsgBox, 0, AHK Script, File Saved, 0.5
	}
	else if (key = "tab")
	{
	command = "Zoom to Fit"
	Send % solidworksDictionary["zoomFit"]
	}
	else if (key = "equals")
	{
	command = "Rebuild"
	Send % solidworksDictionary["rebuild"]
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

#IfWinActive ;---- This will allow for everything below this line to work in ANY application.i love you
	; Working example using dictionarytest.ahk
	; ^j::
	; Send % dict["key1"]
	; ; Send ^+{Esc}
	; return
	
	~F24::
	FileRead, key, C:\Users\LindseyAndrade\Documents\Github\macros\luamacros\LTT Code\keypressed.txt
	
	; tippy(key) ;<--- this function will just launch a quick tooltip that shows you what key you pressed. OPTIONAL.
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

	Return 



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


