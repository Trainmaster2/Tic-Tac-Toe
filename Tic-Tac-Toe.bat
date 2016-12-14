@echo off
cls
:setup
set turn=1
set won=0
set a1= 
set a2= 
set a3= 
set b1= 
set b2= 
set b3= 
set c1= 
set c2= 
set c3= 
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
echo   %a1%║%b1%║%c1%
echo   ═╬═╬═
echo   %a2%║%b2%║%c2%
echo   ═╬═╬═
echo   %a3%║%b3%║%c3%
