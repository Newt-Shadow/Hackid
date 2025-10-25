package io.appmetrica.analytics.location.impl;

import io.appmetrica.analytics.locationapi.internal.CacheArguments;
/* loaded from: classes2.dex */
public final class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ i f21110a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k f21111b;

    public j(k kVar, i iVar) {
        this.f21111b = kVar;
        this.f21110a = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p pVar = this.f21111b.f21114c;
        i iVar = this.f21110a;
        pVar.f21131a = iVar;
        CacheArguments cacheArguments = iVar.f21109b;
        pVar.f21132b.updateCacheControl(cacheArguments.getRefreshPeriod(), cacheArguments.getOutdatedTimeInterval());
    }
}
