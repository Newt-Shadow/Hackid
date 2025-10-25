package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class sf implements rf {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6792a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        f6792a = b10.d("measurement.add_first_launch_logging_timestamp.service", false);
        b10.c("measurement.id.add_first_launch_logging_timestamp.service", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.rf
    public final boolean zza() {
        return ((Boolean) f6792a.d()).booleanValue();
    }
}
