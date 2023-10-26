# Inherit mini common Pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/pixelstar/config/telephony.mk)
