package io.appmetrica.analytics.locationapi.internal;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class CacheArguments {

    /* renamed from: a  reason: collision with root package name */
    private final long f21156a;

    /* renamed from: b  reason: collision with root package name */
    private final long f21157b;

    public CacheArguments() {
        this(0L, 0L, 3, null);
    }

    public boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!m.a(CacheArguments.class, cls)) {
            return false;
        }
        if (obj != null) {
            CacheArguments cacheArguments = (CacheArguments) obj;
            if (this.f21156a == cacheArguments.f21156a && this.f21157b == cacheArguments.f21157b) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.locationapi.internal.CacheArguments");
    }

    public final long getOutdatedTimeInterval() {
        return this.f21157b;
    }

    public final long getRefreshPeriod() {
        return this.f21156a;
    }

    public int hashCode() {
        return Long.hashCode(this.f21157b) + (Long.hashCode(this.f21156a) * 31);
    }

    public String toString() {
        return "CacheArguments(refreshPeriod=" + this.f21156a + ", outdatedTimeInterval=" + this.f21157b + ')';
    }

    public CacheArguments(long j10, long j11) {
        this.f21156a = j10;
        this.f21157b = j11;
    }

    public /* synthetic */ CacheArguments(long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? TimeUnit.SECONDS.toMillis(10L) : j10, (i10 & 2) != 0 ? TimeUnit.MINUTES.toMillis(2L) : j11);
    }
}
