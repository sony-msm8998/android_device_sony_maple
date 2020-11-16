Unified Device configuration for Sony Xperia XZ Premium
========================================================

Description
-----------

This repository is for Android TEN on Sony Xperia XZ Premium

How to build :
----------------------

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <!-- Device -->
            <project name="Yoshino-StockDevelopment/android_device_sony_maple" path="device/sony/maple" remote="github" revision="ten" />
            <project name="Yoshino-StockDevelopment/android_device_sony_yoshino-common" path="device/sony/yoshino-common" remote="github" revision="ten" />
            
            <!-- Kernel -->
            <project name="whatawurst/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-17.1" />

            <!-- Vendor blobs for maple -->
           <project name="Yoshino-StockDevelopment/proprietary_vendor_sony_maple" path="device/sony/maple" remote="github" revision="ten" />
        </manifest>
