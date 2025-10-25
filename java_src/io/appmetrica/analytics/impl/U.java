package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public final class U {

    /* renamed from: a  reason: collision with root package name */
    public final C1406p0 f19028a;

    /* renamed from: b  reason: collision with root package name */
    public final Jk f19029b;

    /* renamed from: c  reason: collision with root package name */
    public final C1260j4 f19030c;

    public U(C1406p0 c1406p0, Jk jk, C1260j4 c1260j4) {
        this.f19028a = c1406p0;
        this.f19029b = jk;
        this.f19030c = c1260j4;
    }

    public final void a(final Context context, final AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        boolean z10;
        PublicLogger mainPublicOrAnonymousLogger = LoggerStorage.getMainPublicOrAnonymousLogger();
        this.f19028a.getClass();
        synchronized (C1381o0.class) {
            z10 = C1381o0.f20245f;
        }
        if (!z10) {
            mainPublicOrAnonymousLogger.info("Session autotracking enabled", new Object[0]);
            this.f19029b.a();
        }
        this.f19028a.getClass();
        C1381o0 a10 = C1381o0.a(context);
        a10.f20250d.a(null, a10);
        IHandlerExecutor a11 = this.f19030c.a();
        ((L9) a11).f18518b.post(new Runnable() { // from class: io.appmetrica.analytics.impl.ip
            @Override // java.lang.Runnable
            public final void run() {
                U.a(U.this, context, appMetricaLibraryAdapterConfig);
            }
        });
        this.f19028a.getClass();
        C1406p0.a();
    }

    public static final void a(U u10, Context context, AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
        u10.f19028a.getClass();
        C1381o0 a10 = C1381o0.a(context);
        a10.f().a(appMetricaLibraryAdapterConfig);
        C1509t4.j().f20620c.a().execute(new RunnableC1357n1(a10.f20247a));
    }
}
