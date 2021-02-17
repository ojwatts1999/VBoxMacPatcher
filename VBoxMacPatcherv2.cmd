@echo off
cls
title VirtualBox macOS Patcher
echo Please select an option:
echo 1: Modern versions of macOS
echo 2: Older versions of Mac OS X
set /p input=
if %input% == 1 goto new
if %input% == 2 goto old
echo Sorry! Invalid input. Exiting...
pause
exit

:new
cls
echo KNOWN WORKING VERSIONS:
echo macOS High Sierra - 10.13
echo macOS Mojave - 10.14
echo *These are only versions I have tested. Some other versions (like Catalina) may work.
echo **The patch on this version is emulating a 2010 iMac. Any compatible this that computer should work. (Computer ID = iMac11,3)
echo -------------------------------------------------------------------------------------------------------------
echo Enter the name of the VM you want to patch.
set /p input=
cd "C:\Program Files\Oracle\VirtualBox"
echo Patching...
VBoxManage modifyvm "%input%" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
echo Patch 1 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
echo Patch 2 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
echo Patch 3 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
echo Patch 4 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
echo Patch 5 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
echo Patch 6 complete.
echo Patching done!
pause
exit

:old
cls
echo KNOWN WORKING VERSIONS:
echo OS X Mavericks - 10.9
echo *These are only versions I have tested. Some other versions (like Snow Leopard) may work.
echo **The patch on this version is emulating a mid-2007 iMac. Any compatible this that computer should work. (Computer ID = iMac7,1)
echo -------------------------------------------------------------------------------------------------------------
echo Enter the name of the VM you want to patch.
set /p input=
cd "C:\Program Files\Oracle\VirtualBox"
echo Patching...
VBoxManage modifyvm "%input%" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
echo Patch 1 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac7,1"
echo Patch 2 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
echo Patch 3 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
echo Patch 4 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
echo Patch 5 complete.
VBoxManage setextradata "%input%" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
echo Patch 6 complete.
echo Patching done!
pause
exit