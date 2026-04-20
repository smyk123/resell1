@echo off
echo Starting local web server for ResellTracker...
echo.
echo Please wait. Your browser should open automatically.
echo (Requires NodeJS to be installed)
echo.
start http://localhost:3000
npx serve -l 3000 .
pause
