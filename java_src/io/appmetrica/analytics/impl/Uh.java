package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;
/* loaded from: classes2.dex */
public final class Uh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReporterConfig f19066a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19067b;

    public Uh(C1225hi c1225hi, ReporterConfig reporterConfig) {
        this.f19067b = c1225hi;
        this.f19066a = reporterConfig;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19067b;
        ReporterConfig reporterConfig = this.f19066a;
        C1406p0 c1406p0 = c1225hi.f19748a;
        Context context = c1225hi.f19751d;
        c1406p0.getClass();
        C1381o0.a(context).f().a(reporterConfig);
    }
}
