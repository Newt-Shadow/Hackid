package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class fg implements eg {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6401a;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        f6401a = b10.d("measurement.client.sessions.enable_fix_background_engagement", false);
        b10.d("measurement.client.sessions.enable_pause_engagement_in_background", true);
        b10.c("measurement.id.client.sessions.enable_fix_background_engagement", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.eg
    public final boolean zza() {
        return ((Boolean) f6401a.d()).booleanValue();
    }
}
