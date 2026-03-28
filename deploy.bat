@echo off
setlocal enabledelayedexpansion

set "SRC=SRC"
set "DEPLOY=DEPLOY"
set "ARCHIVE=ARCHIVE"

:: Find latest hud_todo_vX.html in SRC
set "LATEST="
set "LATEST_VER=0"

for %%F in ("%SRC%\hud_todo_v*.html") do (
    set "FNAME=%%~nF"
    set "VER=!FNAME:hud_todo_v=!"
    if !VER! GTR !LATEST_VER! (
        set "LATEST_VER=!VER!"
        set "LATEST=%%F"
    )
)

if "%LATEST%"=="" (
    echo [ERROR] Aucun fichier hud_todo_vX.html trouve dans %SRC%\
    pause & exit /b 1
)

echo [SRC]    %LATEST%

:: Archive current DEPLOY/index.html if it exists
if exist "%DEPLOY%\index.html" (
    for /f "tokens=1-3 delims=-" %%a in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set "TODAY=%%a-%%b-%%c"
    set "ARCHIVE_NAME=%ARCHIVE%\!TODAY!_v%LATEST_VER%.html"
    copy /Y "%DEPLOY%\index.html" "!ARCHIVE_NAME!" >nul
    echo [ARCHIVE] !ARCHIVE_NAME!
)

:: Copy to DEPLOY/index.html
copy /Y "%LATEST%" "%DEPLOY%\index.html" >nul
echo [DEPLOY]  %DEPLOY%\index.html

echo.
echo Done. v%LATEST_VER% deploye.
pause
