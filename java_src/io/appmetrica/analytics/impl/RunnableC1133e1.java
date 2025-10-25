package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.e1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1133e1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19558a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19559b;

    public RunnableC1133e1(C1282k1 c1282k1, String str) {
        this.f19559b = c1282k1;
        this.f19558a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19559b).reportEvent(this.f19558a);
    }
}
