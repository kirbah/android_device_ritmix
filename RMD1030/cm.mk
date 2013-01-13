## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := RMD1030

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Ritmix/RMD1030/device_RMD1030.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMD1030
PRODUCT_NAME := cm_RMD1030
PRODUCT_BRAND := Ritmix
PRODUCT_MODEL := RMD1030
PRODUCT_MANUFACTURER := Ritmix
