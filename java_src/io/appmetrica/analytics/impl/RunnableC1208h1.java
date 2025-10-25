package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.h1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1208h1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19708a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Throwable f19709b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19710c;

    public RunnableC1208h1(C1282k1 c1282k1, String str, Throwable th) {
        this.f19710c = c1282k1;
        this.f19708a = str;
        this.f19709b = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f19710c).reportError(this.f19708a, this.f19709b);
    }
}
