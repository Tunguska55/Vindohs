'The purpose of this script is to create new env variables '
Set WshShell = WScript.CreateObject("WScript.Shell")

'This is for the System Environment Variable ***WILL REQUIRE ADMIN***
'HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\NewKey

'This is for the User Environment Variable
'HKCU\Environment\NewKey

If WScript.Arguments.Named.Exists("elevated") = False Then
  CreateObject("Shell.Application").ShellExecute "wscript.exe", """" & WScript.ScriptFullName & """ /elevated", "", "runas", 1
  WScript.Quit
End If

strUserReg = "HKCU\Environment\QT_OPENGL"
strSystemReg = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\QT_OPENGL"
strNewSetting = "angle"

'Format of RegWrite = KeyPath, valueOfKey, keyType (REG_SZ is usually best)'
WshShell.RegWrite strSystemReg, strNewSetting, "REG_SZ"
WshShell.RegWrite strUserReg, strNewSetting, "REG_SZ"


