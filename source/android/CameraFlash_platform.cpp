/*
 * android-specific implementation of the CameraFlash extension.
 * Add any platform-specific functionality here.
 */
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
#include "CameraFlash_internal.h"

#include "s3eEdk.h"
#include "s3eEdk_android.h"
#include <jni.h>
#include "IwDebug.h"

static jobject g_Obj;
static jmethodID g_TurnFlashOn;
static jmethodID g_TurnFlashOff;

s3eResult CameraFlashInit_platform()
{
    // Get the environment from the pointer
    JNIEnv* env = s3eEdkJNIGetEnv();
    jobject obj = NULL;
    jmethodID cons = NULL;

    // Get the extension class
    jclass cls = s3eEdkAndroidFindClass("CameraFlash");
    if (!cls)
        goto fail;

    // Get its constructor
    cons = env->GetMethodID(cls, "<init>", "()V");
    if (!cons)
        goto fail;

    // Construct the java class
    obj = env->NewObject(cls, cons);
    if (!obj)
        goto fail;

    // Get all the extension methods
    g_TurnFlashOn = env->GetMethodID(cls, "TurnFlashOn", "(Z)V");
    if (!g_TurnFlashOn)
        goto fail;

    g_TurnFlashOff = env->GetMethodID(cls, "TurnFlashOff", "()V");
    if (!g_TurnFlashOff)
        goto fail;



    IwTrace(CAMERAFLASH, ("CAMERAFLASH init success"));
    g_Obj = env->NewGlobalRef(obj);
    env->DeleteLocalRef(obj);
    env->DeleteGlobalRef(cls);

    // Add any platform-specific initialisation code here
    return S3E_RESULT_SUCCESS;

fail:
    jthrowable exc = env->ExceptionOccurred();
    if (exc)
    {
        env->ExceptionDescribe();
        env->ExceptionClear();
        IwTrace(CameraFlash, ("One or more java methods could not be found"));
    }
    return S3E_RESULT_ERROR;

}

void CameraFlashTerminate_platform()
{
    // Add any platform-specific termination code here
}

void TurnFlashOn_platform(bool turnOn)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_TurnFlashOn, turnOn);
}

void TurnFlashOff_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    env->CallVoidMethod(g_Obj, g_TurnFlashOff);
}
