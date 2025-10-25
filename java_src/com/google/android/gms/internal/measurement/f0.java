package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class f0 implements g0 {

    /* renamed from: a  reason: collision with root package name */
    private final z4 f6378a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6379b;

    public f0(z4 z4Var, String str) {
        this.f6378a = z4Var;
        this.f6379b = str;
    }

    @Override // com.google.android.gms.internal.measurement.g0
    public final z4 a(p pVar) {
        z4 c10 = this.f6378a.c();
        c10.f(this.f6379b, pVar);
        return c10;
    }
}
