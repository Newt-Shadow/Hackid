package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.sd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1493sd extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1543ud f20593a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f20594b;

    public C1493sd(C1543ud c1543ud, boolean z10) {
        this.f20593a = c1543ud;
        this.f20594b = z10;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1543ud.a(this.f20593a).b(this.f20594b);
    }
}
