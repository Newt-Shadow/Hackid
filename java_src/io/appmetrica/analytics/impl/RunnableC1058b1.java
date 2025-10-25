package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ExternalAttribution;
/* renamed from: io.appmetrica.analytics.impl.b1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1058b1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ExternalAttribution f19417a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19418b;

    public RunnableC1058b1(C1282k1 c1282k1, ExternalAttribution externalAttribution) {
        this.f19418b = c1282k1;
        this.f19417a = externalAttribution;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19418b).a(this.f19417a);
    }
}
