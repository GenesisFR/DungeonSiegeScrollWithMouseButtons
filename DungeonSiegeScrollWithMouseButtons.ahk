#Requires AutoHotkey v2.0
#SingleInstance

; Window group for Dungeon Siege
GroupAdd("DungeonSiege", "ahk_exe DSLOA.exe")
GroupAdd("DungeonSiege", "ahk_exe DSLOAMod.exe")
GroupAdd("DungeonSiege", "ahk_exe DSMod.exe")
GroupAdd("DungeonSiege", "ahk_exe DungeonSiege.exe")

; Hotkeys active only in Dungeon Siege when CapsLock is toggled on
#HotIf WinActive("ahk_group DungeonSiege") && GetKeyState("CapsLock", "T")
WheelUp::PgUp
WheelDown::PgDn
XButton1::SetTimer(PushPgDn, 10)
XButton1 up::SetTimer(PushPgDn, 0), Send("{PgDn up}")
XButton2::SetTimer(PushPgUp, 10)
XButton2 up::SetTimer(PushPgUp, 0), Send("{PgUp up}")

PushPgDn()
{
	if GetKeyState("XButton1", "P")
		Send("{PgDn DownR}")
}

PushPgUp()
{
	if GetKeyState("XButton2", "P")
		Send("{PgUp DownR}")
}
