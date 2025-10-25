package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;
/* loaded from: classes2.dex */
public final class Dj implements InterfaceC1093cb {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ModuleEvent f18114a;

    public Dj(ModuleEvent moduleEvent) {
        this.f18114a = moduleEvent;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1093cb
    public final void a(InterfaceC1118db interfaceC1118db) {
        interfaceC1118db.reportEvent(this.f18114a);
    }
}
