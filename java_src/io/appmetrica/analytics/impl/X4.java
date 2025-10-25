package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
/* loaded from: classes2.dex */
public abstract class X4 extends D5 {
    public X4(BaseRequestConfig.ComponentLoader<Object, Object, C1038a6> componentLoader, Ql ql, BaseRequestConfig.BaseRequestArguments<F4, Object> baseRequestArguments) {
        super(componentLoader, ql, baseRequestArguments);
    }

    @Override // io.appmetrica.analytics.impl.D5
    public final void a(Object obj) {
        F4 f42 = (F4) obj;
        synchronized (this) {
            super.a((Object) f42);
        }
    }

    public final synchronized void a(F4 f42) {
        super.a((Object) f42);
    }
}
