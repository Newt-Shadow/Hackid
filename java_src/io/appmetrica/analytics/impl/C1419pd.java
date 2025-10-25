package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.pd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1419pd extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1543ud f20381a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AdRevenue f20382b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f20383c;

    public C1419pd(C1543ud c1543ud, AdRevenue adRevenue, boolean z10) {
        this.f20381a = c1543ud;
        this.f20382b = adRevenue;
        this.f20383c = z10;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1543ud.a(this.f20381a).reportAdRevenue(this.f20382b, this.f20383c);
    }
}
