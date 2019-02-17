LOCAL_PATH:= $(call my-dir)
define add-rootdir-targets
$(foreach target,$(1), \
   $(eval include $(CLEAR_VARS)) \
   $(eval LOCAL_MODULE       := $(target)) \
   $(eval LOCAL_MODULE_CLASS := ETC) \
   $(eval LOCAL_SRC_FILES    := $(target)) \
   $(eval LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)) \
   $(eval include $(BUILD_PREBUILT)))
endef
$(call add-rootdir-targets, \
    fstab.mt6755 \
    init.modem.rc \
    init.mt6755.rc \
    init.mt6755.usb.rc \
    init.usb.configfs.rc \
    init.usb.rc \
    ueventd.mt6755.rc \
    factory_init.project.rc \
    factory_init.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    multi_init.rc \
    init.connectivity.rc \
    init.rilproxy.rc \
    init.volte.rc \
    init.mal.rc)
