package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.ConfigProvider;
/* loaded from: classes2.dex */
public final class Jb implements ConfigProvider {

    /* renamed from: a  reason: collision with root package name */
    public final C1386o5 f18433a;

    /* renamed from: b  reason: collision with root package name */
    public final xc.d f18434b;

    public Jb(C1386o5 c1386o5) {
        xc.d a10;
        this.f18433a = c1386o5;
        a10 = xc.f.a(new Ib(this));
        this.f18434b = a10;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ConfigProvider
    /* renamed from: a */
    public final C1323lh getConfig() {
        return (C1323lh) this.f18434b.getValue();
    }
}
