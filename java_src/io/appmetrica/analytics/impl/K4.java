package io.appmetrica.analytics.impl;

import java.util.HashMap;
/* loaded from: classes2.dex */
public abstract class K4 extends Gd {

    /* renamed from: f  reason: collision with root package name */
    public final Object f18476f;

    public K4(int i10, String str, Object obj, Yn yn, S2 s22) {
        super(i10, str, yn, s22);
        this.f18476f = obj;
    }

    @Override // io.appmetrica.analytics.impl.Gd, io.appmetrica.analytics.impl.Kn
    public final void a(Jn jn) {
        if (f()) {
            S2 s22 = this.f18268d;
            int i10 = this.f18266b;
            Ln a10 = s22.a(jn, (Ln) ((HashMap) jn.f18467a.get(i10)).get(this.f18265a), this);
            if (a10 != null) {
                a(a10);
            }
        }
    }

    public abstract void a(Ln ln);

    public final Object g() {
        return this.f18476f;
    }
}
