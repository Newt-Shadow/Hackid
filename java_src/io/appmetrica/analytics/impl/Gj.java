package io.appmetrica.analytics.impl;

import java.util.Map;
/* loaded from: classes2.dex */
public final class Gj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Map f18278a;

    public Gj(Map map) {
        this.f18278a = map;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportAnr(this.f18278a);
    }
}
