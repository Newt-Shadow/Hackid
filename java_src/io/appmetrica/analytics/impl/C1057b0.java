package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.b0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1057b0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f19415a;

    /* renamed from: b  reason: collision with root package name */
    public final long f19416b;

    public C1057b0(String str, long j10) {
        this.f19415a = str;
        this.f19416b = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1057b0.class != obj.getClass()) {
            return false;
        }
        C1057b0 c1057b0 = (C1057b0) obj;
        if (this.f19416b != c1057b0.f19416b) {
            return false;
        }
        String str = this.f19415a;
        String str2 = c1057b0.f19415a;
        if (str != null) {
            if (str.equals(str2)) {
                return true;
            }
        } else if (str2 == null) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        String str = this.f19415a;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        long j10 = this.f19416b;
        return (i10 * 31) + ((int) (j10 ^ (j10 >>> 32)));
    }
}
