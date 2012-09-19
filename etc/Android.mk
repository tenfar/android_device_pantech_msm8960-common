LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# files that live under /system/etc/...
LOCAL_MODULE = gps.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC

file := gps.conf

copy_to := $(addprefix $(TARGET_OUT)/etc/,$(file))
copy_from := $(addprefix $(local-intermediates-dir)/,$(file))
copy_src := $(addprefix $(LOCAL_PATH)/,$(file))

build_dep := $(GPS_BUILD_DIR)/$(GPS_MAKE_INC)

# Append target-specific settings in gps.conf
$(copy_from) : $(copy_src) $(build_dep)
	@mkdir -p `dirname $@`
	@cp -f $(copy_src) $@
	@chmod 644 $@
	@echo -e "$(GPS_CONF_FOR_TARGET)" >> $@

$(copy_to) : PRIVATE_MODULE := system_etcdir
$(copy_to) : $(TARGET_OUT)/etc/% : $(copy_from) | $(ACP)
	$(transform-prebuilt-to-target)

ALL_PREBUILT += $(copy_to)
