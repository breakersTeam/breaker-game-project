@echo off
echo === Pulling latest changes before launching Godot ===
git pull origin main

echo === Starting Godot Engine ===
start "" "%USERPROFILE%\Desktop\Godot.exe" "%USERPROFILE%\Desktop\project.godot"
pause
