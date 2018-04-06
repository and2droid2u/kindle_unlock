@echo off
cd /d %~dp0

set dir=/data/local/tmp
adb push cuber %dir%
adb shell chmod 0755 %dir%/cuber
adb shell "id=$(cat /sys/class/block/mmcblk0/device/{manfid,serial}); echo $id; echo 0x${id:6:2}${id:11:8} | %dir%/cuber > %dir%/unlock.code"
adb pull %dir%/unlock.code
adb shell "rm %dir%/{unlock.code,cuber}"

pause
