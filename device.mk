#
# Copyright (C) 2019-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lenovo/zippo/zippo-vendor.mk)

# sm8150-common
$(call inherit-product, device/lenovo/sm8150-common/common.mk)

# Board
PRODUCT_USES_QCOM_HARDWARE := true
PRODUCT_BOARD_PLATFORM := msmnile
TARGET_BOARD_PLATFORM := msmnile

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# Camera
PRODUCT_PACKAGES += \
   Snap

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.0-service.multihal \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    vendor.qti.hardware.display.mapper@1.1.vendor

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
