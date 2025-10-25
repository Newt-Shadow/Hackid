package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;
/* loaded from: classes2.dex */
public final class N0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Revenue f18627a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18628b;

    public N0(C1282k1 c1282k1, Revenue revenue) {
        this.f18628b = c1282k1;
        this.f18627a = revenue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f18628b).reportRevenue(this.f18627a);
    }
}
