title Fix WebRec
@echo off
@cd/d "%~dp0"

call :def_main
pause
exit

:def_main
	REGEDIT /S main.reg
	echo %cd%\webrec ^>^> "%ProgramFiles%\webrec\"

	xcopy "%cd%\bin" "%ProgramFiles%\webrec\" /s /y >nul
	
	if errorlevel 1 ( echo Please start as Admin. ) else ( echo Done! )
	exit /b
