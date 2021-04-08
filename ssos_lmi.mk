#
# Copyright (C) 2021 The ssosOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common ssos stuff.
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)

#faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true

PRODUCT_NAME := ssos_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 11 RKQ1.200826.002 V12.2.5.0.RJKMIXM release-keys"

BUILD_FINGERPRINT := POCO/lmi_global/lmi:11/RKQ1.200826.002/V12.2.5.0.RJKMIXM:user/release-keys

EXTRA_FOD_ANIMATIONS := true
TARGET_INCLUDE_OP_FILE_MANAGER := true

TARGET_SUPPORTS_GOOGLE_RECORDER := true