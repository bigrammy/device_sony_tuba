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
    init.project.rc \
    init.recovery.mt6755.rc \
    init.connectivity.rc \
    init.rilproxy.rc \
    init.volte.rc \
    init.sony-trimarea-ta-service.rc \
    init.sony-trimarea-tad.rc \
    init.sony-trimarea.rc \
    init.sony-bootstrap.rc \
    init.sony-bootstrap-taimport.rc \
    init.sony-bootstrap-taimport-platform.rc \
    init.sony-bootstrap-updatemiscta.rc \
    init.mal.rc)
