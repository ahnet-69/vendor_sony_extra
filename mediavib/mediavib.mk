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
   vendor/sony/extra/mediavib

# Perms
PRODUCT_COPY_FILES += \
    vendor/sony/extra/mediavib/configs/permissions/system/etc/sysconfig/somc_internal_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/somc_internal_whitelist.xml \
    vendor/sony/extra/mediavib/configs/permissions/system/etc/default-permissions/pre_grant_permissions_oem.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/pre_grant_permissions_oem.xml \
    vendor/sony/extra/mediavib/configs/permissions/system_ext/etc/permissions/com.sonymobile.xperia.enterprise.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.xperia.enterprise.xml \
    vendor/sony/extra/mediavib/configs/permissions/system_ext/etc/permissions/com.sonymobile.xperiasystemserver.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.xperiasystemserver.xml \
    vendor/sony/extra/mediavib/configs/permissions/system_ext/etc/permissions/com.sonymobile.mediavibration.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonymobile.mediavibration.xml

# Libs
PRODUCT_COPY_FILES += \
    vendor/sony/extra/mediavib/proprietary/product/app/SomcMediaExtensionProviderStarter/lib/arm64/libmepstarterjni.so:$(TARGET_COPY_OUT_PRODUCT)/app/SomcMediaExtensionProviderStarter/lib/arm64/libmepstarterjni.so \
    vendor/sony/extra/mediavib/proprietary/product/lib64/libmepstarterjni.so:$(TARGET_COPY_OUT_PRODUCT)/lib64/libmepstarterjni.so

# Apps
PRODUCT_PACKAGES += \
    libmepstarterjni \
    SomcMediaExtensionProviderStarter \
    SomcXperiaServices \
    SomcMediaExtensionProvider-release \
    MediaVibration \
    XperiaSystemServer \
    com.sonymobile.xperia.enterprise_impl
