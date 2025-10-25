package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class ud implements td {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6838a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        f6838a = b10.d("measurement.service.ad_impression.convert_value_to_double", true);
        b10.d("measurement.service.separate_public_internal_event_blacklisting", true);
        b10.d("measurement.service.ad_impression", true);
    }

    @Override // com.google.android.gms.internal.measurement.td
    public final boolean zza() {
        return ((Boolean) f6838a.d()).booleanValue();
    }
}
