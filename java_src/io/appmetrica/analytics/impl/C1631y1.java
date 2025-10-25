package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.y1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1631y1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f20953a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ D1 f20954b;

    public C1631y1(D1 d12, Intent intent) {
        this.f20954b = d12;
        this.f20953a = intent;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f20954b.f18071b.c(this.f20953a);
    }
}
