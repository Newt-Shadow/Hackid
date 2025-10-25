package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* loaded from: classes2.dex */
public final class C1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Bundle f18027a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ D1 f18028b;

    public C1(D1 d12, Bundle bundle) {
        this.f18028b = d12;
        this.f18027a = bundle;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f18028b.f18071b.pauseUserSession(this.f18027a);
    }
}
