package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class W0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19138a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f19139b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1282k1 f19140c;

    public W0(C1282k1 c1282k1, String str, String str2) {
        this.f19140c = c1282k1;
        this.f19138a = str;
        this.f19139b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1406p0 c1406p0 = this.f19140c.f19881a;
        String str = this.f19138a;
        String str2 = this.f19139b;
        c1406p0.getClass();
        C1381o0.c().putAppEnvironmentValue(str, str2);
    }
}
