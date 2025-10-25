package io.appmetrica.analytics.screenshot.impl;

import java.util.List;
/* renamed from: io.appmetrica.analytics.screenshot.impl.j  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1688j {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21437a;

    /* renamed from: b  reason: collision with root package name */
    public final List f21438b;

    /* renamed from: c  reason: collision with root package name */
    public final long f21439c;

    public C1688j(boolean z10, List list, long j10) {
        this.f21437a = z10;
        this.f21438b = list;
        this.f21439c = j10;
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
        if (!kotlin.jvm.internal.m.a(C1688j.class, cls)) {
            return false;
        }
        if (obj != null) {
            C1688j c1688j = (C1688j) obj;
            if (this.f21437a == c1688j.f21437a && kotlin.jvm.internal.m.a(this.f21438b, c1688j.f21438b) && this.f21439c == c1688j.f21439c) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.screenshot.impl.config.client.model.ClientSideContentObserverCaptorConfig");
    }

    public final int hashCode() {
        int hashCode = this.f21438b.hashCode();
        return Long.hashCode(this.f21439c) + ((hashCode + (Boolean.hashCode(this.f21437a) * 31)) * 31);
    }

    public final String toString() {
        return "ClientSideContentObserverCaptorConfig(enabled=" + this.f21437a + ", mediaStoreColumnNames=" + this.f21438b + ", detectWindowSeconds=" + this.f21439c + ')';
    }

    public C1688j(C1703z c1703z) {
        this(c1703z.b(), c1703z.c(), c1703z.a());
    }
}
