package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
/* loaded from: classes2.dex */
public final class Gg implements InterfaceC1576vl {

    /* renamed from: a  reason: collision with root package name */
    public final C1353mm f18270a;

    public Gg(C1353mm c1353mm) {
        this.f18270a = c1353mm;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1576vl
    public final void a() {
        NetworkTask c10 = this.f18270a.c();
        if (c10 != null) {
            C1665za.E.getClass();
            NetworkServiceLocator.getInstance().getNetworkCore().startTask(c10);
        }
    }
}
