package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* renamed from: io.appmetrica.analytics.impl.eb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC1143eb extends InterfaceC1168fb {
    Ua a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, boolean z10);

    @Override // io.appmetrica.analytics.impl.InterfaceC1168fb
    /* synthetic */ InterfaceC1143eb a();

    void a(ReporterConfig reporterConfig);

    Ua b(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, boolean z10);

    InterfaceC1118db b(ReporterConfig reporterConfig);

    InterfaceC1193gb b(AppMetricaConfig appMetricaConfig);
}
