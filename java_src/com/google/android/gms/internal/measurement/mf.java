package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class mf implements lf {

    /* renamed from: a  reason: collision with root package name */
    public static final p9 f6565a;

    /* renamed from: b  reason: collision with root package name */
    public static final p9 f6566b;

    /* renamed from: c  reason: collision with root package name */
    public static final p9 f6567c;

    /* renamed from: d  reason: collision with root package name */
    public static final p9 f6568d;

    /* renamed from: e  reason: collision with root package name */
    public static final p9 f6569e;

    /* renamed from: f  reason: collision with root package name */
    public static final p9 f6570f;

    static {
        j9 b10 = new j9(e9.a("com.google.android.gms.measurement")).a().b();
        f6565a = b10.d("measurement.test.boolean_flag", false);
        f6566b = b10.c("measurement.test.cached_long_flag", -1L);
        f6567c = b10.e("measurement.test.double_flag", -3.0d);
        f6568d = b10.c("measurement.test.int_flag", -2L);
        f6569e = b10.c("measurement.test.long_flag", -1L);
        f6570f = b10.f("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.lf
    public final long e() {
        return ((Long) f6566b.d()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.lf
    public final double f() {
        return ((Double) f6567c.d()).doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.lf
    public final long g() {
        return ((Long) f6568d.d()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.lf
    public final long h() {
        return ((Long) f6569e.d()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.lf
    public final String i() {
        return (String) f6570f.d();
    }

    @Override // com.google.android.gms.internal.measurement.lf
    public final boolean zza() {
        return ((Boolean) f6565a.d()).booleanValue();
    }
}
