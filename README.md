Android device configuration for Ritmix RMD-1030
================================

The device configuration was initially created to build ClockworkMode recovery for RMD-1030.

Environment setup and build
-----------------

Usefull guides are available

http://www.koushikdutta.com/2010/10/porting-clockwork-recovery-to-new.html

http://forum.xda-developers.com/showthread.php?t=1866545

Some usefull tips

* Retrieve CM sources into some folder from jellybean branch.

repo init -u git://github.com/CyanogenMod/android.git -b jellybean

* Put Ritmix device config into CyanogenMode/device/Ritmix/ folder.
* Get recovery.img from tablet using

cat /dev/block/nandg >> recovery.img

* Build with original recovery

build/tools/device/mkvendor.sh Ritmix RMD1030 /your/path/to/the/recovery.img

. build/envsetup.sh && lunch full_RMD1030-eng


Flash CWM
---------

Run following commands

adb push recovery.img /sdcard/

adb shell "cat /sdcard/recovery.img > /dev/block/nandg; sync"

Links
-----

https://github.com/allwinner-dev-team/android_device_allwinner_example



