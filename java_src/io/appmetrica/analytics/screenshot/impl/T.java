package io.appmetrica.analytics.screenshot.impl;
/* loaded from: classes2.dex */
public final class T {

    /* renamed from: a  reason: collision with root package name */
    public final C1683e f21393a;

    /* renamed from: b  reason: collision with root package name */
    public final X f21394b;

    /* renamed from: c  reason: collision with root package name */
    public final C1693o f21395c;

    public T(C1683e c1683e, X x10, C1693o c1693o) {
        this.f21393a = c1683e;
        this.f21394b = x10;
        this.f21395c = c1693o;
    }

    public final C1683e a() {
        return this.f21393a;
    }

    public final C1693o b() {
        return this.f21395c;
    }

    public final X c() {
        return this.f21394b;
    }

    public final String toString() {
        return "ScreenshotConfig(apiCaptorConfig=" + this.f21393a + ", serviceCaptorConfig=" + this.f21394b + ", contentObserverCaptorConfig=" + this.f21395c + ')';
    }

    public T() {
        this(new C1683e(), new X(), new C1693o());
    }
}
