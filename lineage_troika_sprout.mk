# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from troika_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := troika_sprout
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_troika_sprout
PRODUCT_MODEL := motorola one action

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := troika_sprout
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 10 QSB30.62-17 10ff7 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/troika_retail/troika_sprout:10/QSB30.62-17/10ff7:user/release-keys
