package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class z1 implements w2 {

    /* renamed from: a  reason: collision with root package name */
    private static final z1 f6206a = new z1();

    private z1() {
    }

    public static z1 c() {
        return f6206a;
    }

    @Override // com.google.android.gms.internal.auth.w2
    public final v2 a(Class cls) {
        if (b2.class.isAssignableFrom(cls)) {
            try {
                return (v2) b2.b(cls.asSubclass(b2.class)).o(3, null, null);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.auth.w2
    public final boolean b(Class cls) {
        return b2.class.isAssignableFrom(cls);
    }
}
