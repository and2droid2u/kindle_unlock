#!/bin/bash -e

cd "$(dirname "$0")"

adb reboot-bootloader
fastboot -i 0x1949 flash unlock unlock.code
