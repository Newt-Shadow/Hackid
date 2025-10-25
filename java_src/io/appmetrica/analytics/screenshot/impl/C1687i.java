package io.appmetrica.analytics.screenshot.impl;
/* renamed from: io.appmetrica.analytics.screenshot.impl.i  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1687i {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21434a;

    public C1687i(boolean z10) {
        this.f21434a = z10;
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
        if (!kotlin.jvm.internal.m.a(C1687i.class, cls)) {
            return false;
        }
        if (obj != null) {
            if (this.f21434a == ((C1687i) obj).f21434a) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.screenshot.impl.config.client.model.ClientSideApiCaptorConfig");
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f21434a);
    }

    public final String toString() {
        return "ClientSideApiCaptorConfig(enabled=" + this.f21434a + ')';
    }

    public C1687i(C1701x c1701x) {
        this(c1701x.a());
    }
}
