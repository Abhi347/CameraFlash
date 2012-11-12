/*
java implementation of the CameraFlash extension.

Add android-specific functionality here.

These functions are called via JNI from native code.
*/
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
import com.ideaworks3d.marmalade.LoaderAPI;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.util.Log;
import java.io.IOException;
import java.util.List;

class CameraFlash
{
	static Camera m_Camera;
	static Parameters cameraParameters;
    public void TurnFlashOn(boolean turnOn)
    {
		try{
			m_Camera = Camera.open();
			cameraParameters = m_Camera.getParameters();
			List<String> flashModes = cameraParameters.getSupportedFlashModes();
			String flashMode = cameraParameters.getFlashMode();
			Log.i("Camera Flash", "Flash mode: " + flashMode);
			Log.i("Camera Flash", "Flash modes: " + flashModes);
			if(turnOn){
				if (!Parameters.FLASH_MODE_TORCH.equals(flashMode)) {
					// Turn on the flash
					if (flashModes.contains(Parameters.FLASH_MODE_TORCH)) {
						cameraParameters.setFlashMode(Parameters.FLASH_MODE_TORCH);
						m_Camera.setParameters(cameraParameters);
					}
				}
			}
			else{
				if (!Parameters.FLASH_MODE_OFF.equals(flashMode)) {
					// Turn off the flash
					if (flashModes.contains(Parameters.FLASH_MODE_OFF)) {
					  cameraParameters.setFlashMode(Parameters.FLASH_MODE_OFF);
					  m_Camera.setParameters(cameraParameters);
					} else {
						Log.e("Camera Flash", "FLASH_MODE_OFF not supported");
					}
				}
			}
		}catch (RuntimeException e) {
			Log.e("Camera Flash", "Camera failed: " + e.getMessage());
		}
    }
    public void TurnFlashOff()
    {
		TurnFlashOn(false);
		if (m_Camera != null) {
			m_Camera.stopPreview();
			m_Camera.release();
			m_Camera = null;
		}
    }
}
