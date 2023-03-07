# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from haydn device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_haydn
PRODUCT_MODEL := haydn

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := haydn
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="missi_phone_global-user 13 TKQ1.220829.002 V14.0.3.0.TKKMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/haydn/haydn:13/RKQ1.211001.001/V14.0.3.0.TKKMIXM:user/release-keys
