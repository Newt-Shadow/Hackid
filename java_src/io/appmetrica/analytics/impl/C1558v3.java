package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.v3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1558v3 {

    /* renamed from: a  reason: collision with root package name */
    public final long f20773a;

    public C1558v3(long j10) {
        this.f20773a = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1558v3.class == obj.getClass() && this.f20773a == ((C1558v3) obj).f20773a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f20773a;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public final String toString() {
        return "CacheControl{lastKnownLocationTtl=" + this.f20773a + '}';
    }
}
