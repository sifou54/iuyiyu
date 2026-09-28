@echo off
mode 800
color 3
CLS
:menu
echo 888888ba  dP     dP dP 888888ba  dP  .d888888      .d888888  888888ba  888888ba      .d888888  8888ba.88ba  888888ba      888888ba   .d888888   a88888b. dP     dP 
echo 88    `8b 88     88 88 88    `8b 88 d8'    88     d8'    88  88    `8b 88    `8b    d8'    88  88  `8b  `8b 88    `8b     88    `8b d8'    88  d8'   `88 88   .d8' 
echo 88     88 88    .8P 88 88     88 88 88aaaaa88a    88aaaaa88a 88     88 88     88    88aaaaa88a 88   88   88 88     88    a88aaaa8P' 88aaaaa88a 88        88aaa8P'  
echo 88     88 88    d8' 88 88     88 88 88     88     88     88  88     88 88     88    88     88  88   88   88 88     88     88        88     88  88        88   `8b. 
echo 88     88 88  .d8P  88 88    .8P 88 88     88     88     88  88     88 88    .8P    88     88  88   88   88 88    .8P     88        88     88  Y8.   .88 88     88 
echo dP     dP 888888'   dP 8888888P  dP 88     88     88     88  dP     dP 8888888P     88     88  dP   dP   dP 8888888P      dP        88     88   Y88888P' dP     dP 
echo [97;1m===============================================================================
:menu
echo.  Press 1 to apply NVIDIA TWEAKS
echo.  Press 2 to apply AMD RADEON TWEAKS
echo ===============================================================================
set /p userinp= ^> Enter Your Option: 
if [%userinp%]==[] echo.&echo Invalid User Input&echo.&pause&goto :menu
if %userinp% gtr 2 echo.&echo Invalid User Selection&echo.&pause&goto :menu
if %userinp%==1 goto :opt1
if %userinp%==2 goto :opt2
goto :eof

:opt1
cls
color 2
echo              /++++++++++++++++++++/
echo              +ooooooooooooooooooooo
echo         `.-:/-.--:++ooooooooooooooo
echo     `.:+++/:-//:-.``.:+oooooooooooo
echo `.:/++/-..-:/--:/+o+:.``:+ooooooooo
echo /oo:.` :+o/:-/:-``.ooo/` `+oooooooo
echo `:o+-` -oo-  +ooo//+/.``:+ooo+ooooo
echo   `/o+-`./o+:://:-.`.-/ooo+:.`/oooo
echo     `:++/..-:-..-:/+++/:-``.-+ooooo
echo       `-/++/:///:-.```..:/+oooooooo
echo          `.:/-..-::/++ooooooooooooo
echo              +ooooooooooooooooooooo
echo              /++++++++++++++++++++/
echo If your CONTROLLER PRESS 1
echo If your MOUSE PRESS 2

SET /P choice=  [101;44m1 / 2:[0m  
IF /I "%choice%"=="1" goto :1M
IF /I "%choice%"=="2" goto :2C

:1M
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V "SystemRestorePointCreationFrequency" /T REG_DWORD /D 0 /F
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -NoExit -Command "Checkpoint-Computer -Description "RestorePoint" -RestorePointType "MODIFY_SETTINGS"; " ' " -Verb RunAs}"
pause
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /F /V "HwSchMode" /T REG_DWORD /d "2"
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d "2" /f
powershell -c "Invoke-WebRequest -Uri 'https://www.7-zip.org/a/7z1900-x64.exe' -OutFile %HOMEPATH%\AppData\Local\Temp\7z.exe
cd %HOMEPATH%\AppData\Local\Temp
start /wait 7z.exe /S
CLS
@echo off 
cd %HOMEPATH%\AppData\Local\Temp
del /f 7z.exe


Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d "2" /f >nul
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/789238405736693780/835571271165018212/nvidiaProfileInspector.exe' -OutFile C:\Windows\nvidiaProfileInspector.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/789238405736693780/835571342916845578/Controller.nip' -OutFile %HOMEPATH%\AppData\Local\Temp\Controller.nip
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/789238405736693780/835575449585319976/Import_Nvidia.bat' -OutFile %HOMEPATH%\AppData\Local\Temp\Import_Nvidia.bat
cd %HOMEPATH%\AppData\Local\Temp
Import_Nvidia.bat
cd %HOMEPATH%\AppData\Local\Temp
del /f Controller.nip
cd %HOMEPATH%\AppData\Local\Temp
del /f Import_Nvidia.bat
@echo NVIDIA TWEAKS APPLIED, RESTART YOUR PC
pause
goto :menu

:2C
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V "SystemRestorePointCreationFrequency" /T REG_DWORD /D 0 /F
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -NoExit -Command "Checkpoint-Computer -Description "RestorePoint" -RestorePointType "MODIFY_SETTINGS"; " ' " -Verb RunAs}"
pause
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /F /V "HwSchMode" /T REG_DWORD /d "2"
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d "2" /f
powershell -c "Invoke-WebRequest -Uri 'https://www.7-zip.org/a/7z1900-x64.exe' -OutFile %HOMEPATH%\AppData\Local\Temp\7z.exe
cd %HOMEPATH%\AppData\Local\Temp
start /wait 7z.exe /S
CLS
@echo off 
cd %HOMEPATH%\AppData\Local\Temp
del /f 7z.exe


Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /v "DisableFirstRunCustomize" /t REG_DWORD /d "2" /f >nul
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/789238405736693780/835571271165018212/nvidiaProfileInspector.exe' -OutFile C:\Windows\nvidiaProfileInspector.exe
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/789238405736693780/835935156678295572/mouse_and_kb_only.nip' -OutFile %HOMEPATH%\AppData\Local\Temp\mouse_and_kb_only.nip
powershell -c "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/789238405736693780/835936674336866314/Import_Nvidia.bat' -OutFile %HOMEPATH%\AppData\Local\Temp\Import_Nvidia.bat
cd %HOMEPATH%\AppData\Local\Temp
Import_Nvidia.bat
cd %HOMEPATH%\AppData\Local\Temp
del /f mouse_and_kb_only.nip
cd %HOMEPATH%\AppData\Local\Temp
del /f Import_Nvidia.bat
@echo NVIDIA TWEAKS APPLIED, RESTART YOUR PC
pause
goto :menu


:opt2
cls
color 4
echo        `::::::::::::::::::-               
echo         -hMMMMMMMMMMMMMMMMh               
echo           -hMMMMMMMMMMMMMMh               
echo             -////////hMMMMh               
echo           `sh        yMMMMh               
echo         `sNMd        yMMMMh               
echo        +NMMMd        yMMMMh               
echo        hMMMMm++++++/ +MMMMh               
echo        hMMMMMMMMMNo`  .yMMh               
echo        hMMMMMMMNo`      .yy               
echo        -:::::::`          `               

REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V "SystemRestorePointCreationFrequency" /T REG_DWORD /D 0 /F
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -NoExit -Command "Checkpoint-Computer -Description "RestorePoint" -RestorePointType "MODIFY_SETTINGS"; " ' " -Verb RunAs}"
pause
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AMD Log Utility" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAllClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVCNPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_MCLKStutterModeThreshold" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /F /V "HwSchMode" /T REG_DWORD /d "2"

@echo AMD RADEON TWEAKS APPLIED, RESTART YOUR PC
pause
goto :menu
