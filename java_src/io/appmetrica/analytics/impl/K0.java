package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class K0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18469a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18470b;

    public K0(C1282k1 c1282k1, String str) {
        this.f18470b = c1282k1;
        this.f18469a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1406p0 c1406p0 = this.f18470b.f19881a;
        String str = this.f18469a;
        c1406p0.getClass();
        C1381o0.c().setUserProfileID(str);
    }
}
