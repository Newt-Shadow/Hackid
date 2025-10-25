package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* renamed from: io.appmetrica.analytics.impl.q0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1431q0 implements Ic {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1480s0 f20404a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppMetricaConfig f20405b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PublicLogger f20406c;

    public C1431q0(C1480s0 c1480s0, AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        this.f20404a = c1480s0;
        this.f20405b = appMetricaConfig;
        this.f20406c = publicLogger;
    }

    @Override // io.appmetrica.analytics.impl.Ic
    public final C1517tc a() {
        C1480s0 c1480s0 = this.f20404a;
        return c1480s0.f20562g.b(this.f20405b, this.f20406c, c1480s0.f20564i.f18771g);
    }
}
