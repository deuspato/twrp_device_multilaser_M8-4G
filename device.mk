#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/multilaser/ML_SO0V_M8_4G
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true
#PRODUCT_VIRTUAL_AB_OTA := true
#PRODUCT_VENDOR_PROPERTIES += ro.virtual_ab.enabled=true
#PRODUCT_PACKAGES += \
#    linker.vendor_ramdisk \
#    e2fsck.vendor_ramdisk \

# Boot control HAL e Update Engine
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.mt6765 \
    libgptutils \
    libcutils \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Utilitários MTK para armazenamento
PRODUCT_PACKAGES += \
    mtk_plpath_utils

# Device Info
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_PLATFORM := mt6765
PRODUCT_BOARD := m8_4g

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 33

# API
PRODUCT_SHIPPING_API_LEVEL := 31
