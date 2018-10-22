# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# Pixelstar OTA update package

PIXELSTAR_TARGET_PACKAGE := $(PRODUCT_OUT)/pixelstar-$(PIXELSTAR_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

CL_PRP="\033[35m"
CL_RED="\033[31m"
CL_GRN="\033[32m"

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(PIXELSTAR_TARGET_PACKAGE)
	$(hide) $(SHA256) $(PIXELSTAR_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(PIXELSTAR_TARGET_PACKAGE).sha256sum
	@echo -e ${CL_PRP}""${CL_PRP}
	@echo -e ${CL_PRP}""${CL_PRP}
	@echo -e ${CL_PRP}"  ____ _____  _______ _     ____ _____  _    ____   "${CL_PRP}
	@echo -e ${CL_PRP}" |  _ \_ _\ \/ / ____| |   / ___|_   _|/ \  |  _ \  "${CL_PRP}
	@echo -e ${CL_PRP}" | |_) | | \  /|  _| | |   \___ \ | | / _ \ | |_) | "${CL_PRP}
	@echo -e ${CL_PRP}" |  __/| | /  \| |___| |___ ___) || |/ ___ \|  _ <  "${CL_PRP}
	@echo -e ${CL_PRP}" |_|  |___/_/\_\_____|_____|____/ |_/_/   \_\_| \_\ "${CL_PRP}
	@echo -e ${CL_PRP}""${CL_PRP}
	echo -e ${CL_BLD}${CL_RED}"===============================-Package complete-==============================="${CL_RED}
	$(hide) ./vendor/PIXELSTAR/tools/generate_json_build_info.sh $(PIXELSTAR_TARGET_PACKAGE)
	echo -e ${CL_BLD}${CL_GRN}"Zip: "${CL_RED} $(PIXELSTAR_TARGET_PACKAGE)${CL_RST}
	echo -e ${CL_BLD}${CL_GRN}"SHA256: "${CL_RED}" `cat $(PIXELSTAR_TARGET_PACKAGE).sha256sum | awk '{print $$1}' `"${CL_RST}
	echo -e ${CL_BLD}${CL_GRN}"Size:"${CL_RED}" `du -sh $(PIXELSTAR_TARGET_PACKAGE) | awk '{print $$1}' `"${CL_RST}
	echo -e ${CL_BLD}${CL_GRN}"TimeStamp:"${CL_RED}" `cat $(PRODUCT_OUT)/system/build.prop | grep ro.build.date.utc | cut -d'=' -f2 | awk '{print $$1}' `"${CL_RST}
	echo -e ${CL_BLD}${CL_GRN}"Integer Value:"${CL_RED}" `wc -c $(PIXELSTAR_TARGET_PACKAGE) | awk '{print $$1}' `"${CL_RST}
	echo -e ${CL_BLD}${CL_RED}"================================================================================"${CL_RED}
