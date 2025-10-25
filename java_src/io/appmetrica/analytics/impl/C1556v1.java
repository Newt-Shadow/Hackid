package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.v1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1556v1 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f20764a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f20765b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ D1 f20766c;

    public C1556v1(D1 d12, Intent intent, int i10) {
        this.f20766c = d12;
        this.f20764a = intent;
        this.f20765b = i10;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.f20766c.f18071b.a(this.f20764a, this.f20765b);
    }
}
