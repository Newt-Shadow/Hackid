package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* loaded from: classes2.dex */
public final class B1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Bundle f17972a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ D1 f17973b;

    public B1(D1 d12, Bundle bundle) {
        this.f17973b = d12;
        this.f17972a = bundle;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f17973b.f18071b.resumeUserSession(this.f17972a);
    }
}
