package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.i1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1233i1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19766a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f19767b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Throwable f19768c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19769d;

    public RunnableC1233i1(C1282k1 c1282k1, String str, String str2, Throwable th) {
        this.f19769d = c1282k1;
        this.f19766a = str;
        this.f19767b = str2;
        this.f19768c = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19769d).reportError(this.f19766a, this.f19767b, this.f19768c);
    }
}
