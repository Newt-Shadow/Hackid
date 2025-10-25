package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class cg implements bg {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6346a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        f6346a = b10.d("measurement.session_stitching_token_enabled", false);
        b10.d("measurement.link_sst_to_sid", true);
    }

    @Override // com.google.android.gms.internal.measurement.bg
    public final boolean e() {
        return ((Boolean) f6346a.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.bg
    public final boolean zza() {
        return true;
    }
}
