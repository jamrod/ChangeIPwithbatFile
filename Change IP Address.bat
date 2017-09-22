@ echo off
REM Specify the LAN interface you want to change with the net variable, defaults to "Local Area Connection"
SET net="Local Area Connection"
netsh interface ip show config
SET /p dhcp=Use DHCP? Enter y to set to DHCP:
IF %dhcp%==y (goto :setDHCP) ELSE (goto :setStatic)
goto eof

:setDhcp
netsh interface ip set address %net% dhcp
SET Text=Setting to DHCP
goto :end

:setStatic
SET /p newIP=Enter new IP Address:
SET /p newSub=Enter new SubNet Mask:
SET /p newGate=Enter new Default Gateway:
netsh interface ip set address name= %net% static %newIP% %newSub% %newGate%
SET Text=Setting to Static IP
goto :end

:end
ECHO %Text%
pause