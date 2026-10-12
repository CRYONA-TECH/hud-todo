@echo off
setlocal enabledelayedexpansion

set "SRC=SRC"
set "DEPLOY=DEPLOY"
set "ARCHIVE=ARCHIVE"

:: Find latest hud_todo_vX.html in SRC
set "LATEST="
set "LATEST_NAME="
set "LATEST_VER=0"

for %%F in ("%SRC%\hud_todo_v*.html") do (
    set "FNAME=%%~nF"
    set "VER=!FNAME:hud_todo_v=!"
    if !VER! GTR !LATEST_VER! (
        set "LATEST_VER=!VER!"
        set "LATEST=%%F"
        set "LATEST_NAME=%%~nF"
    )
)

if "%LATEST%"=="" (
    echo [ERROR] No hud_todo_vX.html file found in %SRC%\
    pause & exit /b 1
)

:: Stylesheet of the same version
set "LATEST_CSS=%SRC%\%LATEST_NAME%.css"
if not exist "%LATEST_CSS%" (
    echo [ERROR] Missing stylesheet %LATEST_CSS%
    pause & exit /b 1
)

echo [SRC]    %LATEST%
echo [SRC]    %LATEST_CSS%

:: Archive SRC files with their original names
copy /Y "%LATEST%" "%ARCHIVE%\%LATEST_NAME%.html" >nul
copy /Y "%LATEST_CSS%" "%ARCHIVE%\%LATEST_NAME%.css" >nul
echo [ARCHIVE] %ARCHIVE%\%LATEST_NAME%.html
echo [ARCHIVE] %ARCHIVE%\%LATEST_NAME%.css

:: Copy to DEPLOY/index.html and DEPLOY/hud_todo.css
copy /Y "%LATEST%" "%DEPLOY%\index.html" >nul
copy /Y "%LATEST_CSS%" "%DEPLOY%\hud_todo.css" >nul
echo [DEPLOY]  %DEPLOY%\index.html
echo [DEPLOY]  %DEPLOY%\hud_todo.css

echo.
echo Done. v%LATEST_VER% deployed.
pause
