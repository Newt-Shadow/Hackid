package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class D0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18068a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18069b;

    public D0(C1282k1 c1282k1, String str) {
        this.f18069b = c1282k1;
        this.f18068a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18069b.d().f20804b.a(this.f18068a, false);
    }
}
