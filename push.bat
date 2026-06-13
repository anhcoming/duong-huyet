@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ========================================
echo   DANG PUSH LEN GITHUB...
echo ========================================
echo.

REM Them tat ca thay doi
git add -A

REM Tao commit voi thoi gian hien tai
set "msg=update %date% %time%"
git commit -m "%msg%"

REM Push len nhanh hien tai
git push

echo.
echo ========================================
echo   XONG! Da push len GitHub.
echo ========================================
echo.
pause
