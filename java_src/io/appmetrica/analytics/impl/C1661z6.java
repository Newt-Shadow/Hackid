package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* renamed from: io.appmetrica.analytics.impl.z6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1661z6 extends R2 {

    /* renamed from: o  reason: collision with root package name */
    public final A6 f21019o;

    /* renamed from: p  reason: collision with root package name */
    public final C1653yn f21020p;

    public C1661z6(Context context, C1645yf c1645yf, AppMetricaConfig appMetricaConfig, C1598wi c1598wi, Y9 y92) {
        this(context, c1598wi, new Gh(c1645yf, new CounterConfiguration(appMetricaConfig, CounterConfigurationReporterType.CRASH), appMetricaConfig.userProfileID), y92, new A6(context), new C1653yn(), C1509t4.j().m(), new C1628xn(), new Cg(), new G6(), new W(), new He(y92));
    }

    @Override // io.appmetrica.analytics.impl.R2, io.appmetrica.analytics.impl.InterfaceC1118db, io.appmetrica.analytics.impl.InterfaceC1193gb
    public final void a(C1603wn c1603wn) {
        this.f21019o.a(this.f21020p.a(c1603wn, this.f18865b));
        PublicLogger publicLogger = this.f18866c;
        publicLogger.info("Unhandled exception received: " + c1603wn, new Object[0]);
    }

    public final void b(AppMetricaConfig appMetricaConfig) {
        b(appMetricaConfig.errorEnvironment);
    }

    @Override // io.appmetrica.analytics.impl.R2
    public final String j() {
        return "[CrashReporter]";
    }

    public C1661z6(Context context, C1598wi c1598wi, Gh gh, Y9 y92, A6 a62, C1653yn c1653yn, C1467rc c1467rc, C1628xn c1628xn, Cg cg, G6 g62, W w10, He he2) {
        super(context, c1598wi, gh, y92, c1467rc, c1628xn, cg, g62, w10, he2);
        this.f21019o = a62;
        this.f21020p = c1653yn;
        C1509t4.j().getClass();
    }
}
