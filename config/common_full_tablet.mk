$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common Pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Pixelstar LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/pixelstar/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pixelstar/overlay/dictionaries

$(call inherit-product, vendor/pixelstar/config/telephony.mk)
