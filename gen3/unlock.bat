@echo off
cd /d %~dp0

adb reboot-bootloader
fastboot -i 0x1949 flash unlock unlock.code

pause
