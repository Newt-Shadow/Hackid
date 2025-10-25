package io.appmetrica.analytics.screenshot.impl;
/* loaded from: classes2.dex */
public final class G {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21370a;

    /* renamed from: b  reason: collision with root package name */
    public final T f21371b;

    public G(boolean z10, T t10) {
        this.f21370a = z10;
        this.f21371b = t10;
    }

    public final T a() {
        return this.f21371b;
    }

    public final boolean b() {
        return this.f21370a;
    }

    public final String toString() {
        return "RemoteScreenshotConfig(enabled=" + this.f21370a + ", config=" + this.f21371b + ')';
    }

    public G() {
        this(new O().f21390a, new T());
    }
}
