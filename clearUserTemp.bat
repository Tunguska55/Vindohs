@echo off
cd /D %temp%
@REM Makes sure to remove directories too
for /d %%D in (*) do rd /s /q "%%D"
@REM stops del from asking interactively to delete
del /f /q *