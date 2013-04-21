LOCAL_PATH := $(call my-dir)
ifneq ($(fliter c8812 u8818, $(TARGET_BOOTLOADER_BOARD_NAME)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
