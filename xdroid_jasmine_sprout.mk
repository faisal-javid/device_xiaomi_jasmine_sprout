#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 Xiaomi-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common xdroidsp stuff
$(call inherit-product, vendor/xdroid/config/common.mk)
XDROID_BOOT := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := xdroid_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2

# Build Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jasmine-user 9 PKQ1.180904.001 V10.0.9.0.PDIMIXM release-keys"

# Build Fingerprint
BUILD_FINGERPRINT := "xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys"

# TWRP Support
BUILD_TWRP := false
