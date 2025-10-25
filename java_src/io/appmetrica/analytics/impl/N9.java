package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class N9 {

    /* renamed from: a  reason: collision with root package name */
    public final long f18638a;

    public N9(long j10) {
        this.f18638a = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof N9) && this.f18638a == ((N9) obj).f18638a;
    }

    public final int hashCode() {
        return Long.hashCode(this.f18638a);
    }

    public final String toString() {
        return "ExternalAttributionConfig(collectingInterval=" + this.f18638a + ')';
    }
}
