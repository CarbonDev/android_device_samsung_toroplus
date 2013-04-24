#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The LiquidSmooth Project
# Copyright (C) 2013 The CarbonDev Project
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

# name
PRODUCT_RELEASE_NAME := GN-CDMA

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# device
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# cdma
$(call inherit-product, vendor/carbon/config/common_cdma.mk)

# phone
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# products
PRODUCT_DEVICE := toroplus
PRODUCT_BRAND := Google
PRODUCT_NAME := carbon_toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.toroplus.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=L700FH05 \
    PRODUCT_NAME=mysidspr \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="mysidspr-user 4.1.1 JRO03U L700FH05 release-keys" \
    BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.1.1/JRO03U/L700FH05:user/release-keys"
