$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/maple/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)


#$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions

PRODUCT_NAME := aosp_maple
PRODUCT_DEVICE := maple
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=maple

PRODUCT_GMS_CLIENTID_BASE := android-sony-mobile

### Pixel Stuffs
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

### FaceUnlockService
TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK := false


# Wallpapers
PRODUCT_PACKAGES += \
    PixelLiveWallpaperPrebuilt

