package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.gi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1200gi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19687a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f19688b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19689c;

    public RunnableC1200gi(C1225hi c1225hi, String str, String str2) {
        this.f19689c = c1225hi;
        this.f19687a = str;
        this.f19688b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19689c;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).reportEvent(this.f19687a, this.f19688b);
    }
}
