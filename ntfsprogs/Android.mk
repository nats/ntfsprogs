LOCAL_PATH := $(call my-dir)

build-ntfs-prog = \
    $(eval include $(CLEAR_VARS)) \
    $(eval LOCAL_MODULE           := $1) \
    $(eval LOCAL_MODULE_PATH      := $(TARGET_OUT_EXECUTABLES)) \
    $(eval LOCAL_MODULE_TAGS      := optional eng) \
    $(eval LOCAL_SRC_FILES        := $2 utils.c) \
    $(eval LOCAL_CFLAGS           += $(libntfs_cflags)) \
    $(eval LOCAL_C_INCLUDES       += $(libntfs_includes)) \
    $(eval LOCAL_SHARED_LIBRARIES += libdl) \
    $(eval LOCAL_STATIC_LIBRARIES += libntfs_static libbionic) \
    $(eval include $(BUILD_EXECUTABLE))

$(call build-ntfs-prog, ntfsfix,      ntfsfix.c)
$(call build-ntfs-prog, mkntfs,       attrdef.c boot.c sd.c mkntfs.c)
$(call build-ntfs-prog, ntfslabel,    ntfslabel.c)
$(call build-ntfs-prog, ntfsinfo,     ntfsinfo.c)
$(call build-ntfs-prog, ntfsundelete, ntfsundelete.c)
$(call build-ntfs-prog, ntfsresize,   ntfsresize.c)
$(call build-ntfs-prog, ntfsclone,    ntfsclone.c)
$(call build-ntfs-prog, ntfscluster,  ntfscluster.c cluster.c)
$(call build-ntfs-prog, ntfsls,       ntfsls.c)
$(call build-ntfs-prog, ntfscat,      ntfscat.c)
$(call build-ntfs-prog, ntfscp,       ntfscp.c)
$(call build-ntfs-prog, ntfsck,       ntfsck.c)
$(call build-ntfs-prog, ntfscmp,      ntfscmp.c)
$(call build-ntfs-prog, ntfstruncate, attrdef.c ntfstruncate.c)
$(call build-ntfs-prog, ntfsmftalloc, ntfsmftalloc.c)
$(call build-ntfs-prog, ntfsmove,     ntfsmove.c)
$(call build-ntfs-prog, ntfswipe,     ntfswipe.c)

