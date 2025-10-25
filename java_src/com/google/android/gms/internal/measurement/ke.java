package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class ke implements je {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6476a;

    /* renamed from: b  reason: collision with root package name */
    public static final p9 f6477b;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        f6476a = b10.d("measurement.set_default_event_parameters_propagate_clear.client.dev", true);
        f6477b = b10.d("measurement.set_default_event_parameters_propagate_clear.service", true);
    }

    @Override // com.google.android.gms.internal.measurement.je
    public final boolean e() {
        return ((Boolean) f6477b.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.je
    public final boolean zza() {
        return ((Boolean) f6476a.d()).booleanValue();
    }
}
