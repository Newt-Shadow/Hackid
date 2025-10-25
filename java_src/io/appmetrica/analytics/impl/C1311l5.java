package io.appmetrica.analytics.impl;

import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.l5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1311l5 extends AbstractC1286k5 {
    public C1311l5(C1386o5 c1386o5) {
        super(c1386o5);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1286k5
    public final boolean b(int i10) {
        return i10 < 113;
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1286k5
    public final void c() {
        Ue ue2 = this.f19905a.f20255c;
        try {
            Hk hk = new Hk(ue2, H2.f18288g);
            Long a10 = hk.f18325c.a(Hk.f18317d);
            if (a10 != null) {
                hk.a(Hk.f18317d, Long.valueOf(TimeUnit.SECONDS.toMillis(a10.longValue())));
            }
            Long a11 = hk.f18325c.a(Hk.f18318e);
            if (a11 != null) {
                hk.a(Hk.f18318e, Long.valueOf(TimeUnit.SECONDS.toMillis(a11.longValue())));
            }
        } catch (Throwable unused) {
        }
        try {
            Hk hk2 = new Hk(ue2, C1515ta.f20667g);
            Long a12 = hk2.f18325c.a(Hk.f18317d);
            if (a12 != null) {
                hk2.a(Hk.f18317d, Long.valueOf(TimeUnit.SECONDS.toMillis(a12.longValue())));
            }
            Long a13 = hk2.f18325c.a(Hk.f18318e);
            if (a13 != null) {
                hk2.a(Hk.f18318e, Long.valueOf(TimeUnit.SECONDS.toMillis(a13.longValue())));
            }
        } catch (Throwable unused2) {
        }
    }
}
