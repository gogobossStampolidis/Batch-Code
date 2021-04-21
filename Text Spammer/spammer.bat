echo off
:startBAT
cls
echo LOADING....
timeout 3 /NOBREAK>nul
set /a spamed=0
del spam.vbs
:OptionStart
cls
echo.
echo.
echo.
echo    SPAMMER SPAMMER SPAMMER SPAMMER SPAMMER
echo.
echo 1. Make
echo 2. Exit
echo.
	set /P s=}_
		if "%s%" EQU "1" goto :generator
		if "%s%" EQU "2" goto :exit
	) ELSE (
	cls
	goto :OptionStart 

:exit
del spam.vbs
exit


:generator
echo message to spam
set /P MESS_TO_SPAM=}_
echo How many times to spam
set /P times_to_spam=}_



echo Set objShell = CreateObject("WScript.Shell")>spam.vbs
echo objShell.SendKeys "%MESS_TO_SPAM%">>spam.vbs
echo objShell.SendKeys "{ENTER}">>spam.vbs
echo objShell.SendKeys "~">>spam.vbs


:spam
echo %spamed%/%times_to_spam%
spam.vbs
cls
set /a spamed=%spamed%+1
	if /I "%spamed%" EQU "%times_to_spam%" goto startSPAM (
	) ELSE (
		goto :spam


:startSPAM
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT
goto :startBAT


		
		
		
		
		