# Release name
PRODUCT_RELEASE_NAME := jfltexx

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/samsung/jfltexx/full_jfltexx.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Samsung
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jfltexx
PRODUCT_NAME := xenonhd_jfltexx
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9505

# Device Maintainer
PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer="BenLue"
TARGET_VENDOR := Samsung

# Root options
ROOT_METHOD=magisk

# 3rd party apps - choose which you want to build
PRODUCT_PACKAGES += \
    Adaway \
    KernelAdiutor \
    MiXplorer

# Camera
PRODUCT_PACKAGES += \
  Camera2 \
  Snap

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=jfltexx \
  BUILD_FINGERPRINT=Samsung/jfltexx/jflte:5.0.1/LRX22C/I9505XXUHPF4:user/release-keys \
  PRIVATE_BUILD_DESC="jfltexx-user 5.0.1 LRX22C I9505XXUHPF4 release-keys"
endif
