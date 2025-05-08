@echo off
cls
echo === Pulling latest changes ===
git pull origin main

echo === Launching Godot ===
start /wait "" "%USERPROFILE%\Desktop\Godot.exe" "%USERPROFILE%\Desktop\breaker-game-project\project.godot" 

echo === Checking for changes ===
git status

git diff --quiet
IF ERRORLEVEL 1 (
    echo === Committing changes... ===
    git add .
    set /p commitMsg=Enter your commit message: 
    git commit -m "%commitMsg%"
    git push origin main
) ELSE (
    echo === No changes to commit ===
)
pause
