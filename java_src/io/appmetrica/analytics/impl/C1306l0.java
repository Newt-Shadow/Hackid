package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
/* renamed from: io.appmetrica.analytics.impl.l0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1306l0 implements Na {

    /* renamed from: a  reason: collision with root package name */
    public final Handler f20002a;

    /* renamed from: b  reason: collision with root package name */
    public final IHandlerExecutor f20003b;

    /* renamed from: c  reason: collision with root package name */
    public final C1559v4 f20004c;

    public C1306l0() {
        IHandlerExecutor a10 = C1509t4.j().f().a();
        this.f20003b = a10;
        this.f20002a = a10.getHandler();
        this.f20004c = new C1559v4();
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final void a(AppMetricaConfig appMetricaConfig, InterfaceC1168fb interfaceC1168fb) {
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final Handler b() {
        return this.f20002a;
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final U1 c() {
        return new U1();
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final C1591wb d() {
        return new C1591wb();
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final ICommonExecutor getDefaultExecutor() {
        return this.f20003b;
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final C1559v4 a() {
        return this.f20004c;
    }
}
