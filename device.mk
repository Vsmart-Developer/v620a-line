#
# Copyright (C) 2020 The lineage Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/vsmart/V620A/V620A-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Boot animation
TARGET_SCREEN_HEIGHT := 2232
TARGET_SCREEN_WIDTH := 1080

# Permissions
PRODUCT_COPY_FILES += \
    vendor/magma/config/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml

# Fingerprint
PRODUCT_PACKAGES += \
    lineage.biometrics.fingerprint.inscreen@1.0-service.V620A

# Init
PRODUCT_PACKAGES += \
    init.target.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vendor_fstab.qcom:$(TARGET_COPY_OUT_SYSTEM)/etc/vendor_fstab.qcom

# Input
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/keylayout,$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout)

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl.V620A

# Inherit from sm6150-common
$(call inherit-product, device/vsmart/sm6150-common/common.mk)
