package io.appmetrica.analytics.screenshot.impl;
/* renamed from: io.appmetrica.analytics.screenshot.impl.m  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1691m {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21445a;

    /* renamed from: b  reason: collision with root package name */
    public final long f21446b;

    public C1691m(boolean z10, long j10) {
        this.f21445a = z10;
        this.f21446b = j10;
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!kotlin.jvm.internal.m.a(C1691m.class, cls)) {
            return false;
        }
        if (obj != null) {
            C1691m c1691m = (C1691m) obj;
            if (this.f21445a == c1691m.f21445a && this.f21446b == c1691m.f21446b) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.screenshot.impl.config.client.model.ClientSideServiceCaptorConfig");
    }

    public final int hashCode() {
        return Long.hashCode(this.f21446b) + (Boolean.hashCode(this.f21445a) * 31);
    }

    public final String toString() {
        return "ClientSideServiceCaptorConfig(enabled=" + this.f21445a + ", delaySeconds=" + this.f21446b + ')';
    }

    public C1691m(F f10) {
        this(f10.b(), f10.a());
    }
}
