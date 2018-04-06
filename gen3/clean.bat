@echo off
adb root
adb shell "pm disable org.cyanogenmod.audiofx"
adb shell "pm disable org.lineageos.recorder"
adb shell "pm disable org.lineageos.jelly"
adb shell "pm disable com.cyanogenmod.eleven"
adb shell "pm disable com.android.email"
pause


