@echo off
echo  ___  _  _  ___  ____  _  _  ____  _____ 
echo / __)( \/ )/ __)(_  _)( \( )( ___)(  _  )
echo \__ \ \  / \__ \ _)(_  )  (  )__)  )(_)( 
echo (___/ (__) (___/(____)(_)\_)(__)  (_____)
echo(                                    
echo        [+] github.com/isuruwa [+]
echo        [-]  BY DEVIL MASTER   [-]
echo(
echo [*] Runing Script ...
echo [*] Checking Sys Info :
echo(
echo [*] Checking ...
echo(
COLOR A
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"Domain"
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Manufacturer"
systeminfo | findstr /c:"System Model"
systeminfo | findstr /c:"System type"
systeminfo | findstr /c:"Total Physical Memory"
ipconfig | findstr IPv4
ipconfig | findstr IPv6
echo(
echo [*] SERVICE TAG:
wmic bios get serialnumber
echo(
echo [*] CPU:
wmic cpu get name
echo(
echo [*] STORAGE :
wmic diskdrive get size

echo.
echo [+] Runing Full Diagnostic Scan:
echo(
dxdiag /t dxdiag.txt
if exist dxdiag.txt (echo [*] File exists & type dxdiag.txt >> fullreport.txt) else echo [*] File Does not exist & goto end
if exist fullreport.txt echo [*] Bypassed New Data to fullreport.txt
:end

echo [*] DONE !
echo [*] Thank You! Good Bye !
echo [*] DEVELOPED BY DEVIL MASTER
echo(

pause