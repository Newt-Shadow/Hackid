package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Sk implements Yn {

    /* renamed from: a  reason: collision with root package name */
    public final C1406p0 f18944a;

    public Sk(C1406p0 c1406p0) {
        this.f18944a = c1406p0;
    }

    @Override // io.appmetrica.analytics.impl.Yn
    public final Wn a(Void r32) {
        boolean z10;
        this.f18944a.getClass();
        synchronized (C1381o0.class) {
            z10 = C1381o0.f20245f;
        }
        if (z10) {
            return new Wn(this, true, "");
        }
        return new Wn(this, false, "AppMetrica isn't initialized. Use AppMetrica#activate(android.content.Context, String) method to activate.");
    }

    public final Wn a() {
        return a((Void) null);
    }
}
