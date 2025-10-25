package io.appmetrica.analytics.impl;

import android.content.res.Configuration;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.t1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1506t1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Configuration f20614a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ D1 f20615b;

    public C1506t1(D1 d12, Configuration configuration) {
        this.f20615b = d12;
        this.f20614a = configuration;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f20615b.f18071b.onConfigurationChanged(this.f20614a);
    }
}
