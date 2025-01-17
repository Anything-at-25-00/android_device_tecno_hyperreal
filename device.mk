#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/hyperreal
KERNEL_PATH := $(DEVICE_PATH)-kernel

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Overlays
PRODUCT_PACKAGES += \
	FrameworksResOverlayHyperreal \
    SettingsProviderOverlayHyperreal \
    SystemUIOverlayHyperreal

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.transsion

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/tecno/mt6789-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/hyperreal/hyperreal-vendor.mk)
