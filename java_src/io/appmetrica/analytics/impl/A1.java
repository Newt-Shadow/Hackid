package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* loaded from: classes2.dex */
public final class A1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f17918a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Bundle f17919b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ D1 f17920c;

    public A1(D1 d12, int i10, Bundle bundle) {
        this.f17920c = d12;
        this.f17918a = i10;
        this.f17919b = bundle;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f17920c.f18071b.reportData(this.f17918a, this.f17919b);
    }
}
