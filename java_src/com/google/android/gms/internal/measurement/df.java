package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class df implements cf {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6359a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.gbraid_campaign.gbraid.client", true);
        f6359a = b10.d("measurement.gbraid_campaign.stop_lgclid", false);
    }

    @Override // com.google.android.gms.internal.measurement.cf
    public final boolean zza() {
        return ((Boolean) f6359a.d()).booleanValue();
    }
}
