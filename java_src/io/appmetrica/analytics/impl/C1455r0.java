package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* renamed from: io.appmetrica.analytics.impl.r0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1455r0 implements Ic {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1480s0 f20486a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppMetricaConfig f20487b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PublicLogger f20488c;

    public C1455r0(C1480s0 c1480s0, AppMetricaConfig appMetricaConfig, PublicLogger publicLogger) {
        this.f20486a = c1480s0;
        this.f20487b = appMetricaConfig;
        this.f20488c = publicLogger;
    }

    @Override // io.appmetrica.analytics.impl.Ic
    public final C1517tc a() {
        C1480s0 c1480s0 = this.f20486a;
        return c1480s0.f20562g.a(this.f20487b, this.f20488c, c1480s0.f20564i.f18771g);
    }
}
