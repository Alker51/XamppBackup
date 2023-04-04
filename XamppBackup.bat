:: Script Settings
@Echo off
Setlocal Enabledelayedexpansion
:: Header of the script
echo Welcome to XAMPP Backup
echo This script will create a backup of all your Xampp.
echo In future features, you will get more features to use this script.
echo Imagined by Alker / Coded and Created by Alker -- 2023
Pause
:: Path of the backup folder
set dir=C:\xamppBackupStorage
:: Check if backup folder exists, if not create it
if not exist !dir! (
    mkdir !dir!
        echo Folder '!dir!' created.
)

for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%_%MM%_%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"

set fullDir=!dir!\%datestamp%

if not exist %fullDir% (
    mkdir %fullDir%
        echo Folder '%datestamp%' in !dir! created.
) else (
    echo A backup as already generated today.
    Pause
    echo Shutdown...
    exit
)

echo Your backup will be save in %fullDir%

Pause
echo Shutdown...
exit