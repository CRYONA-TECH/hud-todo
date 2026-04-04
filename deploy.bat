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

:: Archive SRC file with original name
copy /Y "%LATEST%" "%ARCHIVE%\!FNAME!.html" >nul
echo [ARCHIVE] %ARCHIVE%\!FNAME!.html

:: Copy to DEPLOY/index.html
copy /Y "%LATEST%" "%DEPLOY%\index.html" >nul
echo [DEPLOY]  %DEPLOY%\index.html

echo.
echo Done. v%LATEST_VER% deploye.
pause
