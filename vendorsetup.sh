#!/usr/bin/env bash
#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2025 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

export LC_ALL="C.UTF-8"
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_VARIANT="K6.10"
export FOX_MAINTAINER_PATCH_VERSION=$(date +"%Y%m%d")
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export FOX_RECOVERY_VENDOR_BOOT_PARTITION="/dev/block/by-name/vendor_boot"
export FOX_VENDOR_BOOT_RECOVERY_FULL_REFLASH=1
export FOX_VENDOR_BOOT_RECOVERY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_UPDATED_MAGISKBOOT=1
export FOX_TARGET_DEVICES="emerald"
export TARGET_DEVICE_ALT="emerald"
export FOX_DISABLE_UPDATEZIP=1
export FOX_DELETE_AROMAFM=1
export FOX_DELETE_MAGISK_ADDON=1
export FOX_DELETE_INITD_ADDON=1
export FOX_REMOVE_BASH=1
export FOX_REMOVE_AAPT=1

##########################################
##### OrangeFox specific build flags #####
##########################################

# Screen
export OF_SCREEN_H=2400
export OF_STATUS_H=100
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_CLOCK_POS=1

# Flashlight
export OF_FLASHLIGHT_ENABLE=1
export OF_FL_PATH1 := /sys/devices/platform/flashlights_mt6789

# Maintainer
export OF_MAINTAINER=nino

# OrangeFox settings
export OF_DEFAULT_KEYMASTER_VERSION=4.1
export OF_FLASHLIGHT_ENABLE=1
export OF_NO_REFLASH_CURRENT_ORANGEFOX=1
export OF_NO_SPLASH_CHANGE=1
export OF_FORCE_CASEFOLDING=1

# Recovery additional features
export OF_LOOP_DEVICE_ERRORS_TO_LOG=1
export OF_ENABLE_LPTOOLS=1
export OF_USE_LZ4_COMPRESSION=1
export OF_DISPLAY_FORMAT_FILESYSTEMS_DEBUG_INFO=1

export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

# ----- data format stuff -----
# ensure that /sdcard is bind-unmounted before f2fs data repair or format
OF_UNBIND_SDCARD_F2FS=1
export OF_FORCE_DATA_FORMAT_F2FS=1

# use dmctl to work around problems with formatting the /data partition
export OF_USE_DMCTL=1

# automatically wipe /metadata after data format
export OF_WIPE_METADATA_AFTER_DATAFORMAT=1

# avoid MTP issues after data format
export OF_BIND_MOUNT_SDCARD_ON_FORMAT=1

# don't spam the console with loop errors
export OF_LOOP_DEVICE_ERRORS_TO_LOG=1
