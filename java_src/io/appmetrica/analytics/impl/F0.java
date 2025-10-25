package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class F0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18194a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f18195b;

    public F0(C1282k1 c1282k1, String str) {
        this.f18195b = c1282k1;
        this.f18194a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1282k1.a(this.f18195b).b(this.f18194a);
    }
}
