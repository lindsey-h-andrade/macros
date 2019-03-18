#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; HELLO, poeple who want info about making a second keyboard, using luamacros!

; Here's my LTT video about how I use the 2nd keyboard with Luamacros: https://www.youtube.com/watch?v=Arn8ExQ2Gjg

; And Tom's video, which unfortunately does not have info on how to actually DO it: https://youtu.be/lIFE7h3m40U?t=16m9s

; If you have never used AutoHotKey, you must take this tutorial before proceeding!
; https://autohotkey.com/docs/Tutorial.htm

; So you will need luamacros, of course.
; Luamacros: http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794
; AutohotKey: https://autohotkey.com/

; However, I no longer use luamacros, because I believe interecept.exe is even better! My current code is available in "ALL_MULTIPLE_KEYBOARD_ASSIGNMENTS.ahk"

; Lots of other explanatory videos other AHK scripts can be found on my youtube channel! https://www.youtube.com/user/TaranVH/videos 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;-------------2ND KEYBOARD USING LUAMACROS-----------------

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

	tippy(command) ;<--- this function will just launch a quick tooltip that shows you what key you pressed. OPTIONAL.

	Return ;from luamacros F24
	;THE BLOCK OF CODE ABOVE is the original, simple Luamacros-dependant script.


	;;;ALL THE CODE BELOW CAN BE THE ACTUAL FUNCTIONS THAT YOU WANT TO CALL;;;


	;;;;;;temporary tooltip maker;;;;;;
	Tippy(tipsHere, wait:=333)
	{
	ToolTip, %tipsHere% TP,,,8
	SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
	}
	noTip:
		ToolTip,,,,8
		;removes the tooltip
	return
	;;;;;;/temporary tooltip maker;;;;;;

