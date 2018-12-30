LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := app
LOCAL_LDFLAGS := -Wl,--build-id
LOCAL_SRC_FILES := \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r2.2.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r2.3.3.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r3.0.1.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r4.0.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r4.0.3.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r4.1.1.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r4.2.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r4.3.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libnative_camera_r4.4.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_androidcamera.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_calib3d.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_contrib.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_core.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_features2d.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_flann.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_highgui.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_imgproc.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_info.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_java.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_legacy.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_ml.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_objdetect.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_ocl.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_photo.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_stitching.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_superres.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_ts.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_video.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi\libopencv_videostab.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r2.2.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r2.3.3.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r3.0.1.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r4.0.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r4.0.3.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r4.1.1.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r4.2.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r4.3.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libnative_camera_r4.4.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_androidcamera.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_calib3d.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_contrib.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_core.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_features2d.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_flann.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_highgui.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_imgproc.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_info.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_java.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_legacy.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_ml.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_objdetect.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_ocl.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_photo.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_stitching.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_superres.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_ts.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_video.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\armeabi-v7a\libopencv_videostab.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libnative_camera_r2.3.3.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libnative_camera_r3.0.1.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libnative_camera_r4.0.3.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libnative_camera_r4.1.1.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libnative_camera_r4.2.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libnative_camera_r4.3.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libnative_camera_r4.4.0.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_androidcamera.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_calib3d.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_contrib.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_core.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_features2d.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_flann.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_highgui.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_imgproc.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_info.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_java.so \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_legacy.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_ml.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_objdetect.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_ocl.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_photo.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_stitching.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_superres.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_ts.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_video.a \
	D:\Android_Apps\ImageProc1\app\src\main\jniLibs\x86\libopencv_videostab.a \

LOCAL_C_INCLUDES += D:\Android_Apps\ImageProc1\app\src\main\jni
LOCAL_C_INCLUDES += D:\Android_Apps\ImageProc1\app\src\main\jniLibs
LOCAL_C_INCLUDES += D:\Android_Apps\ImageProc1\app\src\debug\jni

include $(BUILD_SHARED_LIBRARY)
