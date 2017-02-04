LOCAL_PATH:= $(call my-dir)

 

include $(CLEAR_VARS)

LOCAL_MODULE:= libavcodec

LOCAL_SRC_FILES:= lib/libavcodec-56.so

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(PREBUILT_SHARED_LIBRARY)

 

include $(CLEAR_VARS)

LOCAL_MODULE:= libavformat

LOCAL_SRC_FILES:= lib/libavformat-56.so

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(PREBUILT_SHARED_LIBRARY)

 

include $(CLEAR_VARS)

LOCAL_MODULE:= libswscale

LOCAL_SRC_FILES:= lib/libswscale-3.so

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(PREBUILT_SHARED_LIBRARY)

 

include $(CLEAR_VARS)

LOCAL_MODULE:= libavutil

LOCAL_SRC_FILES:= lib/libavutil-54.so

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(PREBUILT_SHARED_LIBRARY)

 

include $(CLEAR_VARS)

LOCAL_MODULE:= libavfilter

LOCAL_SRC_FILES:= lib/libavfilter-5.so

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(PREBUILT_SHARED_LIBRARY)

 

include $(CLEAR_VARS)

LOCAL_MODULE:= libswresample

LOCAL_SRC_FILES:= lib/libswresample-1.so

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)  
   
LOCAL_MODULE :=ffmpeg_codec  
LOCAL_SRC_FILES :=cn_dennishucd_FFmpegNative.c  
   
LOCAL_LDLIBS := -llog -ljnigraphics -lz -landroid  
LOCAL_SHARED_LIBRARIES:=libavcodec libavfilter libavformat libavutil libswscale libswresample
   
include $(BUILD_SHARED_LIBRARY) 
