::MADE BY GOGOBOSS_STAMPOLIDIS
::SUBSCRIBE TO MY YT CHANNEL
echo off
cls
goto :Welcome



:Welcome
cls
echo Welcome to my error generator
echo Dont Leave ANY space in the options or it will not show up!
echo.
echo.
echo.
echo.
echo 1) Make An Error
echo 2) Exit
echo.
echo.
echo.
echo.
echo.

	set /P s=}_
		if "%s%" EQU "1" goto :generator
		if "%s%" EQU "2" goto :exit
	) ELSE (
	cls 
	goto :welcome
	
:exit
cls 
echo.
echo.
echo.
echo.
echo.
echo.
echo Are u sure u want to exit? Anwser YES or NO
echo.
echo.
echo.
echo.
echo.
	set /P e=}_
		if "%e%" EQU "NO" GOTO :welcome
		if "%e%" EQU "yes" goto :exitsure
	) ELSE (
	cls 
	
	
:exitsure
exit


:generator
cls
echo.
echo.
echo.
echo.
echo SELECT THE MESSAGE OF YOU ERROR
echo.
set /P Message_choise=}_

					

:select_button
cls
echo.
echo.
echo.
echo.
echo SELECT THE BUTTON OF YOU ERROR
echo.
echo.
echo 0 - OK
echo 1 - OK and Cancel
echo 2 - Abort, Retry and Ignore
echo 3 - Yes, No and Cancel
echo 4 - Yes and No
echo 5 - Retry and Cancel

set /P button_choice=}_
		if /I "%button_choice%" EQU "0" goto :icon_select (
		) ELSE (
			if /I "%button_choice%" EQU "1" goto :icon_select (
			) ELSE (
				if /I "%button_choice%" EQU "2" goto :icon_select (
				) ELSE (
					if /I "%button_choice%" EQU "3" goto :icon_select (
					) ELSE (
						if /I "%button_choice%" EQU "4" goto :icon_select (
						) ELSE (
							if /I "%button_choice%" EQU "5" goto :icon_select (
							) ELSE (
							goto :select_button



:icon_select
cls
echo.
echo.
echo.
echo.
echo SELECT THE ICON OF YOU ERROR
echo.
echo.
echo 1 - no icon
echo 2 - Critical Icon (a.k.a. "X" icon)
echo 3 - Question Icon (a.k.a. "?" icon)
echo 4 - Warning Icon (a.k.a. "!" icon)
echo 5 - Info Icon (a.k.a. "i" icon)
echo.
echo.
set /P icon_choice=
	if /I "%icon_choice%" EQU "1" goto :title_ofErroryeet (
	) ELSE (
		if /I "%icon_choice%" EQU "2" goto :title_ofErroryeet (
		) ELSE (
			if /I "%icon_choice%" EQU "3" goto :title_ofErroryeet (
			) ELSE (
				if /I "%icon_choice%" EQU "4" goto :title_ofErroryeet (
				) ELSE (
					if /I "%icon_choice%" EQU "5" goto :title_ofErroryeet (
					) ELSE (
					goto :icon_select
:title_ofErroryeet
cls
echo.
echo.
echo.
echo.
echo SELECT THE TITLE OF YOU ERROR
echo.
set /P Title_choise=}_
	if /I Title_choice EQU " " goto :calc
cls




:calc
if /I "%icon_choice%" EQU "1" set /A "icon_chosen" = 0
if /I "%icon_choice%" EQU "2" set /A "icon_chosen" = 16
if /I "%icon_choice%" EQU "3" set /A "icon_chosen" = 32
if /I "%icon_choice%" EQU "4" set /A "icon_chosen" = 48
if /I "%icon_choice%" EQU "5" set /A "icon_chosen" = 64











echo x=msgbox("%Message_choise%", %button_choice%+%icon_chosen%, "%Title_choise%")>generated_error.txt
rename generated_error.txt generated_error.vbs
generated_error.vbs
cls
echo.
echo.
echo.
echo.
echo     !!THANKS FOR USING ERROR_GENERATOR.bat!!
echo.
echo.
echo.
echo.
timeout -1
echo returning into start!
del generated_error.vbs
timeout 5 /NOBREAK>nul
goto :welcome