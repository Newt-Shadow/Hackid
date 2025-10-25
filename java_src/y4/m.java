package y4;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f32921a = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f32922b = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f32923c = {12344};

    /* loaded from: classes.dex */
    public static final class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    public static void a() {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            if (z10) {
                sb2.append('\n');
            }
            sb2.append("glError: ");
            sb2.append(GLU.gluErrorString(glGetError));
            z10 = true;
        }
        if (!z10) {
            return;
        }
        throw new a(sb2.toString());
    }

    public static void b(boolean z10, String str) {
        if (z10) {
            return;
        }
        throw new a(str);
    }

    public static boolean c(Context context) {
        String eglQueryString;
        int i10 = q0.f32946a;
        if (i10 < 24) {
            return false;
        }
        if (i10 < 26 && ("samsung".equals(q0.f32948c) || "XT1650".equals(q0.f32949d))) {
            return false;
        }
        if ((i10 < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains("EGL_EXT_protected_content")) {
            return false;
        }
        return true;
    }

    public static boolean d() {
        String eglQueryString;
        if (q0.f32946a < 17 || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains("EGL_KHR_surfaceless_context")) {
            return false;
        }
        return true;
    }
}
