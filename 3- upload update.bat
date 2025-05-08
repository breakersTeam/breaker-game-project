@echo off
echo === Adding all changes... ===
git add .

set /p commitMsg=Enter your commit message: 
if "%commitMsg%"=="" set commitMsg=update

git commit -m "%commitMsg%"

echo === Pushing to GitHub... ===
git push origin main
pause
