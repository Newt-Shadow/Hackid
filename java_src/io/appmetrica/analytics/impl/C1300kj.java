package io.appmetrica.analytics.impl;

import android.content.Context;
/* renamed from: io.appmetrica.analytics.impl.kj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1300kj implements InterfaceC1609x4 {
    @Override // io.appmetrica.analytics.impl.InterfaceC1609x4
    /* renamed from: b */
    public final C1201gj a(Context context, C1535u5 c1535u5, C1211h4 c1211h4, G4 g42) {
        C1671zg c1671zg;
        C1212h5 c1212h5 = new C1212h5(c1211h4.f19712b, c1211h4.f19711a);
        synchronized (c1535u5) {
            c1671zg = (C1671zg) c1535u5.f20702a.get(c1212h5.toString());
        }
        return new C1201gj(c1671zg);
    }
}
