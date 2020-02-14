#
# Copyright (C) 2020 Cygnus
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

# Include hostapd configuration
PRODUCT_COPY_FILES += \
    vendor/wave/prebuilt/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    vendor/wave/prebuilt/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    vendor/wave/prebuilt/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept

# Build Snapdragon apps
PRODUCT_PACKAGES += \
    SnapdragonGallery

# Include support for additional filesystems
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Bluetooth Audio (A2DP)
PRODUCT_PACKAGES += libbthost_if

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += libprotobuf-cpp-full

# RCS Service
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_aidl_static \
    rcs_service_api \
    rcs_service_api.xml

# Props
include vendor/cygnus/configs/props.mk

# Version
$(call inherit-product, vendor/cygnus/configs/versioning.mk)
