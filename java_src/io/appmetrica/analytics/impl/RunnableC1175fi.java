package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.fi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1175fi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19648a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19649b;

    public RunnableC1175fi(C1225hi c1225hi, String str) {
        this.f19649b = c1225hi;
        this.f19648a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19649b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportEvent(this.f19648a);
    }
}
