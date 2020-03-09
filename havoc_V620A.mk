#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from V620A device
$(call inherit-product, device/vsmart/V620A/device.mk)

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

PRODUCT_NAME := havoc_V620A
PRODUCT_BRAND := vsmart
PRODUCT_DEVICE := V620A
PRODUCT_MANUFACTURER := vsmart
PRODUCT_MODEL := Vsmart Live

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="vsmart V620A" \
    PRODUCT_NAME="vsmart V620A" \
    PRIVATE_BUILD_DESC="V620A_open-user 9 PKQ1.190302.001 V620A_OPEN_U_M3_20191128 release-keys"

BUILD_FINGERPRINT := vsmart/V620A_open/V620A:9/PKQ1.190302.001/V620A_OPEN_U_M3_20191128:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=400

PRODUCT_PRODUCT_PROPERTIES += \
    fod.dimming.min=40 \
    fod.dimming.max=255
