set /p user1=<user1.txt
set /p user2=<user2.txt
set /p user3=<user3.txt
echo off
cls

goto :start



:start 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo     WELCOME TO USER POINT SAVE
echo.
echo.
echo.
echo.
echo.
echo    SELECT A USER TO EDIT
echo.
echo.
echo.
echo.
echo   1) user1
echo   2) user2
echo   3) user3
echo   4) exit
echo.
echo.


set /P select_user=}_
	if /I "%select_user%" EQU "1" goto :user1 (
	) ELSE (
		if /I "%select_user%" EQU "2" goto :user2 ( 
		) ELSE (
			if /I "%select_user%" EQU "3" goto :user3 ( 
			) ELSE (
				if /I "%select_user%" EQU "4" goto :EXIT ( 
				
:exit
exit



:user1
cls
echo.
echo.
echo.
echo.
echo 1) Add point
echo 2) Take A Point
echo 3) RESET
echo 4) SAVE
echo.
echo.
echo This User Has %user1% points!
echo.
echo.
echo.
echo.

		set /P TEST=
		if /I "%TEST%" EQU "1" goto :addPOINT_user1
		if /I "%TEST%" EQU "2" goto :SHOWPOINT_user1
		if /I "%TEST%" EQU "3" GOTO :reset_user1
		if /I "%TEST%" EQU "4" goto :Save_user_1
	) ELSE (
		cls 
		goto :user1
	)




:addPOINT_user1

set /P ADDPOINT1=Write how many points to add: 
set /A user1=%user1%+"%ADDPOINT1%"
goto :user1

:SHOWPOINT_user1

set /P TAKEPOINT1=Write how many points to take: 
set /A user1=%user1%-"%TAKEPOINT1%"
goto :user1

:reset_user1
Set /A user1=0
goto :user1

:Save_user_1
del user1.txt
echo %user1%>user1.txt
cls
goto :start

:user2
cls
echo.
echo.
echo.
echo.
echo 1) Add point
echo 2) Take A Point
echo 3) RESET
echo 4) SAVE
echo.
echo.
echo This User Has %user2% points!
echo.
echo.
echo.
echo.

		set /P TEST2=
		if /I "%TEST2%" EQU "1" goto :addPOINT_user2
		if /I "%TEST2%" EQU "2" goto :SHOWPOINT_user2
		if /I "%TEST2%" EQU "3" GOTO :reset_user2
		if /I "%TEST2%" EQU "4" goto :Save_user_2
	) ELSE (
		cls 
		goto :user2
	)




:addPOINT_user2

set /P ADDPOINT2=Write how many points to add: 
set /A user2=%user2%+"%ADDPOINT2%"
goto :user2

:SHOWPOINT_user2

set /P TAKEPOINT2=Write how many points to take: 
set /A user2=%user2%-"%TAKEPOINT2%"
goto :user2

:reset_user2
Set /A user2=0
goto :user2

:Save_user_2
del user2.txt
echo %user2%>user2.txt
cls
goto :start



:user3
cls
echo.
echo.
echo.
echo.
echo 1) Add point
echo 2) Take A Point
echo 3) RESET
echo 4) SAVE
echo.
echo.
echo This User Has %user3% points!
echo.
echo.
echo.
echo.

		set /P TEST3=
		if /I "%TEST3%" EQU "1" goto :addPOINT_user3
		if /I "%TEST3%" EQU "2" goto :SHOWPOINT_user3
		if /I "%TEST3%" EQU "3" GOTO :reset_user3
		if /I "%TEST3%" EQU "4" goto :Save_user_3
	) ELSE (
		cls 
		goto :user3
	)




:addPOINT_user3

set /P ADDPOINT=Write how many points to add: 
set /A user3=%user3%+"%ADDPOINT3%"
goto :user3

:SHOWPOINT_user3

set /P TAKEPOINT=Write how many points to take: 
set /A user3=%user3%-"%TAKEPOINT3%"
goto :user3

:reset_user2
Set /A user2=0
goto :user3

:Save_user_2
del user3.txt
echo %user3%>user3.txt
cls
goto :start













goto :start