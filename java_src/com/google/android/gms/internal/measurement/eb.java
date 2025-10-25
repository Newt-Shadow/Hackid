package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class eb implements gc {

    /* renamed from: a  reason: collision with root package name */
    private static final eb f6371a = new eb();

    private eb() {
    }

    public static eb c() {
        return f6371a;
    }

    @Override // com.google.android.gms.internal.measurement.gc
    public final boolean a(Class cls) {
        return hb.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.gc
    public final fc b(Class cls) {
        if (hb.class.isAssignableFrom(cls)) {
            try {
                return (fc) hb.r(cls.asSubclass(hb.class)).B(3, null, null);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }
}
