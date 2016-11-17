@echo off 
SETLOCAL
cls
echo -------------------------------------
echo 		Select Option
echo -------------------------------------
echo 1  Create Branch
echo 2	Check-In Current Branch
echo 3  Merge with Dev Branch
echo 4	Delete Branch
echo -------------------------------------
set opt=
set /P opt=Choose the option:
set branchName=
	set /P branchName="Enter Branch Name:"
if "%opt%"=="1" (
	echo ================= Branch %branchName% creation stated=================
	git checkout dev
	git pull
	git branch %branchName%
	git push -u origin %branchName%
	echo ================= The Branch %branchName% created sucessfull=================
) 
if "%opt%"=="2" (
	git status
	git add --all
	git status
	GOTO CommentBranch
) 
if "%opt%"=="3" (echo you have enter 3) 
if "%opt%"=="4" (
	echo ================= Branch %branchName% state deleting =================
	git branch -rd origin/%branchName% 
	git branch -D %branchName% 	
	git push origin --delete %branchName%
	echo ================= The Branch %branchName% is deleted=================
) 
)
 
:CommentBranch
set /p commitComment=Enter the Commit Comment:%=%
	git commit -m "%commitComment%"
	git status
	git push origin %branchName%
	
echo on