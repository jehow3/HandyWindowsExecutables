@echo OFF
echo =============================
echo    SHALL WE BEGIN...
echo =============================
pause 
echo %date% %time%
:: This batch file details Windows 10, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait... Checking system information.
:: Section 1: Windows 10 information
ECHO ============================
ECHO WINDOWS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
wmic path win32_VideoController get CurrentHorizontalResolution,CurrentVerticalResolution
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
::curl ifconfig.me ::| findstr /c:"Content"
ipconfig | findstr /c:"IPv4 Address"
ipconfig | findstr /c:"IPv6 Address"
pause

