package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Nh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f18644a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1225hi f18645b;

    public Nh(C1225hi c1225hi, String str) {
        this.f18645b = c1225hi;
        this.f18644a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1225hi c1225hi = this.f18645b;
        C1225hi.a(c1225hi.f19748a, c1225hi.f19751d, c1225hi.f19752e).setUserProfileID(this.f18644a);
    }
}
