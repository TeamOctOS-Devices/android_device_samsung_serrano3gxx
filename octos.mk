LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit OctOs
$(call inherit-product, vendor/octos/config/common_full_phone.mk)

# Inherit from serrano3gxx device
$(call inherit-product, device/samsung/serrano3gxx/device.mk)

PRODUCT_NAME := octos_serrano3gxx
PRODUCT_DEVICE := serrano3gxx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9190

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=serrano3gxx \
    BUILD_FINGERPRINT="samsung/serrano3gxx/serrano3g:4.4.2/KOT49H/I9190XXUCNG1:user/release-keys" \
PRIVATE_BUILD_DESC="serrano3gxx-user 4.4.2 KOT49H I9190XXUCNG1 release-keys"
