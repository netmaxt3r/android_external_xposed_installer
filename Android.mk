LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS) 
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := supersulib:libs/libsuperuser-185868.jar \
    libstickylist:libs/StickyListHeaders-d7f6fc.jar
include $(BUILD_MULTI_PREBUILT) 

include $(CLEAR_VARS)
#LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v13 \
    supersulib \
    libstickylist

LOCAL_PACKAGE_NAME := XposedInstaller
include $(BUILD_PACKAGE) 
