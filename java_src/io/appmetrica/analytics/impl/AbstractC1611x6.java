package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ICrashTransformer;
/* renamed from: io.appmetrica.analytics.impl.x6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1611x6 implements Ra {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1586w6 f20902a;

    /* renamed from: b  reason: collision with root package name */
    public final ICrashTransformer f20903b;

    /* renamed from: c  reason: collision with root package name */
    public final Y9 f20904c;

    public AbstractC1611x6(InterfaceC1586w6 interfaceC1586w6, ICrashTransformer iCrashTransformer, Y9 y92) {
        this.f20902a = interfaceC1586w6;
        this.f20903b = iCrashTransformer;
        this.f20904c = y92;
    }

    @Override // io.appmetrica.analytics.impl.Ra
    public final void a(Throwable th, P p10) {
        if (this.f20902a.a(th)) {
            ICrashTransformer iCrashTransformer = this.f20903b;
            if (iCrashTransformer == null || th == null || (th = iCrashTransformer.process(th)) != null) {
                C1603wn a10 = AbstractC1678zn.a(th, p10, null, (String) this.f20904c.f19289b.a(), (Boolean) this.f20904c.f19290c.a());
                C1443qc c1443qc = (C1443qc) ((Ch) this).f18056d;
                c1443qc.f18066a.a().b(c1443qc.f20439b).a(a10);
            }
        }
    }

    public final InterfaceC1586w6 b() {
        return this.f20902a;
    }

    public final ICrashTransformer a() {
        return this.f20903b;
    }
}
