LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

cmd-strip=$(TOOLCHAIN_PREFIX)strip --strip-all -x $1

LOCAL_MODULE := MagicBeautify

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include

LOCAL_SRC_FILES  += \
	$(LOCAL_PATH)/beautify/MagicBeautify.cpp \
	$(LOCAL_PATH)/bitmap/BitmapOperation.cpp \
	$(LOCAL_PATH)/bitmap/Conversion.cpp \
	$(LOCAL_PATH)/MagicJni.cpp

LOCAL_CFLAGS := -flax-vector-conversions

LOCAL_ARM_NEON := true

LOCAL_LDLIBS += -llog

LOCAL_LDLIBS += -ljnigraphics

include $(BUILD_SHARED_LIBRARY)