# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Pixelstar System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.pixelstar.base.codename=$(PIXELSTAR_CODENAME) \
    ro.pixelstar.base.version=$(PIXELSTAR_NUM_VER) \
    ro.pixelstar.build.version=$(PIXELSTAR_BUILD_VERSION) \
    ro.pixelstar.build.date=$(BUILD_DATE) \
    ro.pixelstar.buildtype=$(PIXELSTAR_BUILD_TYPE) \
    ro.pixelstar.display.version=$(PIXELSTAR_DISPLAY_VERSION) \
    ro.pixelstar.fingerprint=$(ROM_FINGERPRINT) \
    ro.pixelstar.version=$(PIXELSTAR_VERSION) \
    ro.modversion=$(PIXELSTAR_VERSION)
