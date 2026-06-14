@echo off
color a
echo Enter the repository link:
set /P link=""
git clone %link%
cls
echo Cloned Repository, please make your changes, then press Enter.
pause >nul
echo Enter the repository name:
set /P repositoryname=""
cd %repositoryname% >nul
git init
cls
git add --all
cls
echo Enter the changes:
set /P commit=""
git commit -m "%commit%"
cls
echo Press Enter to push the changes to the server
pause >nul
git push origin main
cls
echo Changes got pushed, press any key to end the process
pause >nul