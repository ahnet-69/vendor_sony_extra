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
    vendor/sony/extra/audio

# Local Path
LOCAL_AUDIO := vendor/sony/extra/audio

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(LOCAL_AUDIO)/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/vintf/dms/dolby_framework_matrix.xml

DEVICE_MANIFEST_FILE += \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/vintf/dms/vendor.dolby.media.c2.xml \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/vintf/dms/vendor.dolby.hardware.dms.xml

# Dolby DAP
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Blobs
PRODUCT_COPY_FILES += \
    $(LOCAL_AUDIO)/proprietary/system_ext/etc/permissions/com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.dolby.daxservice.xml \
    $(LOCAL_AUDIO)/proprietary/system_ext/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.dolby.hardware.dms@2.0.so \
    $(LOCAL_AUDIO)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libdlbpreg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdlbpreg.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libbundlewrapper1.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libbundlewrapper1.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libbundlewrapper2.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libbundlewrapper2.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libbundlewrapper3.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libbundlewrapper3.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libbundlewrapper4.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libbundlewrapper4.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdlbvol.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswvqe.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdlbpreg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbpreg.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/liboem_specific.so:$(TARGET_COPY_OUT_VENDOR)/lib64/liboem_specific.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libbundlewrapper1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper1.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libbundlewrapper2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper2.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libbundlewrapper3.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper3.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libbundlewrapper4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper4.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdlbvol.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswvqe.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so

# Codec2 (Dolby)
PRODUCT_COPY_FILES += \
    $(LOCAL_AUDIO)/proprietary/vendor/bin/hw/vendor.dolby.media.c2@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.media.c2@1.0-service \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ac4dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ddpdec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_dolby.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_store_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_store_dolby.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so

# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v33/arm/arch-arm-armv7-a-neon/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_foundation-v33.so \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_foundation-v33.so

# Media (C2)
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor \
    android.hardware.media.c2@1.1.vendor \
    android.hardware.media.c2@1.2.vendor \
    libcodec2_hidl@1.2.vendor \
    libsfplugin_ccodec_utils.vendor \
    libcodec2_soft_common.vendor

# Codec2 Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.c2.preferred=true \
    debug.c2.use_dmabufheaps=1 \
    vendor.qc2audio.suspend.enabled=true \
    vendor.qc2audio.per_frame.flac.dec.enabled=true

# Dolby Props
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1 \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.dolby.ds2.enabled=false

# Packages
PRODUCT_PACKAGES += \
    daxService \
    DolbySound
