# Device Tree for KT961 (TWRP)

LOCAL_PATH := $(call my-dir)

# 必须先包含 BoardConfig.mk 以确保变量生效
include $(LOCAL_PATH)/BoardConfig.mk

# 强制再定义一次并导出（确保 recovery 模块能读取）
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
BOARD_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
export TARGET_RECOVERY_FSTAB
export BOARD_RECOVERY_FSTAB

# 调试信息
$(warning twrp_KT961.mk is loaded)
$(warning TARGET_RECOVERY_FSTAB = $(TARGET_RECOVERY_FSTAB))
$(warning BOARD_RECOVERY_FSTAB = $(BOARD_RECOVERY_FSTAB))

ifeq ($(TARGET_DEVICE),KT961)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

# Device identifier
PRODUCT_NAME := twrp_KT961
PRODUCT_DEVICE := KT961
PRODUCT_MANUFACTURER := JTY
PRODUCT_MODEL := KT961
PRODUCT_BRAND := JTY

# 复制 fstab 到 recovery 根目录（备用）
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/twrp.fstab
