package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class I7 {

    /* renamed from: a  reason: collision with root package name */
    public final long f18376a;

    /* renamed from: b  reason: collision with root package name */
    public final int f18377b;

    public I7(int i10, long j10) {
        this.f18376a = j10;
        this.f18377b = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof I7) {
            I7 i72 = (I7) obj;
            return this.f18376a == i72.f18376a && this.f18377b == i72.f18377b;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f18377b) + (Long.hashCode(this.f18376a) * 31);
    }

    public final String toString() {
        return "DecimalProtoModel(mantissa=" + this.f18376a + ", exponent=" + this.f18377b + ')';
    }
}
