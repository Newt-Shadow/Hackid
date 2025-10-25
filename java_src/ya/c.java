package ya;

import android.graphics.Rect;
import android.hardware.Camera;
import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import ya.i;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f33094a = Pattern.compile(";");

    private static List a(int i10) {
        int i11 = -i10;
        return Collections.singletonList(new Camera.Area(new Rect(i11, i11, i10, i10), 1));
    }

    private static String b(String str, Collection collection, String... strArr) {
        Log.i("CameraConfiguration", "Requesting " + str + " value from among: " + Arrays.toString(strArr));
        Log.i("CameraConfiguration", "Supported " + str + " values: " + collection);
        if (collection != null) {
            for (String str2 : strArr) {
                if (collection.contains(str2)) {
                    Log.i("CameraConfiguration", "Can set " + str + " to: " + str2);
                    return str2;
                }
            }
        }
        Log.i("CameraConfiguration", "No supported values match");
        return null;
    }

    public static void c(Camera.Parameters parameters) {
        if ("barcode".equals(parameters.getSceneMode())) {
            Log.i("CameraConfiguration", "Barcode scene mode already set");
            return;
        }
        String b10 = b("scene mode", parameters.getSupportedSceneModes(), "barcode");
        if (b10 != null) {
            parameters.setSceneMode(b10);
        }
    }

    public static void d(Camera.Parameters parameters, boolean z10) {
        int minExposureCompensation = parameters.getMinExposureCompensation();
        int maxExposureCompensation = parameters.getMaxExposureCompensation();
        float exposureCompensationStep = parameters.getExposureCompensationStep();
        if (minExposureCompensation != 0 || maxExposureCompensation != 0) {
            float f10 = 0.0f;
            if (exposureCompensationStep > 0.0f) {
                if (!z10) {
                    f10 = 1.5f;
                }
                int round = Math.round(f10 / exposureCompensationStep);
                float f11 = exposureCompensationStep * round;
                int max = Math.max(Math.min(round, maxExposureCompensation), minExposureCompensation);
                if (parameters.getExposureCompensation() == max) {
                    Log.i("CameraConfiguration", "Exposure compensation already set to " + max + " / " + f11);
                    return;
                }
                Log.i("CameraConfiguration", "Setting exposure compensation to " + max + " / " + f11);
                parameters.setExposureCompensation(max);
                return;
            }
        }
        Log.i("CameraConfiguration", "Camera does not support exposure compensation");
    }

    public static void e(Camera.Parameters parameters) {
        f(parameters, 10, 20);
    }

    public static void f(Camera.Parameters parameters, int i10, int i11) {
        int[] iArr;
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        Log.i("CameraConfiguration", "Supported FPS ranges: " + n(supportedPreviewFpsRange));
        if (supportedPreviewFpsRange != null && !supportedPreviewFpsRange.isEmpty()) {
            Iterator<int[]> it = supportedPreviewFpsRange.iterator();
            while (true) {
                if (it.hasNext()) {
                    iArr = it.next();
                    int i12 = iArr[0];
                    int i13 = iArr[1];
                    if (i12 >= i10 * 1000 && i13 <= i11 * 1000) {
                        break;
                    }
                } else {
                    iArr = null;
                    break;
                }
            }
            if (iArr == null) {
                Log.i("CameraConfiguration", "No suitable FPS range?");
                return;
            }
            int[] iArr2 = new int[2];
            parameters.getPreviewFpsRange(iArr2);
            if (Arrays.equals(iArr2, iArr)) {
                Log.i("CameraConfiguration", "FPS range already set to " + Arrays.toString(iArr));
                return;
            }
            Log.i("CameraConfiguration", "Setting FPS range to " + Arrays.toString(iArr));
            parameters.setPreviewFpsRange(iArr[0], iArr[1]);
        }
    }

    public static void g(Camera.Parameters parameters, i.a aVar, boolean z10) {
        String b10;
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (!z10 && aVar != i.a.AUTO) {
            if (aVar == i.a.CONTINUOUS) {
                b10 = b("focus mode", supportedFocusModes, "continuous-picture", "continuous-video", "auto");
            } else if (aVar == i.a.INFINITY) {
                b10 = b("focus mode", supportedFocusModes, "infinity");
            } else if (aVar == i.a.MACRO) {
                b10 = b("focus mode", supportedFocusModes, "macro");
            } else {
                b10 = null;
            }
        } else {
            b10 = b("focus mode", supportedFocusModes, "auto");
        }
        if (!z10 && b10 == null) {
            b10 = b("focus mode", supportedFocusModes, "macro", "edof");
        }
        if (b10 != null) {
            if (b10.equals(parameters.getFocusMode())) {
                Log.i("CameraConfiguration", "Focus mode already set to " + b10);
                return;
            }
            parameters.setFocusMode(b10);
        }
    }

    public static void h(Camera.Parameters parameters) {
        if (parameters.getMaxNumFocusAreas() > 0) {
            Log.i("CameraConfiguration", "Old focus areas: " + m(parameters.getFocusAreas()));
            List<Camera.Area> a10 = a(400);
            Log.i("CameraConfiguration", "Setting focus area to : " + m(a10));
            parameters.setFocusAreas(a10);
            return;
        }
        Log.i("CameraConfiguration", "Device does not support focus areas");
    }

    public static void i(Camera.Parameters parameters) {
        if ("negative".equals(parameters.getColorEffect())) {
            Log.i("CameraConfiguration", "Negative effect already set");
            return;
        }
        String b10 = b("color effect", parameters.getSupportedColorEffects(), "negative");
        if (b10 != null) {
            parameters.setColorEffect(b10);
        }
    }

    public static void j(Camera.Parameters parameters) {
        if (parameters.getMaxNumMeteringAreas() > 0) {
            Log.i("CameraConfiguration", "Old metering areas: " + parameters.getMeteringAreas());
            List<Camera.Area> a10 = a(400);
            Log.i("CameraConfiguration", "Setting metering area to : " + m(a10));
            parameters.setMeteringAreas(a10);
            return;
        }
        Log.i("CameraConfiguration", "Device does not support metering areas");
    }

    public static void k(Camera.Parameters parameters, boolean z10) {
        String b10;
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        if (z10) {
            b10 = b("flash mode", supportedFlashModes, "torch", "on");
        } else {
            b10 = b("flash mode", supportedFlashModes, "off");
        }
        if (b10 != null) {
            if (b10.equals(parameters.getFlashMode())) {
                Log.i("CameraConfiguration", "Flash mode already set to " + b10);
                return;
            }
            Log.i("CameraConfiguration", "Setting flash mode to " + b10);
            parameters.setFlashMode(b10);
        }
    }

    public static void l(Camera.Parameters parameters) {
        if (parameters.isVideoStabilizationSupported()) {
            if (parameters.getVideoStabilization()) {
                Log.i("CameraConfiguration", "Video stabilization already enabled");
                return;
            }
            Log.i("CameraConfiguration", "Enabling video stabilization...");
            parameters.setVideoStabilization(true);
            return;
        }
        Log.i("CameraConfiguration", "This device does not support video stabilization");
    }

    private static String m(Iterable iterable) {
        if (iterable == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Camera.Area area = (Camera.Area) it.next();
            sb2.append(area.rect);
            sb2.append(':');
            sb2.append(area.weight);
            sb2.append(' ');
        }
        return sb2.toString();
    }

    private static String n(Collection collection) {
        if (collection != null && !collection.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                sb2.append(Arrays.toString((int[]) it.next()));
                if (it.hasNext()) {
                    sb2.append(", ");
                }
            }
            sb2.append(']');
            return sb2.toString();
        }
        return "[]";
    }
}
