@echo off
cls

echo.
echo === Pulling latest changes before launching Godot ===
git pull origin main

echo.
echo === Starting Godot Engine ===
start /wait "" "%USERPROFILE%\Desktop\Godot.exe" "%USERPROFILE%\Desktop\breakers-game - Copy\breaker-game-project"

echo.
echo === Adding all changes... ===
git add .

set commitMsg=update

git commit -m "%commitMsg%"

echo.
echo === Pushing to GitHub... ===
git push origin main

pause
