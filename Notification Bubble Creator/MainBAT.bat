echo off
cls
echo title of bubble
set /P TITLE=}_
echo message of bubble
set /P MESSAGE=}_




echo CREATING BUBBLE


echo [reflection.assembly]::loadwithpartialname("System.Windows.Forms") > BUBBLE
echo [reflection.assembly]::loadwithpartialname("System.Drawing") >> BUBBLE
echo $notify = new-object system.windows.forms.notifyicon >> BUBBLE
echo $notify.icon = [System.Drawing.SystemIcons]::Information >> BUBBLE
echo $notify.visible = $true >> BUBBLE
echo $notify.showballoontip(10,"%TITLE%","%MESSAGE%",[system.windows.forms.tooltipicon]::None) >> BUBBLE

echo CREATED
rename BUBBLE BUBBLE.ps1
timeout 1 /NOBREAK>nul
Powershell.exe -ExecutionPolicy Unrestricted -File BUBBLE.ps1
DEL BUBBLE.ps1