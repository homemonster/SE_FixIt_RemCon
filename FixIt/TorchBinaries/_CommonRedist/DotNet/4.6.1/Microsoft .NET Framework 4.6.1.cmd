@ECHO OFF

reg add "HKLM\Software\Wow6432Node\Valve\Steam\Apps\CommonRedist\.NET\4.6.1" /v 4.6.1 /t REG_DWORD /d 1 /f

reg query "HKLM\Software\Microsoft\NET Framework Setup\NDP\v4\Full" /v Release 
if %ERRORLEVEL% == 0 goto KeyFound

:KeyNotFound
	start /w "" "%~dp0\NDP461-KB3102436-x86-x64-AllOS-ENU.exe" /q /norestart
	IF %ERRORLEVEL% == 3010 EXIT /B 0
	EXIT /B %ERRORLEVEL%

:KeyFound
	setlocal EnableDelayedExpansion
	FOR /F "tokens=3" %%G IN ('REG QUERY "HKLM\Software\Microsoft\NET Framework Setup\NDP\v4\Full" /v Release') DO set /a netversion=%%G

	if %netversion% GEQ 394254 (
		endlocal EnableDelayedExpansion
		EXIT /B 0
	) else (
		endlocal EnableDelayedExpansion
		start /w "" "%~dp0\NDP461-KB3102436-x86-x64-AllOS-ENU.exe" /q /norestart
		IF %ERRORLEVEL% == 3010 EXIT /B 0
		EXIT /B %ERRORLEVEL%
	)
	




