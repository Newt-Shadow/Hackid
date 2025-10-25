package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class lg implements kg {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6513a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        f6513a = b10.d("measurement.tcf.consent_fix", true);
        b10.d("measurement.tcf.client", true);
        b10.d("measurement.tcf.empty_pref_fix", true);
    }

    @Override // com.google.android.gms.internal.measurement.kg
    public final boolean zza() {
        return ((Boolean) f6513a.d()).booleanValue();
    }
}
