package i9;

import android.hardware.Camera;
import android.util.Log;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f17359a = "i9.a";

    public static int a(int i10) {
        boolean z10;
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Log.w(f17359a, "No cameras!");
            return -1;
        }
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            i10 = 0;
            while (i10 < numberOfCameras) {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i10, cameraInfo);
                if (cameraInfo.facing == 0) {
                    break;
                }
                i10++;
            }
        }
        if (i10 < numberOfCameras) {
            return i10;
        }
        if (z10) {
            return -1;
        }
        return 0;
    }

    public static Camera b(int i10) {
        int a10 = a(i10);
        if (a10 == -1) {
            return null;
        }
        return Camera.open(a10);
    }
}
