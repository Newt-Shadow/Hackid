package io.appmetrica.analytics.impl;

import android.content.Context;
/* renamed from: io.appmetrica.analytics.impl.lc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1318lc implements InterfaceC1609x4 {
    @Override // io.appmetrica.analytics.impl.InterfaceC1609x4
    /* renamed from: b */
    public final L4 a(Context context, C1535u5 c1535u5, C1211h4 c1211h4, G4 g42) {
        O4 o42;
        M4 m42 = new M4(c1211h4.f19712b);
        P4 p42 = new P4();
        synchronized (c1535u5) {
            o42 = (O4) c1535u5.a(m42, g42, p42, c1535u5.f20703b);
        }
        return new L4(context, o42, g42);
    }
}
