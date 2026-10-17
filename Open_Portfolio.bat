@echo off
title RAYHAN3030 Portfolio Server
cd /d "%~dp0"
echo ======================================================================
echo    RAYHAN3030 - Motion Designer & Video Editor Portfolio
echo    Starting local web server to enable smooth YouTube playback
echo    (Prevents YouTube Error 153 caused by direct file:/// protocol)
echo ======================================================================
echo.
echo Server starting at http://localhost:8000 ...
echo Opening your browser now...
echo.

start "" "http://localhost:8000/index.html"
python -m http.server 8000

if %errorlevel% neq 0 (
    echo.
    echo Python server stopped or not found.
    pause
)
