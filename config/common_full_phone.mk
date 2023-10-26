# Inherit full common Pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Pixelstar LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/pixelstar/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/pixelstar/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/pixelstar/config/telephony.mk)
