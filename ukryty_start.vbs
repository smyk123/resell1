Set WshShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' 1. Odpalenie serwera w tle (z Twojego folderu resell)
strPath = fso.GetParentFolderName(WScript.ScriptFullName)
WshShell.CurrentDirectory = strPath
WshShell.Run "cmd /c start.bat", 0, False

' 2. Czekamy 2 sekundy na rozruch serwera
WScript.Sleep 2000

' 3. Odpalenie konkretnego skrótu z Pulpitu
' Upewnij się, że nazwa poniżej jest IDENTYCZNA jak nazwa ikonki na pulpicie!
desktopPath = WshShell.SpecialFolders("Desktop")
WshShell.Run """" & desktopPath & "\ResellTracker.lnk""", 1, False