# Device Tree for KT961 (TWRP)

LOCAL_PATH := $(call my-dir)

# Include BoardConfig.mk to set TARGET_RECOVERY_FSTAB etc.
include device/jty/KT961/BoardConfig.mk

$(warning twrp_KT961.mk is loaded)

ifeq ($(TARGET_DEVICE),KT961)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

# Device identifier
PRODUCT_NAME := twrp_KT961
PRODUCT_DEVICE := KT961
PRODUCT_MANUFACTURER := JTY
PRODUCT_MODEL := KT961
PRODUCT_BRAND := JTY

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/twrp.fstab
