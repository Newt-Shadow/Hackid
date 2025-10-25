package io.appmetrica.analytics.impl;

import android.location.Location;
import android.os.Bundle;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface Oa extends Tc, L6, InterfaceC1168fb {
    @Override // io.appmetrica.analytics.impl.InterfaceC1168fb
    /* synthetic */ InterfaceC1143eb a();

    @Override // io.appmetrica.analytics.impl.L6
    /* synthetic */ void a(int i10, Bundle bundle);

    @Override // io.appmetrica.analytics.impl.Tc
    /* synthetic */ void a(Location location);

    void a(AppMetricaConfig appMetricaConfig);

    void a(AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig);

    void a(DeferredDeeplinkListener deferredDeeplinkListener);

    void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener);

    void a(ReporterConfig reporterConfig);

    void a(StartupParamsCallback startupParamsCallback, List<String> list);

    @Override // io.appmetrica.analytics.impl.Tc
    /* synthetic */ void a(String str, String str2);

    @Override // io.appmetrica.analytics.impl.Tc
    /* synthetic */ void a(boolean z10);

    @Override // io.appmetrica.analytics.impl.Tc
    /* synthetic */ void b(boolean z10);

    InterfaceC1118db c(ReporterConfig reporterConfig);

    @Override // io.appmetrica.analytics.impl.Tc
    /* synthetic */ void clearAppEnvironment();

    C1266ja d();

    String e();

    Map<String, String> g();

    AdvIdentifiersResult h();

    C1567vc i();

    @Override // io.appmetrica.analytics.impl.Tc
    /* synthetic */ void putAppEnvironmentValue(String str, String str2);

    @Override // io.appmetrica.analytics.impl.Tc
    /* synthetic */ void setDataSendingEnabled(boolean z10);

    @Override // io.appmetrica.analytics.impl.Tc
    /* synthetic */ void setUserProfileID(String str);
}
