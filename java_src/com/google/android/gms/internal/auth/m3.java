package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
abstract class m3 {

    /* renamed from: a  reason: collision with root package name */
    private static final Class f6114a;

    /* renamed from: b  reason: collision with root package name */
    private static final p3 f6115b;

    /* renamed from: c  reason: collision with root package name */
    private static final p3 f6116c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f6117d = 0;

    static {
        Class<?> cls;
        Class<?> cls2;
        p3 p3Var = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f6114a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                p3Var = (p3) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused3) {
            }
        }
        f6115b = p3Var;
        f6116c = new s3();
    }

    public static p3 a() {
        return f6115b;
    }

    public static p3 b() {
        return f6116c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(p3 p3Var, Object obj, Object obj2) {
        p3Var.d(obj, p3Var.b(p3Var.a(obj), p3Var.a(obj2)));
    }

    public static void d(Class cls) {
        Class cls2;
        if (!b2.class.isAssignableFrom(cls) && (cls2 = f6114a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }
}
