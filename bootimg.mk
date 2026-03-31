# MTK specific boot image creation
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),KT961)
$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_FILES)
	$(call pretty,"Target recovery image: $@")
	$(MKBOOTIMG) --kernel $(TARGET_PREBUILT_KERNEL) --ramdisk $(recovery_ramdisk) \
		--cmdline "$(BOARD_KERNEL_CMDLINE)" \
		--base $(BOARD_KERNEL_BASE) \
		--pagesize $(BOARD_KERNEL_PAGESIZE) \
		$(BOARD_MKBOOTIMG_ARGS) \
		--output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE))
endif
