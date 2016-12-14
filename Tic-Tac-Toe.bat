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
