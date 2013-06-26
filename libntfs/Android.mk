LOCAL_PATH := $(call my-dir)

libntfs_sources := \
	attrib.c	\
	attrlist.c	\
	bitmap.c	\
	bootsect.c	\
	collate.c	\
	compat.c	\
	compress.c	\
	crypto.c	\
	debug.c		\
	device.c	\
	device_io.c	\
	dir.c		\
	index.c		\
	inode.c		\
	lcnalloc.c	\
	logfile.c	\
	logging.c	\
	misc.c		\
	mft.c		\
	mst.c		\
	runlist.c	\
	security.c	\
	unistr.c	\
	version.c	\
	volume.c 

include $(CLEAR_VARS)
LOCAL_MODULE      := libntfs_static
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES   := $(libntfs_sources)
LOCAL_CFLAGS      += $(libntfs_cflags)
LOCAL_C_INCLUDES  += $(libntfs_includes)
include $(BUILD_STATIC_LIBRARY) 

