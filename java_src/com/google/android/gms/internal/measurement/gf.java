package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class gf implements ff {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6413a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.gmscore_feature_tracking", true);
        f6413a = b10.d("measurement.gmscore_client_telemetry", false);
    }

    @Override // com.google.android.gms.internal.measurement.ff
    public final boolean zza() {
        return ((Boolean) f6413a.d()).booleanValue();
    }
}
