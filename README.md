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
repo sync

* Put Ritmix device config into CyanogenMode/device/Ritmix/ folder.
* Get recovery.img from tablet using

cat /dev/block/nandg >> recovery.img

* Kernel from recovery was extracted during new vendor creation. Following command build device/Ritmix/RMD1030 folder with kernel extracted from recovery.img file.

build/tools/device/mkvendor.sh Ritmix RMD1030 /your/path/to/the/recovery.img

* Build with kernel from original recovery

. build/envsetup.sh && lunch full_RMD1030-eng

make -j4 recoveryimage

TWRP touch recovery
-------------

TWRP recovery build guide
http://forum.xda-developers.com/showthread.php?t=1943625


Flash CWM or TWRP
---------

Run following commands

adb push recovery.img /sdcard/

adb shell "cat /sdcard/recovery.img > /dev/block/nandg; sync"

Links
-----

https://github.com/allwinner-dev-team/android_device_allwinner_example

https://github.com/allwinner-dev-team/android_device_allwinner_common


