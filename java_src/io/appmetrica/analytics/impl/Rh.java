package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;
/* loaded from: classes2.dex */
public final class Rh implements Provider {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1406p0 f18898a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f18899b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ReporterConfig f18900c;

    public Rh(C1406p0 c1406p0, Context context, ReporterConfig reporterConfig) {
        this.f18898a = c1406p0;
        this.f18899b = context;
        this.f18900c = reporterConfig;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Provider
    public final Object get() {
        C1406p0 c1406p0 = this.f18898a;
        Context context = this.f18899b;
        ReporterConfig reporterConfig = this.f18900c;
        c1406p0.getClass();
        return C1381o0.a(context).f().c(reporterConfig);
    }
}
