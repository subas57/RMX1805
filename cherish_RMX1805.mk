# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Cherish stuff
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from RMX1805 device
$(call inherit-product, device/oppo/RMX1805/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

PRODUCT_BRAND := oppo
PRODUCT_DEVICE := RMX1805
PRODUCT_MANUFACTURER := oppo
PRODUCT_NAME := cherish_RMX1805
PRODUCT_MODEL := Realme 2/C1

PRODUCT_GMS_CLIENTID_BASE := android-oppo
TARGET_VENDOR := oppo
TARGET_VENDOR_PRODUCT_NAME := RMX1805

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1805"

TARGET_GAPPS_ARCH := ARM64
TARGET_BOOT_ANIMATION_RES := 720

#CHERISH STAFF
CHERISH_BUILD_TYPE := OFFICIAL
WITH_GMS := true
#USE_LAWNCHAIR :=true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_USES_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cherish.maintainer=ABHINAV™