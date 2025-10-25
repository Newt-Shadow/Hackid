package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.rh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1472rh extends Pg {
    public C1472rh(C1386o5 c1386o5) {
        super(c1386o5);
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        ((C1660z5) this.f18787a.f20268p).e();
        Ek ek = this.f18787a.f20262j;
        synchronized (ek) {
            C1451qk b10 = ek.b(c1138e6);
            if (b10.f20451g) {
                b10.f20451g = false;
                Hk hk = b10.f20446b;
                hk.a(Hk.f18322i, Boolean.FALSE);
                hk.b();
            }
            if (ek.f18192g != 1) {
                ek.a(ek.f18191f, c1138e6);
            }
            ek.f18192g = 1;
        }
        return false;
    }
}
