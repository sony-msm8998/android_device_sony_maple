#
# Copyright (C) 2020 Shashank Verma
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

PRE_PATH := device/sony/maple/prebuilts

# Permissions for Hotword
PRODUCT_COPY_FILES += \
    $(PRE_PATH)/permissions/privapp-permissions-xGoogleHEXAGON.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-xGoogleHEXAGON.xml \
    $(PRE_PATH)/permissions/privapp-permissions-OkGoogleHEXAGON.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-OkGoogleHEXAGON.xml \
	$(PRE_PATH)/permissions/privapp-permissions-xGoogleHEXAGON.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/privapp-permissions-xGoogleHEXAGON.xml \
    $(PRE_PATH)/permissions/privapp-permissions-OkGoogleHEXAGON.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/privapp-permissions-OkGoogleHEXAGON.xml \
	$(PRE_PATH)/permissions/privapp-permissions-xGoogleHEXAGON.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-xGoogleHEXAGON.xml \
    $(PRE_PATH)/permissions/privapp-permissions-OkGoogleHEXAGON.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-OkGoogleHEXAGON.xml

# Sound Trigger
PRODUCT_PACKAGES += \
    libsmwrapper \
    libmulawdec

# Permissions for Sony
PRODUCT_COPY_FILES += \
	$(PRE_PATH)/permissions/com.sonymobile.album.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.album.xml \
	$(PRE_PATH)/permissions/com.sonymobile.album.internal.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.album.internal.xml \
	$(PRE_PATH)/permissions/com.sony.device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.sony.device.xml

# Framework jars
PRODUCT_COPY_FILES += \
	$(PRE_PATH)/framework/com.sonymobile.album.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.album.jar \
	$(PRE_PATH)/framework/com.sonymobile.album.internal.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.album.internal.jar \
	$(PRE_PATH)/framework/com.sony.device.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sony.device.jar \
	$(PRE_PATH)/framework/com.sonyericsson.music.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.music.jar

PRODUCT_PACKAGES += \
	HotwordEnrollmentOKGoogleHEXAGON \
	HotwordEnrollmentXGoogleHEXAGON \
	SemcMusic
