package yd;
/* loaded from: classes2.dex */
abstract /* synthetic */ class h0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int f33263a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f33263a;
    }

    public static final String b(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
