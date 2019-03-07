title Fix WebRec
@echo off
@cd/d "%~dp0"

call :def_main
pause
exit

:def_main
	REGEDIT /S main.reg
	echo %cd%\webrec

	xcopy "%cd%\bin" "C:\Program Files\webrec\" /s /y
	cls
	
	if errorlevel 1 ( echo Please start as Admin. ) else ( echo Done! )
