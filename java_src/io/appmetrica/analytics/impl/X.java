package io.appmetrica.analytics.impl;

import java.util.Map;
/* loaded from: classes2.dex */
public final class X implements InterfaceC1254in {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Y f19203a;

    public X(Y y10) {
        this.f19203a = y10;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1254in
    public final Thread a() {
        return this.f19203a.f19270b;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1254in
    public final StackTraceElement[] b() {
        Y y10 = this.f19203a;
        return (StackTraceElement[]) y10.f19269a.get(y10.f19270b);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1254in
    public final Map<Thread, StackTraceElement[]> c() {
        return this.f19203a.f19269a;
    }
}
