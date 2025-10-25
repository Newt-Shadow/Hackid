package io.appmetrica.analytics.screenshot.impl;
/* loaded from: classes2.dex */
public final class X {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21406a;

    /* renamed from: b  reason: collision with root package name */
    public final long f21407b;

    public X(boolean z10, long j10) {
        this.f21406a = z10;
        this.f21407b = j10;
    }

    public final long a() {
        return this.f21407b;
    }

    public final boolean b() {
        return this.f21406a;
    }

    public final String toString() {
        return "ServiceCaptorConfig(enabled=" + this.f21406a + ", delaySeconds=" + this.f21407b + ')';
    }

    public X() {
        this(new M().f21383a, new M().f21384b);
    }
}
