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

# Dolby Path
LOCAL_DOLBY := vendor/sony/extra/dolby

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_DOLBY)

# Dolby DAP
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Copy 360ra dir
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_DOLBY)/proprietary/vendor/etc/360ra/,$(TARGET_COPY_OUT_VENDOR)/etc/360ra) \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/HRTF_speaker_coef.hki:$(TARGET_COPY_OUT_VENDOR)/etc/HRTF_speaker_coef.hki \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/speaker.hki:$(TARGET_COPY_OUT_VENDOR)/etc/speaker.hki \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/speaker.hki.config:$(TARGET_COPY_OUT_VENDOR)/etc/speaker.hki.config

PRODUCT_COPY_FILES += \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/permissions/com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.dolby.daxservice.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/permissions/com.sony.threesixtyra.audiofx.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sony.threesixtyra.audiofx.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/permissions/com.sonyericsson.soundenhancement.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sonyericsson.soundenhancement.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/etc/permissions/jp.co.sony.threesixtyra.system.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/jp.co.sony.threesixtyra.system.xml \
    $(LOCAL_DOLBY)/proprietary/system_ext/lib/extractors/libmmparserextractor.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/extractors/libmmparserextractor.so \
    $(LOCAL_DOLBY)/proprietary/system_ext/lib/libavenhancements.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libavenhancements.so \
    $(LOCAL_DOLBY)/proprietary/system_ext/lib64/extractors/libmmparserextractor.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/extractors/libmmparserextractor.so \
    $(LOCAL_DOLBY)/proprietary/system_ext/lib64/libavenhancements.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libavenhancements.so \
    $(LOCAL_DOLBY)/proprietary/system_ext/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.dolby.hardware.dms@2.0.so \
    $(LOCAL_DOLBY)/proprietary/vendor/bin/hw/android.hardware.media.c2@1.0-threesixty-ra-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.media.c2@1.0-threesixty-ra-service \
    $(LOCAL_DOLBY)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    $(LOCAL_DOLBY)/proprietary/vendor/bin/hw/vendor.dolby.media.c2@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.media.c2@1.0-service \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/DrangeparaAAC128.bin:$(TARGET_COPY_OUT_VENDOR)/etc/DrangeparaAAC128.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/DrangeparaAAC256.bin:$(TARGET_COPY_OUT_VENDOR)/etc/DrangeparaAAC256.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/DrangeparaAAC64.bin:$(TARGET_COPY_OUT_VENDOR)/etc/DrangeparaAAC64.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/DrangeparaMP3_128.bin:$(TARGET_COPY_OUT_VENDOR)/etc/DrangeparaMP3_128.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/DrangeparaMP3_160.bin:$(TARGET_COPY_OUT_VENDOR)/etc/DrangeparaMP3_160.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/DrangeparaMP3_192.bin:$(TARGET_COPY_OUT_VENDOR)/etc/DrangeparaMP3_192.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/DrangeparaPCM441.bin:$(TARGET_COPY_OUT_VENDOR)/etc/DrangeparaPCM441.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/DrangeparaPCM48.bin:$(TARGET_COPY_OUT_VENDOR)/etc/DrangeparaPCM48.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/XTC_speaker_coef.hki:$(TARGET_COPY_OUT_VENDOR)/etc/XTC_speaker_coef.hki \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/alc.speaker.bin:$(TARGET_COPY_OUT_VENDOR)/etc/alc.speaker.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/dsx_param_file.bin:$(TARGET_COPY_OUT_VENDOR)/etc/dsx_param_file.bin \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/init/android.hardware.media.c2@1.0-threesixty-ra-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.media.c2@1.0-threesixty-ra-service.rc \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/media_codecs_sony_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sony_c2_audio.xml \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/seccomp_policy/android.hardware.media.c2@1.2-default-seccomp_policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/android.hardware.media.c2@1.2-default-seccomp_policy \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/windnoise_reduction.data:$(TARGET_COPY_OUT_VENDOR)/etc/windnoise_reduction.data \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/windnoise_reduction_back.data:$(TARGET_COPY_OUT_VENDOR)/etc/windnoise_reduction_back.data \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/windnoise_reduction_stat.data:$(TARGET_COPY_OUT_VENDOR)/etc/windnoise_reduction_stat.data \
    $(LOCAL_DOLBY)/proprietary/vendor/etc/windnoise_reduction_stat_back.data:$(TARGET_COPY_OUT_VENDOR)/etc/windnoise_reduction_stat_back.data \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libar-acdb.so:$(TARGET_COPY_OUT_VENDOR)/lib/libar-acdb.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libXtcApi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libXtcApi.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libaudiokeymgr.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudiokeymgr.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libcodec2_soft_mha1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_soft_mha1dec.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libcodec2_soft_mhm1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_soft_mhm1dec.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libdlbpreg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdlbpreg.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/librebuffering.so:$(TARGET_COPY_OUT_VENDOR)/lib/librebuffering.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libthreesixty_ra_codec2_store.so:$(TARGET_COPY_OUT_VENDOR)/lib/libthreesixty_ra_codec2_store.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libtsrspkenhance.so:$(TARGET_COPY_OUT_VENDOR)/lib/libtsrspkenhance.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libupmix-lib.so:$(TARGET_COPY_OUT_VENDOR)/lib/libupmix-lib.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/libznr.so:$(TARGET_COPY_OUT_VENDOR)/lib/libznr.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libbundlewrapper1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper1.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libbundlewrapper2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper2.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libbundlewrapper3.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper3.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libbundlewrapper4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper4.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswvqe.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libtsrspatializer.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libtsrspatializer.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libtsrupmix.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libtsrupmix.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/soundfx/libznrwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libznrwrapper.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libar-acdb.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libar-acdb.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libXtcApi.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libXtcApi.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libaudiokeymgr.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libaudiokeymgr.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libaudiosnpewrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libaudiosnpewrapper.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libaudiosnpewrapper_context.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libaudiosnpewrapper_context.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libcodec2_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ac4dec.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libcodec2_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_ddpdec.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libcodec2_soft_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_dolby.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libcodec2_soft_mha1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_mha1dec.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libcodec2_soft_mhm1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_mhm1dec.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libcodec2_store_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_store_dolby.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libdlbpreg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbpreg.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libiVptApi.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptApi.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libiVptHkiDec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptHkiDec.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libiVptLibC.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptLibC.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/liboem_specific.so:$(TARGET_COPY_OUT_VENDOR)/lib64/liboem_specific.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/librebuffering.so:$(TARGET_COPY_OUT_VENDOR)/lib64/librebuffering.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libthreesixty_ra_codec2_store.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libthreesixty_ra_codec2_store.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libtsrspkenhance.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libtsrspkenhance.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libupmix-lib.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libupmix-lib.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/libznr.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libznr.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libbundlewrapper1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper1.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libbundlewrapper2.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper2.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libbundlewrapper3.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper3.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libbundlewrapper4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libbundlewrapper4.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libdnnrwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdnnrwrapper.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswvqe.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libtsrspatializer.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libtsrspatializer.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libtsrupmix.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libtsrupmix.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/soundfx/libznrwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libznrwrapper.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    $(LOCAL_DOLBY)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so

# Dolby Props
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1 \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.dolby.ds2.enabled=false \
    ro.audio.monitorRotation=true

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.2.vendor \
    libcodec2_hidl@1.2.vendor \
    libsfplugin_ccodec_utils.vendor \
    libcodec2_soft_common.vendor

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(LOCAL_DOLBY)/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(LOCAL_DOLBY)/configs/vintf/framework_compatibility_matrix.xml

# Exclude AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Spatial audio Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.360ra.effect=1 \
    ro.audio.spatializer_enabled=true

PRODUCT_PACKAGES += \
    ThreeSixtyRASettings \
    DolbySound \
    ThreeSixtyRASystem \
    ThreeSixtyRASystem-Overlay \
    daxService \
    com.sony.threesixtyra.audiofx \
    vendor.dolby.hardware.dms \
    vendor.dolby.media.c2@1.0-service \
    vendor.threesixty_ra.codec2
