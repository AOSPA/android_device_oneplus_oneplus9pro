# Copyright (C) 2021 Paranoid Android
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

$(call inherit-product, vendor/oneplus/oneplus9pro/oneplus9pro-vendor.mk)

# LTPO display on the OnePlus 9 Pro doesn't have apparent gamma shifts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.set_idle_timer_ms=250 \
    ro.surface_flinger.set_touch_timer_ms=300

$(call inherit-product, device/oneplus/oneplus9/device.mk)

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/oneplus/oneplus9pro
