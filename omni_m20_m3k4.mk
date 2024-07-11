#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
LOCAL_PATH := device/teclast/m20_m3k4
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product-if-exists, device/common/gps/gps_us_supl.mk)
# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

PRODUCT_DEVICE := m20_m3k4
PRODUCT_NAME := omni_m20_m3k4
PRODUCT_BRAND := Teclast
PRODUCT_MODEL := M20 4G(M3K4)
PRODUCT_MANUFACTURER := teclast


