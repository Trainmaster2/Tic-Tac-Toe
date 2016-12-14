@echo off
cls
:setup
set turn=1
set won=0
set a1=.
set a2=.
set a3=.
set b1=.
set b2=.
set b3=.
set c1=.
set c2=.
set c3=.
set C1=0
set C2=0
set XM=0
set OM=0
echo Is Player 1 a...
echo.
echo (1) Player
echo (2) CPU
choice /c 12 /n
set P1=%errorlevel%

set P2=1
goto verify

cls
echo Is Player 2 a...
echo.
echo (1) Player
echo (2) CPU
choice /c 12 /n
set P2=%errorlevel%

:verify
cls
if "%P1%"=="1" (echo Player 1 is a Player)
if "%P1%"=="2" (echo Player 1 is a CPU)
if "%P2%"=="1" (echo Player 2 is a Player)
if "%P2%"=="2" (echo Player 2 is a CPU)
echo.
choice /c yn /n /m Is this correct? (Y/N)

:display
echo.
echo.
echo   %a1%|%b1%|%c1%
echo   -+-+-
echo   %a2%|%b2%|%c2%
echo   -+-+-
echo   %a3%|%b3%|%c3%
pause<nul
if "%turn%"=="1" (call "Program Files\P1_%P1%.bat")
if "%turn%"=="2" (call "Program Files\P2_%P2%.bat")
call "Program Files\MD.bat"
if "%a1%"=="%a2%" (if "%a2%"=="%a3%" (call "Program Files\Win\1%a1%.bat"))
if "%b1%"=="%b2%" (if "%b2%"=="%b3%" (call "Program Files\Win\2%b1%.bat"))
if "%c1%"=="%c2%" (if "%c2%"=="%c3%" (call "Program Files\Win\3%c1%.bat"))
if "%a1%"=="%b1%" (if "%b1%"=="%c1%" (call "Program Files\Win\4%a1%.bat"))
if "%a2%"=="%b2%" (if "%b2%"=="%c2%" (call "Program Files\Win\5%a2%.bat"))
if "%a3%"=="%b3%" (if "%b3%"=="%c3%" (call "Program Files\Win\6%a3%.bat"))
if "%a1%"=="%b2%" (if "%b2%"=="%c3%" (call "Program Files\Win\7%a1%.bat"))
if "%a3%"=="%b2%" (if "%b2%"=="%c1%" (call "Program Files\Win\8%a3%.bat"))
if "%won%"=="1" (goto setup)
goto display
