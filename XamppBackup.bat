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
if not exist C:\xamppBackupStorage\ (
    mkdir C:\xamppBackupStorage
        echo Folder '!dir!' created.
)

echo Your backup will be save in !dir!
Pause
echo Shutdown...
exit