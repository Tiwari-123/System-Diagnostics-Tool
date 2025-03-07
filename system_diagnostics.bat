@echo off
:: System Health Check and Network Troubleshooting Script

:: Display system information
echo System Information:
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
echo.

:: Check CPU and Memory usage
echo CPU and Memory Usage:
tasklist | findstr "System Idle Process"
echo.

:: Check Disk Space
echo Disk Space Information:
dir C:\ | find "bytes free"
echo.

:: Check Network Connectivity
echo Checking network connectivity (ping test to Google):
ping -n 4 google.com
echo.

:: Display IP Configuration
echo IP Configuration:
ipconfig /all
echo.

:: Save output to a log file
echo Saving report to system_diagnostics.log...
(systeminfo | findstr /B /C:"OS Name" /C:"OS Version" & tasklist | findstr "System Idle Process" & dir C:\ | find "bytes free" & ipconfig /all) > system_diagnostics.log
echo Report saved successfully!

:: Pause to view results
pause
