package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.x1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1606x1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f20897a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ D1 f20898b;

    public C1606x1(D1 d12, Intent intent) {
        this.f20898b = d12;
        this.f20897a = intent;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f20898b.f18071b.a(this.f20897a);
    }
}
