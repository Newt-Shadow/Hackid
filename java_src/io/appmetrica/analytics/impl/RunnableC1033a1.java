package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AnrListener;
/* renamed from: io.appmetrica.analytics.impl.a1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1033a1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AnrListener f19359a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19360b;

    public RunnableC1033a1(C1282k1 c1282k1, AnrListener anrListener) {
        this.f19360b = c1282k1;
        this.f19359a = anrListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19360b).a(this.f19359a);
    }
}
