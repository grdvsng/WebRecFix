@echo off
@cd/d "%~dp0"

ûåôêå İREGEDIT /S main.reg
echo %cd%\webrec

xcopy "%cd%\webrec" "C:\Program Files\webrec\" /s /y

pause

