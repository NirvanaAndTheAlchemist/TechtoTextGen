@echo off
:start
echo Tech Support Text Generator
echo.
echo -Support (Customer+Location)
echo -Finalize
echo.
set /p PROGRAM= What would you like to do?:
goto %PROGRAM%


:Support
cls
set /p STORENAME= Who requested support?:
echo %STORENAME% >> tech.txt


:description
set /p DESCRIPTION= Describe support:
echo %DESCRIPTION% >> tech.txt
echo %STORENAME%-%date:~4,2%%date:~7,2%%date:~10,4%-%time:~0,2%%time:~3,2% >> tech.txt
echo: >> tech.txt


echo Support saved in text
pause
cls
goto start

:Finalize
rename "tech.txt" "%date:~4,2%%date:~7,2%%date:~10,4%-%time:~0,2%%time:~3,2%.txt"
echo.
echo Document finalized and renamed in (MM/DD/YYYY-HHMM), job well done!
pause