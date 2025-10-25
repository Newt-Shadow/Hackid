package io.appmetrica.analytics.locationapi.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class LocationFilter {

    /* renamed from: a  reason: collision with root package name */
    private final long f21158a;

    /* renamed from: b  reason: collision with root package name */
    private final float f21159b;

    public LocationFilter() {
        this(0L, 0.0f, 3, null);
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
        if (!m.a(LocationFilter.class, cls)) {
            return false;
        }
        if (obj != null) {
            LocationFilter locationFilter = (LocationFilter) obj;
            if (this.f21158a == locationFilter.f21158a && this.f21159b == locationFilter.f21159b) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.locationapi.internal.LocationFilter");
    }

    public final float getUpdateDistanceInterval() {
        return this.f21159b;
    }

    public final long getUpdateTimeInterval() {
        return this.f21158a;
    }

    public int hashCode() {
        return Float.hashCode(this.f21159b) + (Long.hashCode(this.f21158a) * 31);
    }

    public String toString() {
        return "LocationFilter(updateTimeInterval=" + this.f21158a + ", updateDistanceInterval=" + this.f21159b + ')';
    }

    public LocationFilter(long j10, float f10) {
        this.f21158a = j10;
        this.f21159b = f10;
    }

    public /* synthetic */ LocationFilter(long j10, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 5000L : j10, (i10 & 2) != 0 ? 10.0f : f10);
    }
}
