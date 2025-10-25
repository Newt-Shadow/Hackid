package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.j1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1257j1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Throwable f19824a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19825b;

    public RunnableC1257j1(C1282k1 c1282k1, Throwable th) {
        this.f19825b = c1282k1;
        this.f19824a = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19825b).reportUnhandledException(this.f19824a);
    }
}
