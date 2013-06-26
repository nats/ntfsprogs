LOCAL_PATH := $(call my-dir)

libntfs_cflags := \
    -Dstatvfs=statfs \
    -Dfstatvfs=statfs \
    -DHAVE_CONFIG_H \
	-D_PATH_MOUNTED=\"/etc/mtab\" \
	-DMOUNTED=_PATH_MOUNTED

libntfs_includes := \
    $(LOCAL_PATH) \
    $(LOCAL_PATH)/android \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/include/ntfs

include $(all-subdir-makefiles)

