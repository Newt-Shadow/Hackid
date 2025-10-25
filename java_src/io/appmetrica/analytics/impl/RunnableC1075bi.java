package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.bi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1075bi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ P f19433a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19434b;

    public RunnableC1075bi(C1225hi c1225hi, P p10) {
        this.f19434b = c1225hi;
        this.f19433a = p10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19434b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).a(this.f19433a);
    }
}
