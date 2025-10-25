package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.di  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1125di implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f19521a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f19522b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C1225hi f19523c;

    public RunnableC1125di(C1225hi c1225hi, String str, String str2) {
        this.f19523c = c1225hi;
        this.f19521a = str;
        this.f19522b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f19523c;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).putAppEnvironmentValue(this.f19521a, this.f19522b);
    }
}
