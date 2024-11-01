#
# Copyright (C) 2024 XperiaLabs Project
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

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra/stamina

# Local Path
LOCAL_STAM := vendor/sony/extra/stamina

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(LOCAL_STAM)/proprietary/vendor/etc/vintf/stamina_framework_matrix.xml

DEVICE_MANIFEST_FILE += \
    $(LOCAL_STAM)/proprietary/vendor/etc/vintf/vendor.somc.hardware.superstamina.manifest.xml

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(LOCAL_STAM)/sepolicy/vendor

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_STAM)/configs/perms/system_ext/etc/com.sonymobile.superstamina.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.superstamina.xml \
    $(LOCAL_STAM)/configs/perms/system_ext/etc/privapp-com.sonymobile.superstamina.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.sonymobile.superstamina.xml

# Blobs
PRODUCT_COPY_FILES += \
   $(LOCAL_STAM)/proprietary/vendor/bin/hw/vendor.somc.hardware.superstamina@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.somc.hardware.superstamina@1.0-service \
   $(LOCAL_STAM)/proprietary/vendor/etc/init/vendor.somc.hardware.superstamina@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.somc.hardware.superstamina@1.0-service.rc \
   $(LOCAL_STAM)/proprietary/vendor/lib64/vendor.somc.hardware.superstamina@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.somc.hardware.superstamina@1.0.so

# Packages
PRODUCT_PACKAGES += \
	FrameworksRes-Stamina-Overlay \
	SettingsRes-Stamina-Overlay \
	SystemUIRes-Stamina-Overlay \
	com.sonymobile.superstamina_impl
