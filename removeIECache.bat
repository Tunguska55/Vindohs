@echo off

REM This script is designed to close IE, remove cache and cookies
REM and reopen IE. It's incredibly simple, but saves me a ton of 
REM time when dealing with users who need to frequently clean cache
REM but don't know how

taskkill /f /IM iexplore.exe
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
start iexplore.exe