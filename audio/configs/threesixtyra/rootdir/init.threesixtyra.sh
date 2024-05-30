#!/vendor/bin/sh

#
# Copyright (C) 2024 XperiaLabs Project
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
#

if [ -e /data/360radummy ] && wait 5; then
    rm -rf /data/jp.co.sony.threesixtyra.system/*
    rm -rf /data/jp.co.sony.threesixtyra.system.overlay/*
    rm -rf /data/jp.co.sony.threesixtyra.settings/*
    rm /data/360radummy
    echo "ThreeSixtyRA Fix applied"
fi