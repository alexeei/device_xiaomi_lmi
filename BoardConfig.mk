#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lmi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# Fingerprint
SOONG_CONFIG_XIAOMI_KONA_FOD_POS_X = 439
SOONG_CONFIG_XIAOMI_KONA_FOD_POS_Y = 1655
SOONG_CONFIG_XIAOMI_KONA_FOD_SIZE = 202

# DTB
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
# DTBO
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Inherit from xiaomi sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# inherit from the proprietary version
include vendor/xiaomi/lmi/BoardConfigVendor.mk
