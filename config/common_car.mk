# Inherit common Pixelstar stuff
$(call inherit-product, vendor/pixelstar/config/common.mk)

# Inherit Awaken car device tree
$(call inherit-product, device/pixelstar/car/pixelstar_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
