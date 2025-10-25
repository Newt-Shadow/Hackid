package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.sm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1502sm {

    /* renamed from: a  reason: collision with root package name */
    public final long f20610a;

    public C1502sm(long j10) {
        this.f20610a = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1502sm.class == obj.getClass() && this.f20610a == ((C1502sm) obj).f20610a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f20610a;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public final String toString() {
        return "StatSending{disabledReportingInterval=" + this.f20610a + '}';
    }
}
