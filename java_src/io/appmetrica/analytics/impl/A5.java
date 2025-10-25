package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class A5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Zd f17931a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ B5 f17932b;

    public A5(B5 b52, Zd zd2) {
        this.f17932b = b52;
        this.f17931a = zd2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f17932b) {
            B5 b52 = this.f17932b;
            Object obj = b52.f17985a;
            if (obj == null) {
                b52.f17986b.add(this.f17931a);
            } else {
                this.f17931a.consume(obj);
            }
        }
    }
}
