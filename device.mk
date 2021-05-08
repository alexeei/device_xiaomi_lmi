#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
<<<<<<< HEAD
    $(LOCAL_PATH)/overlay-ancient \
=======
    $(LOCAL_PATH)/overlay-lineage
>>>>>>> parent of b29da19... Lmi: Add overlay-ancient

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_SHIPPING_API_LEVEL := 29

# Audio configs
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio,$(TARGET_COPY_OUT_VENDOR)/etc)

# Camera
PRODUCT_PACKAGES += \
    vendor.xiaomi.hardware.motor@1.0.vendor

# Device parts
PRODUCT_PACKAGES += \
    DeviceParts

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/xiaomi

# Inherit from xiaomi sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/lmi/lmi-vendor.mk)
