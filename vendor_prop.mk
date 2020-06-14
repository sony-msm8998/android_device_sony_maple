# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=400

# USB debugging at boot
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

# Use Vulkan for UI rendering
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.renderer=skiavk

# Assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# Apex
PRODUCT_PROPERTY_OVERRIDES += \
	ro.apex.updatable=true


# Netflix
ro.netflix.bsp_rev=Q845-05000-1
