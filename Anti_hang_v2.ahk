#Requires AutoHotkey v2.0

SetKeyDelay 0, 100

MyGui := Gui(, "Anti-Hang")
;MyGui.BackColor := "FFFFFF"
;WinSetTransColor("FFFFFF", MyGui)
MyGui.SetFont("cGreen s16",)
MyGui.Opt("+AlwaysOnTop +Disabled -SysMenu -Caption +ToolWindow")
MyGui.Add("Text",, "Anti-Hang Script is Active")
MyGui.SetFont("cDefault s8",)
MyGui.Add("Text",, "                              ESC to Quit") ; can you tell I was lazy ?
MyGui.Show("x0 y0 NoActivate")

; ^^ Setting up a overcomplicated UI element so you can tell the script is running


; -----------------------------------------------
; USER AREA START



avorion_launch_bat := "avorion_server.bat"



; USER AREA END
; -----------------------------------------------
; Infinite Loop, keeps the script running
while 1
{
try
{
; calls the Loop_send function every 5 seconds
 Loop_send 	
 Sleep 5000
}
catch
{
	try 
	{	
		; tries to start the server - waits to see if it works
		Run avorion_launch_bat
		Sleep 15000
	}
	catch 
	{
		; failsafe, stops the script from spamming Enter if it can't start the server
		MsgBox "Anti-Hang has encountered an unexpected issue - stopping"
		Pause
	}
}

Loop_send()
{	
	; sends a Enter keypress to cmd when called - the only open cmd window should be the avorion server one
	ControlSend "{Enter}",, "ahk_exe cmd.exe"
}
}
; to stop the script, press escape.
Esc::ExitApp
