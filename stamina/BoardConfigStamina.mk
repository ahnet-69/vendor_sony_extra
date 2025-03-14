#
# Copyright (C) 2025 XperiaLabs Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
STAMINA_PATH := vendor/sony/extra/stamina

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(STAMINA_PATH)/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(STAMINA_PATH)/configs/vintf/superstamina_framework_matrix.xml

DEVICE_MANIFEST_FILE += \
    $(STAMINA_PATH)/configs/vintf/vendor.somc.hardware.superstamina.xml

# inherit from the proprietary version
-include vendor/sony/extra/stamina/BoardConfigVendor.mk
