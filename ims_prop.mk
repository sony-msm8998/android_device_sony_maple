# Copyright (C) 2020 Shashank Verma
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

IMS_PATH := device/sony/maple

ifeq ($(IS_MAPLE_DSDS),true)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.vendor.name=G8142

## Props override from init_maple.cpp
PRODUCT_PROPERTY_OVERRIDES += \
	ro.semc.product.model=G8142 \
	persist.multisim.config=dsds \
	persist.radio.multisim.config=dsds \
	ro.telephony.default_network=9,0 \
	persist.vendor.radio.block_allow_data=0 \
	ro.vendor.product.model=G8142 \
	ro.vendor.product.name=maple_dsds \
	ro.vendor.product.device=maple_dsds

TARGET_SYSTEM_PROP += $(IMS_PATH)/ims_dsds.prop
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.vendor.name=G8141

## Props override from init_maple.cpp
PRODUCT_PROPERTY_OVERRIDES += \
	ro.semc.product.model=G8141 \
	ro.telephony.default_network=9 \
	persist.vendor.radio.block_allow_data=1 \
	ro.vendor.product.model=G8141 \
	ro.vendor.product.name=maple \
	ro.vendor.product.device=maple

TARGET_SYSTEM_PROP += $(IMS_PATH)/ims_single.prop
endif
