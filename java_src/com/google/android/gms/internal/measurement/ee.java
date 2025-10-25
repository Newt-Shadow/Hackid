package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class ee implements de {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6373a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.client.3p_consent_state_v1", true);
        f6373a = b10.c("measurement.service.storage_consent_support_version", 203600L);
    }

    @Override // com.google.android.gms.internal.measurement.de
    public final long zza() {
        return ((Long) f6373a.d()).longValue();
    }
}
