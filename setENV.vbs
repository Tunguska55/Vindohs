'The purpose of this script is to create new env variables '
Set WshShell = WScript.CreateObject("WScript.Shell")

'This is for the System Environment Variable ***WILL REQUIRE ADMIN***
'HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\NewKey

'This is for the User Environment Variable
'HKCU\Environment\NewKey

strReg = "HKCU\Environment\QT_OPENGL"
strNewSetting = "angle"
'Format of RegWrite = KeyPath, valueOfKey, keyType (REG_SZ is usually best)'
WshShell.RegWrite strReg, strNewSetting, "REG_SZ"

'Once this is complete, run the command to verify:
'reg query HKCU\Environment /v NameOfKey'
