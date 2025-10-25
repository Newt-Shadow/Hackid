package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class qe implements pe {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6727a;

    /* renamed from: b  reason: collision with root package name */
    public static final p9 f6728b;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.collection.event_safelist", true);
        f6727a = b10.d("measurement.service.store_null_safelist", true);
        f6728b = b10.d("measurement.service.store_safelist", true);
    }

    @Override // com.google.android.gms.internal.measurement.pe
    public final boolean e() {
        return ((Boolean) f6727a.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.pe
    public final boolean f() {
        return ((Boolean) f6728b.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.pe
    public final boolean zza() {
        return true;
    }
}
