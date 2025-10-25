package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* renamed from: io.appmetrica.analytics.impl.li  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1324li implements InterfaceC1143eb {
    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb, io.appmetrica.analytics.impl.InterfaceC1168fb
    public final InterfaceC1143eb a() {
        return this;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    public final Ua b(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, boolean z10) {
        return new Jc();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    public final void a(ReporterConfig reporterConfig) {
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    public final InterfaceC1118db b(ReporterConfig reporterConfig) {
        return new C1249ii();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    public final Ua a(AppMetricaConfig appMetricaConfig, PublicLogger publicLogger, boolean z10) {
        return new Jc();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1143eb
    public final InterfaceC1193gb b(AppMetricaConfig appMetricaConfig) {
        return new C1249ii();
    }
}
