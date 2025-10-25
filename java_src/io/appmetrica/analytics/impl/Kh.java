package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Kh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Throwable f18490a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18491b;

    public Kh(C1225hi c1225hi, Throwable th) {
        this.f18491b = c1225hi;
        this.f18490a = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18491b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportUnhandledException(this.f18490a);
    }
}
