USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Ritmix/RMD1030/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sun4i
TARGET_BOOTLOADER_BOARD_NAME := RMD1030

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/Ritmix/RMD1030/kernel
TARGET_RECOVERY_INITRC := device/Ritmix/RMD1030/recovery_init.rc

# CWM Recovery Stuff
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/Ritmix/RMD1030/recovery_keys.c
BOARD_HAS_NO_SELECT_BUTTON := true

# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true


# TWRP specific
DEVICE_RESOLUTION := 1024x768
TW_INTERNAL_STORAGE_PATH := "/dev/block/nandi"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#-- custom maps the power button for the lockscreen
#TW_CUSTOM_POWER_BUTTON := 107
#-- enables touch event logging to help debug touchscreen issues
TWRP_EVENT_LOGGING := true



