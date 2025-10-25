package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.z1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1656z1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f21007a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ D1 f21008b;

    public C1656z1(D1 d12, Intent intent) {
        this.f21008b = d12;
        this.f21007a = intent;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f21008b.f18071b.b(this.f21007a);
    }
}
