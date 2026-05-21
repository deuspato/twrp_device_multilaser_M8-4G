#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# From XDA Tuto
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ML_SO0V_M8_4G device
$(call inherit-product, device/multilaser/ML_SO0V_M8_4G/device.mk)

PRODUCT_DEVICE := ML_SO0V_M8_4G
PRODUCT_NAME := twrp_ML_SO0V_M8_4G
PRODUCT_BRAND := Multilaser
PRODUCT_MODEL := M8_4G
PRODUCT_MANUFACTURER := multilaser

PRODUCT_GMS_CLIENTID_BASE := android-multilaser

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="M8_4G-user 12 V10_20250807 10 release-keys"

BUILD_FINGERPRINT := Multilaser/M8_4G/ML_SO0V_M8_4G:13/V10_20250807/10:user/release-keys
