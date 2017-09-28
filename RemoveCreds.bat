cmdkey.exe /list > "%TEMP%\List.txt"
.findstr.exe Target "%TEMP%\List.txt" > "%TEMP%\tokensonly.txt"
