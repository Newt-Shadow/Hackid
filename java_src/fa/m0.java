package fa;

import android.app.Activity;
import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public abstract class m0 {

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15972a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f15973b;

        static {
            int[] iArr = new int[pa.g.values().length];
            f15973b = iArr;
            try {
                iArr[pa.g.max.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15973b[pa.g.ultraHigh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15973b[pa.g.veryHigh.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15973b[pa.g.high.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15973b[pa.g.medium.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15973b[pa.g.low.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[PlatformChannel.DeviceOrientation.values().length];
            f15972a = iArr2;
            try {
                iArr2[PlatformChannel.DeviceOrientation.PORTRAIT_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15972a[PlatformChannel.DeviceOrientation.PORTRAIT_DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15972a[PlatformChannel.DeviceOrientation.LANDSCAPE_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15972a[PlatformChannel.DeviceOrientation.LANDSCAPE_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PlatformChannel.DeviceOrientation a(String str) {
        if (str != null) {
            char c10 = 65535;
            switch (str.hashCode()) {
                case -2022952606:
                    if (str.equals("landscapeLeft")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -339013923:
                    if (str.equals("portraitDown")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 746015638:
                    if (str.equals("portraitUp")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1718639649:
                    if (str.equals("landscapeRight")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return PlatformChannel.DeviceOrientation.LANDSCAPE_LEFT;
                case 1:
                    return PlatformChannel.DeviceOrientation.PORTRAIT_DOWN;
                case 2:
                    return PlatformChannel.DeviceOrientation.PORTRAIT_UP;
                case 3:
                    return PlatformChannel.DeviceOrientation.LANDSCAPE_RIGHT;
                default:
                    throw new UnsupportedOperationException("Could not deserialize device orientation: " + str);
            }
        }
        throw new UnsupportedOperationException("Could not deserialize null device orientation.");
    }

    public static List b(Activity activity) {
        int i10;
        CameraManager cameraManager = (CameraManager) activity.getSystemService("camera");
        String[] cameraIdList = cameraManager.getCameraIdList();
        ArrayList arrayList = new ArrayList();
        for (String str : cameraIdList) {
            try {
                i10 = Integer.parseInt(str, 10);
            } catch (NumberFormatException unused) {
                i10 = -1;
            }
            if (i10 >= 0) {
                HashMap hashMap = new HashMap();
                CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
                hashMap.put(Constants.NAME, str);
                hashMap.put("sensorOrientation", Integer.valueOf(((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue()));
                int intValue = ((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)).intValue();
                if (intValue != 0) {
                    if (intValue != 1) {
                        if (intValue == 2) {
                            hashMap.put("lensFacing", "external");
                        }
                    } else {
                        hashMap.put("lensFacing", "back");
                    }
                } else {
                    hashMap.put("lensFacing", "front");
                }
                arrayList.add(hashMap);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.media.CamcorderProfile c(java.lang.String r1, pa.g r2) {
        /*
            int r1 = java.lang.Integer.parseInt(r1)
            int[] r0 = fa.m0.a.f15973b
            int r2 = r2.ordinal()
            r2 = r0[r2]
            switch(r2) {
                case 1: goto L10;
                case 2: goto L1c;
                case 3: goto L29;
                case 4: goto L35;
                case 5: goto L41;
                case 6: goto L4d;
                default: goto Lf;
            }
        Lf:
            goto L59
        L10:
            r2 = 1
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L1c
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L1c:
            r2 = 8
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L29
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L29:
            r2 = 6
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L35
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L35:
            r2 = 5
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L41
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L41:
            r2 = 4
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L4d
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L4d:
            r2 = 7
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L59
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L59:
            r2 = 0
            boolean r0 = android.media.CamcorderProfile.hasProfile(r1, r2)
            if (r0 == 0) goto L65
            android.media.CamcorderProfile r1 = android.media.CamcorderProfile.get(r1, r2)
            return r1
        L65:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "No capture session available for current capture session."
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: fa.m0.c(java.lang.String, pa.g):android.media.CamcorderProfile");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CameraManager d(Context context) {
        return (CameraManager) context.getSystemService("camera");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(PlatformChannel.DeviceOrientation deviceOrientation) {
        if (deviceOrientation != null) {
            int i10 = a.f15972a[deviceOrientation.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return "landscapeRight";
                        }
                        throw new UnsupportedOperationException("Could not serialize device orientation: " + deviceOrientation.toString());
                    }
                    return "landscapeLeft";
                }
                return "portraitDown";
            }
            return "portraitUp";
        }
        throw new UnsupportedOperationException("Could not serialize null device orientation.");
    }
}
