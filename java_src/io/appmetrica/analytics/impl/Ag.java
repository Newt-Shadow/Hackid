package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public final class Ag implements X7 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1411p5 f17957a;

    public Ag(InterfaceC1411p5 interfaceC1411p5) {
        this.f17957a = interfaceC1411p5;
    }

    @Override // io.appmetrica.analytics.impl.X7
    /* renamed from: b */
    public final C1671zg a(Context context, C1212h5 c1212h5, G4 g42) {
        return new C1671zg(context, c1212h5, g42, this.f17957a, new C1237i5(), C1501sl.a());
    }

    public final InterfaceC1411p5 a() {
        return this.f17957a;
    }
}
