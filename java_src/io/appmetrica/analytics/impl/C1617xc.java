package io.appmetrica.analytics.impl;

import android.content.Context;
/* renamed from: io.appmetrica.analytics.impl.xc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1617xc implements InterfaceC1609x4 {
    @Override // io.appmetrica.analytics.impl.InterfaceC1609x4
    /* renamed from: b */
    public final C1642yc a(Context context, C1535u5 c1535u5, C1211h4 c1211h4, G4 g42) {
        C1671zg c1671zg;
        C1667zc c1667zc = new C1667zc(c1211h4.f19712b, c1211h4.f19711a);
        Ag ag = new Ag(new Cc());
        synchronized (c1535u5) {
            c1671zg = (C1671zg) c1535u5.a(c1667zc, g42, ag, c1535u5.f20702a);
        }
        return new C1642yc(context, c1671zg);
    }
}
