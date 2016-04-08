# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit some common Broken stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/Z00A/device.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/Z00A/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := broken_Z00A
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00A
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00A

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_Z00A \
    BUILD_FINGERPRINT=asus/WW_Z00A/Z00A:5.0/LRX21V/2.20.40.165_20160118_6541_user:user/release-keys \
    PRIVATE_BUILD_DESC="asusmofd_fhd-user 5.0 LRX21V 2.20.40.165_20160118_6541_user release-keys"

# Broken Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Roberto Correa (RCG)"
