#
# Copyright (C) 2011 The CyanogenMod Project
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

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/pantech/msm8960-common/ramdisk/init.qcom.sh:root/init.qcom.sh \

# Qualcomm scripts
PRODUCT_COPY_FILES += \
      device/pantech/msm8960-common/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
      device/pantech/msm8960-common/configs/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
      device/pantech/msm8960-common/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
      device/pantech/msm8960-common/configs/init.qcom.ftm_module_out.sh:/system/etc/init.qcom.ftm_module_out.sh \
      device/pantech/msm8960-common/configs/init.qcom.ftm_module.sh:/system/etc/init.qcom.ftm_module.sh \
      device/pantech/msm8960-common/configs/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
      device/pantech/msm8960-common/configs/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
      device/pantech/msm8960-common/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
      device/pantech/msm8960-common/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
      device/pantech/msm8960-common/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# HDMI
PRODUCT_PACKAGES += \
    hdmid
# Torch
PRODUCT_PACKAGES += \
		Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs
PRODUCT_PACKAGES += \
    UCWEB \
    rootexplorer

# MSM8960 firmware
PRODUCT_COPY_FILES += \
      device/pantech/msm8960-common/firmware/a225p5_pm4.fw:/system/etc/firmware/a225p5_pm4.fw \
      device/pantech/msm8960-common/firmware/a225_pfp.fw:/system/etc/firmware/a225_pfp.fw \
      device/pantech/msm8960-common/firmware/a225_pm4.fw:/system/etc/firmware/a225_pm4.fw \
      device/pantech/msm8960-common/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
      device/pantech/msm8960-common/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
      device/pantech/msm8960-common/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
      device/pantech/msm8960-common/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
      device/pantech/msm8960-common/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
      device/pantech/msm8960-common/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw
# Wifi firmware
PRODUCT_COPY_FILES += \
      device/pantech/msm8960-common/firmware/prima.bin:/system/etc/firmware/wlan/prima/prima.bin \
      device/pantech/msm8960-common/firmware/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
      device/pantech/msm8960-common/firmware/WCNSS_qcom_cfg.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
      device/pantech/msm8960-common/firmware/WCNSS_qcom_cfg_orgi.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_orgi.ini \
      device/pantech/msm8960-common/firmware/WCNSS_qcom_cfg_trptis.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg_trptis.ini \
      device/pantech/msm8960-common/firmware/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

#Media Profile
PRODUCT_COPY_FILES += \
      device/pantech/msm8960-common/configs/media_profiles.xml:/system/etc/media_profiles.xml

#NFC Permissions
ifeq ($(TARGET_BUILD_VARIANT),user)
      NFCEE_ACCESS_PATH := device/pantech/msm8960-common/configs/nfcee_access.xml
else
       NFCEE_ACCESS_PATH := device/pantech/msm8960-common/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
       $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml



#Thermald Conf
PRODUCT_COPY_FILES += \
     device/pantech/msm8960-common/configs/thermald.conf:/system/etc/thermald.conf

#IDC Files
PRODUCT_COPY_FILES += \
      device/pantech/msm8960-common/idc/cyttsp-i2c.idc:/system/usr/idc/cyttsp-i2c.idc \
      device/pantech/msm8960-common/idc/qt602240_ts_input_ef45k.idc:/system/usr/idc/qt602240_ts_input_ef45k.idc \
      device/pantech/msm8960-common/idc/qt602240_ts_input_ef46l.idc:/system/usr/idc/qt602240_ts_input_ef46l.idc \
      device/pantech/msm8960-common/idc/qt602240_ts_input_ef47s.idc:/system/usr/idc/qt602240_ts_input_ef47s.idc \
      device/pantech/msm8960-common/idc/qt602240_ts_input.idc:/system/usr/idc/qt602240_ts_input.idc \
      device/pantech/msm8960-common/idc/qwerty2.idc:/system/usr/idc/qwerty2.idc \
      device/pantech/msm8960-common/idc/qwerty.idc:/system/usr/idc/qwerty.idc

#Keychars Files
PRODUCT_COPY_FILES += \
      device/pantech/msm8960-common/keychars/Generic.kcm:/system/usr/keychars/Generic.kcm \
      device/pantech/msm8960-common/keychars/keypad_8960.kcm:/system/usr/keychars/keypad_8960.kcm \
      device/pantech/msm8960-common/keychars/qwerty2.kcm:/system/usr/keychars/qwerty2.kcm \
      device/pantech/msm8960-common/keychars/qwerty.kcm:/system/usr/keychars/qwerty.kcm \
      device/pantech/msm8960-common/keychars/Virtual.kcm:/system/usr/keychars/Virtual.kcm

#Keylayout Files
PRODUCT_COPY_FILES += \
      device/pantech/msm8960-common/keylayout/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \
      device/pantech/msm8960-common/keylayout/cyttsp-i2c.kl:/system/usr/keylayout/cyttsp-i2c.kl \
      device/pantech/msm8960-common/keylayout/keypad_8960.kl:/system/usr/keylayout/keypad_8960.kl \
      device/pantech/msm8960-common/keylayout/msm8960-snd-card_Button_Jack.kl:/system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
      device/pantech/msm8960-common/keylayout/qt602240_ts_input_ef45k.kl:/system/usr/keylayout/qt602240_ts_input_ef45k.kl \
      device/pantech/msm8960-common/keylayout/qt602240_ts_input_ef46l.kl:/system/usr/keylayout/qt602240_ts_input_ef46l.kl \
      device/pantech/msm8960-common/keylayout/qt602240_ts_input_ef47s.kl:/system/usr/keylayout/qt602240_ts_input_ef47s.kl \
      device/pantech/msm8960-common/keylayout/qt602240_ts_input.kl:/system/usr/keylayout/qt602240_ts_input.kl
