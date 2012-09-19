ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),ef47s)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
# Module name should match apk name to be installed.
  LOCAL_MODULE := UCWEB
  LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
  LOCAL_MODULE_CLASS := APPS
  LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
  LOCAL_MODULE_TAGS := eng optional 
  LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
include $(CLEAR_VARS)
# Module name should match apk name to be installed.
  LOCAL_MODULE := rootexplorer
  LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
  LOCAL_MODULE_CLASS := APPS
  LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
  LOCAL_MODULE_TAGS := eng optional 
  LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
endif
