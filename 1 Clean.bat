e@echo Off
color b
echo.
echo.
echo.                 --------------------------------------------------------------------------------------------------------
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A 
:::  
:::  /$$$$$$/$$$$   /$$$$$$   /$$$$$$  /$$$$$$$$ /$$  /$$$$$$        /$$$$$$   /$$  /$$  /$$  /$$$$$$   /$$$$$$ | $$   /$$  /$$$$$$$
::: | $$_  $$_  $$ /$$__  $$ /$$__  $$|____ /$$/| $$ /$$__  $$      |_  $$_/  | $$ | $$ | $$ /$$__  $$ |____  $$| $$  /$$/ /$$_____/
::: | $$ \ $$ \ $$| $$$$$$$$| $$  \__/   /$$$$/ | $$| $$  \ $$        | $$    | $$ | $$ | $$| $$$$$$$$  /$$$$$$$| $$$$$$/ |  $$$$$$ 
::: | $$ | $$ | $$| $$_____/| $$        /$$__/  | $$| $$  | $$        | $$ /$$| $$ | $$ | $$| $$_____/ /$$__  $$| $$_  $$  \____  $$
::: | $$ | $$ | $$|  $$$$$$$| $$       /$$$$$$$$| $$|  $$$$$$$        |  $$$$/|  $$$$$/$$$$/|  $$$$$$$|  $$$$$$$| $$ \  $$ /$$$$$$$/
::: |__/ |__/ |__/ \_______/|__/      |________/|__/ \____  $$         \___/   \_____/\___/  \_______/ \_______/|__/  \__/|_______/ 
:::                                                       | $$                                                                      
:::                                                       | $$                                                                      
:::                                                                 
echo.
echo.
echo.  
echo.
echo.
echo 
echo.
echo                                                        Press Any Key To Continue...     
pause >nul  
 

echo.
echo [-] Cleaning Log files
echo.

cd/
@echo
del *.log /a /s /q /f

echo [+] Cleaned Log Files
echo.

echo [-] Cleaning Temp files
echo.

RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
echo [+] Cleaned Temp files

echo.
echo [-] Flushing Dns Cache
ipconfig /flushdns
echo. 
echo [-] Windows Update Settings & Cleaning Cache
echo.

net stop wuauserv
net stop UsoSvc
gpupdate /force
rd s q "C:\Windows\SoftwareDistribution"
md "C:\Windows\SoftwareDistribution"
net start wuauserv
net start UsoSvc

echo [+] Deleted Windows Update Cache and useless files

echo.
echo [-] Clean
echo.

cleanmgr



echo.
echo [+] Cleaned All files
echo.

Pause
