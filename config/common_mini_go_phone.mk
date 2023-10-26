# Set Pixelstar specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common_mini_phone.mk)
