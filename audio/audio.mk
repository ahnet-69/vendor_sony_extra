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

# Dolby Path
LOCAL_AUDIO := vendor/sony/extra/audio

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    vendor/sony/extra/audio

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(LOCAL_AUDIO)/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(LOCAL_AUDIO)/configs/vintf/dms/dolby_framework_matrix.xml \
    $(LOCAL_AUDIO)/configs/vintf/threesixty/threesixty_framework_matrix.xml

DEVICE_MANIFEST_FILE += $(LOCAL_AUDIO)/configs/vintf/dms/vendor.dolby.hardware.dms.xml \
    $(LOCAL_AUDIO)/configs/vintf/threesixty/vendor.threesixty_ra.codec2.xml

# Dolby DAP
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Config(s)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_AUDIO)/proprietary/vendor/etc/360ra/,$(TARGET_COPY_OUT_VENDOR)/etc/360ra) \
    $(LOCAL_AUDIO)/configs/codecs/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_AUDIO)/configs/codecs/media_codecs_sony_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sony_c2_audio.xml \
    $(LOCAL_AUDIO)/configs/perms/system_ext/etc/permissions/jp.co.sony.threesixtyra.system.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/jp.co.sony.threesixtyra.system.xml \
    $(LOCAL_AUDIO)/configs/perms/system_ext/etc/permissions/com.sony.threesixtyra.audiofx.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.sony.threesixtyra.audiofx.xml \
    $(LOCAL_AUDIO)/configs/perms/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.dolby.daxservice.xml \
    $(LOCAL_AUDIO)/configs/perms/system_ext/etc/permissions/privapp-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.dolby.daxappui.xml \
    $(LOCAL_AUDIO)/configs/perms/system_ext/etc/sysconfig/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxappui.xml \
    $(LOCAL_AUDIO)/configs/perms/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(LOCAL_AUDIO)/configs/perms/system_ext/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/seccomp_policy/android.hardware.media.c2@1.2-default-seccomp_policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/android.hardware.media.c2@1.2-default-seccomp_policy

# Dolby Blob(s)
PRODUCT_COPY_FILES += \
    $(LOCAL_AUDIO)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/bin/hw/android.hardware.media.c2@1.0-threesixty-ra-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.media.c2@1.0-threesixty-ra-service \
    $(LOCAL_AUDIO)/proprietary/vendor/etc/init/android.hardware.media.c2@1.0-threesixty-ra-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.media.c2@1.0-threesixty-ra-service.rc \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libcodec2_soft_mha1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_soft_mha1dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libcodec2_soft_mhm1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcodec2_soft_mhm1dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdeccfg.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libhwdaphal.so:$(TARGET_COPY_OUT_VENDOR)/lib/libhwdaphal.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ac4dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libthreesixty_ra_codec2_store.so:$(TARGET_COPY_OUT_VENDOR)/lib/libthreesixty_ra_codec2_store.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libupmix-lib.so:$(TARGET_COPY_OUT_VENDOR)/lib/libupmix-lib.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libtsrspatializer.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libtsrspatializer.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libtsrupmix.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libtsrupmix.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/soundfx/libznrwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libznrwrapper.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libtsrspkenhance.so:$(TARGET_COPY_OUT_VENDOR)/lib/libtsrspkenhance.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libiVptApi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libiVptApi.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libiVptHkiDec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libiVptHkiDec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libiVptLibC.so:$(TARGET_COPY_OUT_VENDOR)/lib/libiVptLibC.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib/libXtcApi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libXtcApi.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_mha1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_mha1dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libcodec2_soft_mhm1dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_mhm1dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libhwdaphal.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libhwdaphal.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ac4dec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ddpdec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libthreesixty_ra_codec2_store.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libthreesixty_ra_codec2_store.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libupmix-lib.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libupmix-lib.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libdnnrwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdnnrwrapper.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libtsrspatializer.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libtsrspatializer.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libtsrupmix.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libtsrupmix.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/soundfx/libznrwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libznrwrapper.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libtsrspkenhance.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libtsrspkenhance.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libiVptApi.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptApi.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libiVptHkiDec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptHkiDec.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libiVptLibC.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libiVptLibC.so \
    $(LOCAL_AUDIO)/proprietary/vendor/lib64/libXtcApi.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libXtcApi.so

# Codec2 Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.c2.preferred=true \
    vendor.qc2audio.suspend.enabled=true \
    vendor.qc2audio.per_frame.flac.dec.enabled=true

# Dolby Vendor Prop(s)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1 \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    ro.vendor.audio.dolby.dax.support=true \
    ro.vendor.audio.dolby.surround.enable=true \
    persist.vendor.audio_fx.current=dolby \
    ro.audio.monitorRotation=true

# 360 Reality Audio Props
PRODUCT_VENDOR_PROPERTIES += \
    vendor.360ra.effect=1 \
    ro.audio.spatializer_enabled=true

PRODUCT_ODM_PROPERTIES += \
    vendor.sony_spatializer.suppress.dolby=true

# Dolby Package(s)
PRODUCT_PACKAGES += \
    daxService \
    DaxUI \
    ThreeSixtyRASettings \
    ThreeSixtyRASystem \
    ThreeSixtyRASystem-Overlay \
    com.sony.threesixtyra.audiofx
