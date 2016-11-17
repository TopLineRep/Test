@echo off
cls
echo -------------------------------------
echo 		Select Option
echo -------------------------------------
echo 1  Create Branch
echo 2  Merge Branch
echo 3  Sync Origin
echo -------------------------------------
set opt=
set /P opt=Choose the option:
if "%opt%"=="1" (echo you have enter 1) else (echo you have other option)
echo on