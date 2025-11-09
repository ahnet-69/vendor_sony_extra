#
# Copyright (C) 2023 The LineageOS Project
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

LOCAL_PATH := vendor/sony/extra

# Audio Enhancements
ifeq ($(TARGET_SHIPS_SOUND_ENHANCEMENT),true)
    $(call inherit-product, $(LOCAL_PATH)/audio/audio.mk)
endif

ifeq ($(TARGET_SHIPS_SOUND_ENHANCEMENT_LEGACY),true)
    $(call inherit-product, $(LOCAL_PATH)/audio-legacy/audio-legacy.mk)
endif

# Camera Apps
ifeq ($(TARGET_SHIPS_SONY_CAMERA),true)
    $(call inherit-product, $(LOCAL_PATH)/camera/camera.mk)
endif

# SideSense
ifeq ($(TARGET_SHIPS_SIDESENSE),true)
    $(call inherit-product, $(LOCAL_PATH)/sidesense/sidesense.mk)
endif

# Sony Apps
ifeq ($(TARGET_SHIPS_SONY_APPS),true)
    $(call inherit-product, $(LOCAL_PATH)/apps/apps.mk)
endif

# Game Controllers
ifeq ($(TARGET_SUPPORTS_GAME_CONTROLLERS),true)
    $(call inherit-product, $(LOCAL_PATH)/controllers/gc.mk)
endif
