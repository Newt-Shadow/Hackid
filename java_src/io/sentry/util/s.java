package io.sentry.util;
/* loaded from: classes2.dex */
public abstract class s {

    /* renamed from: a  reason: collision with root package name */
    static boolean f23798a;

    /* renamed from: b  reason: collision with root package name */
    static boolean f23799b;

    static {
        boolean z10;
        try {
            f23798a = "The Android Project".equals(System.getProperty("java.vendor"));
        } catch (Throwable unused) {
            f23798a = false;
        }
        try {
            String property = System.getProperty("java.specification.version");
            if (property != null) {
                if (Double.valueOf(property).doubleValue() >= 9.0d) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                f23799b = z10;
                return;
            }
            f23799b = false;
        } catch (Throwable unused2) {
            f23799b = false;
        }
    }

    public static boolean a() {
        return f23798a;
    }

    public static boolean b() {
        return f23799b;
    }

    public static boolean c() {
        return !f23798a;
    }
}
