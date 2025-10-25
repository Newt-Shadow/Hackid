package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Jh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18439a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f18440b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Throwable f18441c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18442d;

    public Jh(C1225hi c1225hi, String str, String str2, Throwable th) {
        this.f18442d = c1225hi;
        this.f18439a = str;
        this.f18440b = str2;
        this.f18441c = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18442d;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportError(this.f18439a, this.f18440b, this.f18441c);
    }
}
