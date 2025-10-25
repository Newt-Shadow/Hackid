package io.appmetrica.analytics.impl;

import java.util.Map;
/* loaded from: classes2.dex */
public final class Nj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18651a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Map f18652b;

    public Nj(String str, Map map) {
        this.f18651a = str;
        this.f18652b = map;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportEvent(this.f18651a, this.f18652b);
    }
}
