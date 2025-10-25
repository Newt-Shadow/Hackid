package io.appmetrica.analytics.impl;

import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.dh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1124dh extends Pg {
    public C1124dh(C1386o5 c1386o5) {
        super(c1386o5);
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        C1451qk c1451qk;
        Gk gk;
        C1564v9 c1564v9 = this.f18787a.f20266n;
        Ek ek = c1564v9.f20782c;
        if (ek.f18192g == 0) {
            c1451qk = ek.f18189d.b();
            if (c1451qk != null && c1451qk.a(c1138e6.f19579i) && (c1451qk = ek.f18190e.b()) != null && c1451qk.a(c1138e6.f19579i)) {
                c1451qk = null;
            }
        } else {
            c1451qk = ek.f18191f;
        }
        if (c1451qk != null) {
            gk = new Gk();
            gk.f18279a = c1451qk.f20448d;
            long andIncrement = c1451qk.f20450f.getAndIncrement();
            Hk hk = c1451qk.f20446b;
            hk.a(Hk.f18320g, Long.valueOf(c1451qk.f20450f.get()));
            hk.b();
            gk.f18280b = andIncrement;
            gk.f18281c = TimeUnit.MILLISECONDS.toSeconds(c1451qk.f20454j);
            gk.f18282d = c1451qk.f20447c.f20679a;
        } else {
            long j10 = c1138e6.f19580j;
            long a10 = ek.f18187b.a();
            W6 w62 = ek.f18186a.f20257e;
            Ik ik = Ik.BACKGROUND;
            w62.a(a10, ik, j10);
            Gk gk2 = new Gk();
            gk2.f18279a = a10;
            gk2.f18282d = ik;
            gk2.f18280b = 0L;
            gk2.f18281c = 0L;
            gk = gk2;
        }
        c1564v9.a(c1138e6, gk);
        return true;
    }
}
