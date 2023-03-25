echo off
set /a mypath=%~dp0
set /a notepadpath=%cd%
set /a num=%random% %%100+1
:: Section 1: Windows 10 information
echo =========================
echo ===Circuit Innovators====
echo =========================
echo ===Script Kiddy Trials===
echo =========================
echo and you are here on this lovely day of %date% %time%
ECHO =
ECHO WINDOWS INFO
ECHO =
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"Registered Owner"
systeminfo | findstr /c:"System Type"
systeminfo | findstr /c:"Time Zone"
systeminfo | findstr /c:"Available Physical Memory"
systeminfo | findstr /c:"Logon Server"
wmic cpu get name
wmic cpu get numberofcores
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
wmic path win32_VideoController get CurrentHorizontalResolution,CurrentVerticalResolution
pause
echo =========================
echo ready to begin...........
echo =========================
echo is this the directory of the task?
echo %smypath%
echo y or n?
set /p answerToQuestion1= Type response here, please...
echo Response recieved is:  %answerToQuestion1%  on  %date% %time%
pause
if answerToQuestion1==n (echo %ERRORLEVEL%) else (echo %ERRORLEVEL%)
pause
exit 0
