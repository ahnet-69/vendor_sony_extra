#
# Copyright (C) 2023 XperiaLabs Project
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
   vendor/sony/extra/apps

# Perms
PRODUCT_COPY_FILES += \
    vendor/sony/extra/apps/configs/permissions/product/privapp-permissions-sony-apps.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-sony-apps.xml \
    vendor/sony/extra/apps/configs/permissions/system_ext/privapp-permissions-sony-apps.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-sony-apps.xml

# Sony Apps
PRODUCT_PACKAGES += \
    MusicPro \
    SemcMusic \
    SomcColorGamut \
    SomcMediaExtensionProvider \
    ExternalMonitor \
    UsbExtOutAudio \
    VideoCreator
