#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Inherit from daisy device
$(call inherit-product, device/xiaomi/daisy/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := daisy
PRODUCT_NAME := aosp_daisy
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A2 lite
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="daisy-user 10 QKQ1.191002.002 V11.0.21.0.QDLMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/daisy/daisy_sprout:10/QKQ1.191002.002/V11.0.21.0.QDLMIXM:user/release-keys"
