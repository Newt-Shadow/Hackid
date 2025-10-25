package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class te implements se {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6813a;

    /* renamed from: b  reason: collision with root package name */
    public static final p9 f6814b;

    /* renamed from: c  reason: collision with root package name */
    public static final p9 f6815c;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f6813a = b10.d("measurement.audience.refresh_event_count_filters_timestamp", false);
        f6814b = b10.d("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f6815c = b10.d("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.se
    public final boolean e() {
        return ((Boolean) f6813a.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.se
    public final boolean f() {
        return ((Boolean) f6814b.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.se
    public final boolean g() {
        return ((Boolean) f6815c.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.se
    public final boolean zza() {
        return true;
    }
}
