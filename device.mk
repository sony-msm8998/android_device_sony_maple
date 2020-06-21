# PLATFORM
$(call inherit-product, device/sony/yoshino-common/platform.mk)

# PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/maple/maple-vendor.mk)

### DALVIK
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

DEVICE_PATH := device/sony/maple

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay 


ifeq ($(WITH_TWRP),true)

### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.maple \
    init.maple \
    ueventd.maple

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/ramdisk/fstab.maple:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.maple

else # WITH_TWRP
include $(DEVICE_PATH)/vendor_prop.mk

### Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml \
    $(DEVICE_PATH)/config/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0-java

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# RIL
PRODUCT_PACKAGES += \
    libandroid_net

### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.maple \
    init.maple \
    ueventd.maple

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/ramdisk/fstab.maple:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.maple

endif # WITH_TWRP

# Disable treble
PRODUCT_FULL_TREBLE_OVERRIDE := false

# Customization
$(call inherit-product, device/sony/maple/customization.mk)
