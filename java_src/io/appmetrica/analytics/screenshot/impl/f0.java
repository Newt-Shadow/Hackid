package io.appmetrica.analytics.screenshot.impl;

import java.util.List;
/* loaded from: classes2.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f21426a;

    /* renamed from: b  reason: collision with root package name */
    public final List f21427b;

    /* renamed from: c  reason: collision with root package name */
    public final long f21428c;

    public f0(boolean z10, List list, long j10) {
        this.f21426a = z10;
        this.f21427b = list;
        this.f21428c = j10;
    }

    public final long a() {
        return this.f21428c;
    }

    public final boolean b() {
        return this.f21426a;
    }

    public final List c() {
        return this.f21427b;
    }

    public final String toString() {
        return "ServiceSideContentObserverCaptorConfig(enabled=" + this.f21426a + ", mediaStoreColumnNames=" + this.f21427b + ", detectWindowSeconds=" + this.f21428c + ')';
    }

    public f0(C1693o c1693o) {
        this(c1693o.b(), c1693o.c(), c1693o.a());
    }
}
