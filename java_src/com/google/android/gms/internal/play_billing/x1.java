package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class x1 implements d3 {

    /* renamed from: a  reason: collision with root package name */
    private static final x1 f7166a = new x1();

    private x1() {
    }

    public static x1 c() {
        return f7166a;
    }

    @Override // com.google.android.gms.internal.play_billing.d3
    public final c3 a(Class cls) {
        if (b2.class.isAssignableFrom(cls)) {
            try {
                return (c3) b2.j(cls.asSubclass(b2.class)).z(3, null, null);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.play_billing.d3
    public final boolean b(Class cls) {
        return b2.class.isAssignableFrom(cls);
    }
}
