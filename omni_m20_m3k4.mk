#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


PRODUCT_DEVICE := m20_m3k4
PRODUCT_NAME := omni_m20_m3k4
PRODUCT_BRAND := Teclast
PRODUCT_MODEL := M20 4G(M3K4)
PRODUCT_MANUFACTURER := teclast


