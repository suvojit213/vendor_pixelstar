#
# Copyright (C) 2020 Raphielscape LLC. and Haruka LLC.
#
# Licensed under the Apache License, Version 2.0 (the License);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an AS IS BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

LOCAL_PATH := $(call my-dir)

<<<<<<< HEAD
# Set pixelstar_charger_density to the density bucket of the device.
pixelstar_charger_density := mdpi
ifneq (,$(TARGET_SCREEN_DENSITY))
pixelstar_charger_density := $(strip \
  $(or $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 560))),1),xxxhdpi),\
       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 400))),1),xxhdpi),\
       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 280))),1),xhdpi),\
       $(if $(filter $(shell echo $$(($(TARGET_SCREEN_DENSITY) >= 200))),1),hdpi,mdpi)))
else ifneq (,$(filter mdpi hdpi xhdpi xxhdpi xxxhdpi,$(PRODUCT_AAPT_PREF_CONFIG)))
# If PRODUCT_AAPT_PREF_CONFIG includes a dpi bucket, then use that value.
pixelstar_charger_density := $(PRODUCT_AAPT_PREF_CONFIG)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := pixelstar_charger_battery_scale
LOCAL_MODULE_STEM := battery_scale.png
LOCAL_SRC_FILES := $(pixelstar_charger_density)/battery_scale.png
=======
### pixel_charger_res_images ###
ifneq ($(strip $(LOCAL_CHARGER_NO_UI)),true)
define _add-product-charger-image
include $$(CLEAR_VARS)
LOCAL_MODULE := pixel_charger_res_images_charger_$(notdir $(1))
LOCAL_MODULE_STEM := $(notdir $(1))
_img_modules += $$(LOCAL_MODULE)
LOCAL_SRC_FILES := $1
>>>>>>> 9962b875 (vendor: Use Pixel charger animation)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $$(TARGET_OUT_PRODUCT)/etc/res/images/charger
LOCAL_PRODUCT_MODULE := true
include $$(BUILD_PREBUILT)
endef

<<<<<<< HEAD
include $(CLEAR_VARS)
LOCAL_MODULE := pixelstar_charger_battery_scale_vendor
LOCAL_MODULE_STEM := battery_scale.png
LOCAL_SRC_FILES := $(pixelstar_charger_density)/battery_scale.png
=======
_img_modules :=
_images :=
$(foreach _img, $(call find-subdir-subdir-files, "images/charger", "*.png"), \
  $(eval $(call _add-product-charger-image,$(_img))))

### pixel_charger_animation_file ###
define _add-product-charger-animation-file
include $$(CLEAR_VARS)
LOCAL_MODULE := pixel_charger_res_values_charger_$(notdir $(1))
LOCAL_MODULE_STEM := $(notdir $(1))
_anim_modules += $$(LOCAL_MODULE)
LOCAL_SRC_FILES := $1
>>>>>>> 9962b875 (vendor: Use Pixel charger animation)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $$(TARGET_OUT_PRODUCT)/etc/res/values/charger
LOCAL_PRODUCT_MODULE := true
include $$(BUILD_PREBUILT)
endef

_anim_modules :=
$(foreach _txt, $(call find-subdir-subdir-files, "values/charger", "*.txt"), \
  $(eval $(call _add-product-charger-animation-file,$(_txt))))

include $(CLEAR_VARS)
<<<<<<< HEAD
LOCAL_MODULE := pixelstar_charger_battery_fail
LOCAL_MODULE_STEM := battery_fail.png
LOCAL_SRC_FILES := $(pixelstar_charger_density)/battery_fail.png
=======
LOCAL_MODULE := product_charger_res_images
>>>>>>> 9962b875 (vendor: Use Pixel charger animation)
LOCAL_MODULE_TAGS := optional
LOCAL_REQUIRED_MODULES := $(_img_modules) $(_anim_modules)
include $(BUILD_PHONY_PACKAGE)

<<<<<<< HEAD
include $(CLEAR_VARS)
LOCAL_MODULE := pixelstar_charger_battery_fail_vendor
LOCAL_MODULE_STEM := battery_fail.png
LOCAL_SRC_FILES := $(pixelstar_charger_density)/battery_fail.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := pixelstar_charger_font
LOCAL_MODULE_STEM := percent_font.png
LOCAL_SRC_FILES := $(pixelstar_charger_density)/percent_font.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := pixelstar_charger_font_vendor
LOCAL_MODULE_STEM := percent_font.png
LOCAL_SRC_FILES := $(pixelstar_charger_density)/percent_font.png
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/res/images/charger
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := pixelstar_charger_animation
LOCAL_MODULE_STEM := animation.txt
LOCAL_SRC_FILES := animation.txt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/res/values/charger
LOCAL_REQUIRED_MODULES := pixelstar_charger_battery_scale pixelstar_charger_battery_fail pixelstar_charger_font
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := pixelstar_charger_animation_vendor
LOCAL_MODULE_STEM := animation.txt
LOCAL_SRC_FILES := animation.txt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/res/values/charger
LOCAL_REQUIRED_MODULES := pixelstar_charger_battery_scale_vendor pixelstar_charger_battery_fail_vendor pixelstar_charger_font_vendor
include $(BUILD_PREBUILT)
=======
_add-product-charger-image :=
_add-product-charger-animation-file :=
_img_modules :=
_anim_modules :=
endif # LOCAL_CHARGER_NO_UI
>>>>>>> 9962b875 (vendor: Use Pixel charger animation)
