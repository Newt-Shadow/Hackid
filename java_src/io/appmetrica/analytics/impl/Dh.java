package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public final class Dh implements InterfaceC1609x4 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1411p5 f18112a;

    public Dh(InterfaceC1411p5 interfaceC1411p5) {
        this.f18112a = interfaceC1411p5;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1609x4
    /* renamed from: b */
    public final C1646yg a(Context context, C1535u5 c1535u5, C1211h4 c1211h4, G4 g42) {
        C1671zg c1671zg;
        C1212h5 c1212h5 = new C1212h5(c1211h4.f19712b, c1211h4.f19711a);
        Ag ag = new Ag(this.f18112a);
        synchronized (c1535u5) {
            c1671zg = (C1671zg) c1535u5.a(c1212h5, g42, ag, c1535u5.f20702a);
        }
        return new C1646yg(context, c1671zg);
    }
}
