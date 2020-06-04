$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

IS_MAPLE_DSDS := true
WITH_VOLTE := true

# Inherit device configuration
$(call inherit-product, device/sony/maple/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

## BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
#TARGET_SCREEN_HEIGHT := 1920
#TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
#TARGET_BOOTANIMATION_HALF_RES := true

#$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions

include device/sony/maple/ims_prop.mk

PRODUCT_NAME := bliss_maple
PRODUCT_DEVICE := maple
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=maple

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

BUILD_FINGERPRINT := google/coral/coral:10/QQ2A.200501.001.B2/6352890:user/release-keys

export BLISS_BUILDTYPE=OFFICIAL

# Device Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
	ro.bliss.maintainer= Shujath
	
# Doze
PRODUCT_PACKAGES += \
    CustomDoze


