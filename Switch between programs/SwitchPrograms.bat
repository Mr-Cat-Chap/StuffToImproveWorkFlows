@echo off

set /A i = 0

:start

if %i% == 0 (
	call SwitchPrograms1.vbs
	set /A i=i+1
	timeout /t 300
) else (
	call SwitchPrograms2.vbs
	set /A i=i-1
	timeout /t 300
)
echo %i%
echo To stop press ctrl+c or close the window
goto start

pause