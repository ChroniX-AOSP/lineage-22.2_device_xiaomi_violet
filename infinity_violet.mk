#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
TARGET_DISABLE_EPPE := true
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Infinityx stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

#MIUI Camera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

#Infinityx Flags
INFINITY_MAINTAINER := CHRONIX 魚
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true
BYPASS_CHARGE_SUPPORTED := true
PRODUCT_NO_CAMERA := true

#GAPPS
WITH_GMS := true
WITH_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
