package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.billinginterface.internal.ProductInfo;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.d3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1110d3 extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ProductInfo f19502a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1135e3 f19503b;

    public C1110d3(C1135e3 c1135e3, ProductInfo productInfo) {
        this.f19503b = c1135e3;
        this.f19502a = productInfo;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        ((C1386o5) this.f19503b.f19560a).a(C1138e6.a(new Cf(this.f19502a)));
    }
}
