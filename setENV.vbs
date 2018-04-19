Set WshShell = WScript.CreateObject("WScript.Shell")

'This is for system I believe
'strReg = "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\Path"

'Let's try one for user
strReg = "HKCU\Environment\QT_OPENGL"
strSetting = WshShell.RegRead(strReg)
strNewSetting = "angle"
WshShell.RegWrite strReg, strNewSetting, "REG_SZ"
