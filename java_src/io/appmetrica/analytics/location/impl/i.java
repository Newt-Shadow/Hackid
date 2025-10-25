package io.appmetrica.analytics.location.impl;

import io.appmetrica.analytics.locationapi.internal.CacheArguments;
import io.appmetrica.analytics.locationapi.internal.LocationFilter;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final LocationFilter f21108a;

    /* renamed from: b  reason: collision with root package name */
    public final CacheArguments f21109b;

    public i(LocationFilter locationFilter, CacheArguments cacheArguments) {
        this.f21108a = locationFilter;
        this.f21109b = cacheArguments;
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
        if (!kotlin.jvm.internal.m.a(i.class, cls)) {
            return false;
        }
        if (obj != null) {
            i iVar = (i) obj;
            if (kotlin.jvm.internal.m.a(this.f21108a, iVar.f21108a) && kotlin.jvm.internal.m.a(this.f21109b, iVar.f21109b)) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.location.impl.LocationConfig");
    }

    public final int hashCode() {
        return this.f21109b.hashCode() + (this.f21108a.hashCode() * 31);
    }

    public final String toString() {
        return "LocationConfig(locationFilter=" + this.f21108a + ", cacheArguments=" + this.f21109b + ')';
    }

    public /* synthetic */ i() {
        this(new LocationFilter(0L, 0.0f, 3, null), new CacheArguments(0L, 0L, 3, null));
    }
}
