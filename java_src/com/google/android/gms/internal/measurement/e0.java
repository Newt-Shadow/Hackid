package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
final class e0 implements g0 {

    /* renamed from: a  reason: collision with root package name */
    private final z4 f6364a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6365b;

    public e0(z4 z4Var, String str) {
        this.f6364a = z4Var;
        this.f6365b = str;
    }

    @Override // com.google.android.gms.internal.measurement.g0
    public final z4 a(p pVar) {
        z4 c10 = this.f6364a.c();
        c10.g(this.f6365b, pVar);
        return c10;
    }
}
