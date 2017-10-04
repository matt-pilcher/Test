#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.

SendMode Input ; Makes 'Send' synonymous with SendInput or SendPlay rather than the default .

SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.



MsgBox After closing this box, the coordinates of your mouse click will be logged. Press 'Esc' to close the program

Array := []


Loop
{
	KeyWait, LButton, D ; Wait for the left mouse button to be pressed down.

	MouseGetPos, startxpos, startypos


	AHKCommand = Click %startxpos%, %startypos%
	clipboard = %AHKCommand%
	winactivate, Untitled - Notepad
	WinWaitActive, Untitled - Notepad
	Send ^v
	Send {enter}

}

; Action Autofill

!c:: ; Basic click and copy
	send, Sleep 100 {enter}
	sendRaw, Send ^c 
	send, {enter}
return

!v:: ; Highlight all and paste
	send, Sleep 300 {enter} 
	sendRaw, Send ^a 
	send, {enter}
	send, Sleep 100 {enter}
	sendRaw, Send ^v 
	send, {enter}
	send, sleep 100 {enter}
return

!s:: ; Open source and paste
	send, Sleep 300 {enter}
return

!d:: ; Page down
	send, Sleep 100 {enter}
	sendRaw, Send {PgDn} 
	send, {enter}
	send, Sleep 300 {enter}
return




Esc::ExitApp






