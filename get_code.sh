#!/bin/bash -e

cd "$(dirname "$0")"

adb push cuber /data/local/tmp/
adb shell chmod 0755 /data/local/tmp/cuber
adb shell 'id=$(cat /sys/class/block/mmcblk0/device/{manfid,serial}); echo "$id"; echo 0x${id:6:2}${id:11:8} | /data/local/tmp/cuber > /sdcard/unlock.code'
adb pull /sdcard/unlock.code
adb shell rm /sdcard/unlock.code /data/local/tmp/cuber
