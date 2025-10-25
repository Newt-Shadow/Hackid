package y4;

import android.os.Trace;
/* loaded from: classes.dex */
public abstract class n0 {
    public static void a(String str) {
        if (q0.f32946a >= 18) {
            b(str);
        }
    }

    private static void b(String str) {
        Trace.beginSection(str);
    }

    public static void c() {
        if (q0.f32946a >= 18) {
            d();
        }
    }

    private static void d() {
        Trace.endSection();
    }
}
