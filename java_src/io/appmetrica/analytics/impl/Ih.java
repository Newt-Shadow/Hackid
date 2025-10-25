package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Ih implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18393a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Throwable f18394b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18395c;

    public Ih(C1225hi c1225hi, String str, Throwable th) {
        this.f18395c = c1225hi;
        this.f18393a = str;
        this.f18394b = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18395c;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportError(this.f18393a, this.f18394b);
    }
}
