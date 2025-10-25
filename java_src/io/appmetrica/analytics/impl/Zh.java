package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Zh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1603wn f19349a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19350b;

    public Zh(C1225hi c1225hi, C1603wn c1603wn) {
        this.f19350b = c1225hi;
        this.f19349a = c1603wn;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19350b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).a(this.f19349a);
    }
}
