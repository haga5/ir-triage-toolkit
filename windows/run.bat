@echo off
rem Collect data.

rem Make sure we're Admin.
net file >nul 2>nul
if errorlevel 1 (
	echo Must be Admin!
	echo Press any key to exit...
	pause >nul
	goto :eof
)

rem Where are our binaries?
if not exist bin\bash.exe (
	echo Windows IR binaries cannot be found.
	echo This script must be run inside its own directory.
	echo Press any key to exit...
	pause >nul
	goto :eof
)

rem Get out of this ridiculous Windows shell and into something more useful.
bin\bash.exe sh\run.sh %1
echo Press any key to exit...
pause >nul
