/*
Generic implementation of the CameraFlash extension.
This file should perform any platform-indepedentent functionality
(e.g. error checking) before calling platform-dependent implementations.
*/

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#include "CameraFlash_internal.h"
s3eResult CameraFlashInit()
{
    //Add any generic initialisation code here
    return CameraFlashInit_platform();
}

void CameraFlashTerminate()
{
    //Add any generic termination code here
    CameraFlashTerminate_platform();
}

void TurnFlashOn(bool turnOn)
{
	TurnFlashOn_platform(turnOn);
}

void TurnFlashOff()
{
	TurnFlashOff_platform();
}
