package io.appmetrica.analytics.screenshot.impl;
/* loaded from: classes2.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21435a;

    /* renamed from: b  reason: collision with root package name */
    public final long f21436b;

    public i0(boolean z10, long j10) {
        this.f21435a = z10;
        this.f21436b = j10;
    }

    public final long a() {
        return this.f21436b;
    }

    public final boolean b() {
        return this.f21435a;
    }

    public final String toString() {
        return "ServiceSideServiceCaptorConfig(enabled=" + this.f21435a + ", delaySeconds=" + this.f21436b + ')';
    }

    public i0(X x10) {
        this(x10.b(), x10.a());
    }
}
