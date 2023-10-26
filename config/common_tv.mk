# Inherit common Pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common.mk)

# Inherit Pixelstar atv device tree
$(call inherit-product, device/pixelstar/atv/pixelstar_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

PRODUCT_PACKAGE_OVERLAYS += vendor/pixelstar/overlay/tv
