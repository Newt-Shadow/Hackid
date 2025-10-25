package io.appmetrica.analytics.screenshot.impl;
/* renamed from: io.appmetrica.analytics.screenshot.impl.k  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1689k {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21440a;

    /* renamed from: b  reason: collision with root package name */
    public final C1690l f21441b;

    public C1689k(boolean z10, C1690l c1690l) {
        this.f21440a = z10;
        this.f21441b = c1690l;
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
        if (!kotlin.jvm.internal.m.a(C1689k.class, cls)) {
            return false;
        }
        if (obj != null) {
            C1689k c1689k = (C1689k) obj;
            if (this.f21440a == c1689k.f21440a && kotlin.jvm.internal.m.a(this.f21441b, c1689k.f21441b)) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.screenshot.impl.config.client.model.ClientSideRemoteScreenshotConfig");
    }

    public final int hashCode() {
        int i10;
        int hashCode = Boolean.hashCode(this.f21440a) * 31;
        C1690l c1690l = this.f21441b;
        if (c1690l != null) {
            i10 = c1690l.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    public final String toString() {
        return "ClientSideRemoteScreenshotConfig(enabled=" + this.f21440a + ", config=" + this.f21441b + ')';
    }
}
