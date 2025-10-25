package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class jf implements Cif {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6459a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.sdk.collection.enable_extend_user_property_size", true);
        f6459a = b10.d("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        b10.c("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.Cif
    public final boolean zza() {
        return ((Boolean) f6459a.d()).booleanValue();
    }
}
