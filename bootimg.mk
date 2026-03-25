# MTK specific boot image configuration
LOCAL_PATH := $(call my-dir)

BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/bootimg.mk

define build_bootimg
$(call build-mtk-bootimg, $(1))
endef
