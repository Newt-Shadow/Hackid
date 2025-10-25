package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class he implements ge {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6422a;

    /* renamed from: b  reason: collision with root package name */
    public static final p9 f6423b;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.set_default_event_parameters_with_backfill.client.dev", false);
        b10.d("measurement.set_default_event_parameters_with_backfill.service", true);
        b10.c("measurement.id.set_default_event_parameters.fix_service_request_ordering", 0L);
        f6422a = b10.d("measurement.set_default_event_parameters.fix_app_update_logging", true);
        f6423b = b10.d("measurement.set_default_event_parameters.fix_service_request_ordering", false);
        b10.d("measurement.set_default_event_parameters.fix_subsequent_launches", true);
    }

    @Override // com.google.android.gms.internal.measurement.ge
    public final boolean e() {
        return ((Boolean) f6423b.d()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.ge
    public final boolean zza() {
        return ((Boolean) f6422a.d()).booleanValue();
    }
}
