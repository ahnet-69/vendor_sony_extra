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

# Dolby Props
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.dolby.dax.version=DAX3_1.1.1.24_r1 \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \

# Sony Props
PRODUCT_ODM_PROPERTIES += \
    ro.odm.build.SomcCntrl.manufacture=Sony \
    ro.odm.build.SomcCntrl.Brand=Sony \
    ro.odm.build.SomcCntrl.Model=Pdx206 \
    ro.odm.build.SomcCntrl.device=pdx206

PRODUCT_SYSTEM_PROPERTIES += \
    persist.sony.effect.dolby_atmos=true

# Include extra vendor audio stuff
$(call inherit-product, vendor/sony/extra/audio-legacy/audio-legacy-vendor.mk)
