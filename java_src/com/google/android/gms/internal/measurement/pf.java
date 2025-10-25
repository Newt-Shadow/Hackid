package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class pf implements of {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6691a;

    /* renamed from: b  reason: collision with root package name */
    public static final p9 f6692b;

    /* renamed from: c  reason: collision with root package name */
    public static final p9 f6693c;

    /* renamed from: d  reason: collision with root package name */
    public static final p9 f6694d;

    /* renamed from: e  reason: collision with root package name */
    public static final p9 f6695e;

    /* renamed from: f  reason: collision with root package name */
    public static final p9 f6696f;

    /* renamed from: g  reason: collision with root package name */
    public static final p9 f6697g;

    /* renamed from: h  reason: collision with root package name */
    public static final p9 f6698h;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.rb.attribution.ad_campaign_info", true);
        b10.d("measurement.rb.attribution.service.bundle_on_backgrounded", true);
        f6691a = b10.d("measurement.rb.attribution.client2", true);
        f6692b = b10.d("measurement.rb.attribution.followup1.service", false);
        b10.d("measurement.rb.attribution.client.get_trigger_uris_async", true);
        f6693c = b10.d("measurement.rb.attribution.service.trigger_uris_high_priority", true);
        b10.d("measurement.rb.attribution.index_out_of_bounds_fix", true);
        f6694d = b10.d("measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once", true);
        f6695e = b10.d("measurement.rb.attribution.retry_disposition", false);
        f6696f = b10.d("measurement.rb.attribution.service", true);
        f6697g = b10.d("measurement.rb.attribution.enable_trigger_redaction", true);
        f6698h = b10.d("measurement.rb.attribution.uuid_generation", true);
        b10.c("measurement.id.rb.attribution.retry_disposition", 0L);
        b10.d("measurement.rb.attribution.improved_retry", true);
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean a() {
        return ((Boolean) f6697g.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean e() {
        return ((Boolean) f6691a.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean f() {
        return ((Boolean) f6692b.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean g() {
        return ((Boolean) f6693c.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean h() {
        return ((Boolean) f6694d.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean i() {
        return ((Boolean) f6695e.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean j() {
        return ((Boolean) f6698h.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean k() {
        return ((Boolean) f6696f.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.of
    public final boolean zza() {
        return true;
    }
}
