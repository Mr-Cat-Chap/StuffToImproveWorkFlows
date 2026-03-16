@echo off
echo if error info is above this you can ignore it, CMD doens't run from network drives
echo "
echo "

::Set variables
set Resources="\*Content removed*\Resources
set OneDrive="%USERPROFILE%\*Content removed*
if exist "%UserProfile%\*Content removed*" (
	set Desktop="%UserProfile%\*Content removed*"
	) else (
		set Desktop="%UserProfile%\Desktop"
)
echo Desktop set to %Desktop%

::Copy *Content removed* to desktop
copy %OneDrive%\*Content removed*" %Desktop%

::Check Enviroment variables
echo Check and make sure Python is included twice in this string, otherwise system
echo variables have not been set, a program to do this is located in the resources folder
set EnviromentVariable="HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment"
echo Updated system variables there should be Python things at the end of the below output
echo If there aren't these need to be added, run the new computer script as admin
reg query %EnviromentVariable% /v Path
timeout /t 2

setlocal
:PipInstall
::Run install requirements via calling another bat because pip command doesn't work in the CMD window that sets them, it needs to be restarted
echo Installing pips
::Set the drive we want to run the file from within a setlocal
cd %OneDrive%\*Content removed*
call %OneDrive%\*Content removed*"

if %errorlevel% == 9009 (
	echo Pip not recognised, please run the new user program again after this timer
	echo Pip can take some time to take effect, this is just a matter of waiting
	timeout /t 300
	exit
)

if %errorlevel% == 1 (
	echo Python version out of date, updating
	python.exe -m pip install --upgrade pip
	goto PipInstall
)
endlocal

::Remove requirements.txt
::del %Desktop%\requirements.txt

echo "
echo Copy OfflineApps to Desktop
copy %OneDrive%\*Content removed*" %Desktop%
echo run OfflineApps
::Run OfflineApps.bat from the desktop
call %Desktop%\*Content removed*"

pause

::Created by *Content removed* - v 1 - 20250122

::Update made to do only the stuff a new user needs or what's left over after running the main file "2 installer new computer.bat" as well as check to make sure the OneDrive folder is synced fully - v 2 - 20250319

::Added *Content removed* to replace sensitive data in preperation for uploading to Github