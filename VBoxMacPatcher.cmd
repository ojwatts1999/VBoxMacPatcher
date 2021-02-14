@echo off
cls
title VirtualBox macOS Patcher
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