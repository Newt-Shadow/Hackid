package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class R1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Zd f18860a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ K7 f18861b;

    public R1(T1 t12, K7 k72) {
        this.f18860a = t12;
        this.f18861b = k72;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18860a.consume(this.f18861b);
    }
}
