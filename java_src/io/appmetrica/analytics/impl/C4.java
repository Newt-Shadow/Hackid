package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class C4 {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f18034a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f18035b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f18036c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f18037d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f18038e;

    /* renamed from: f  reason: collision with root package name */
    public final Boolean f18039f;

    public C4(A4 a42) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        Boolean bool;
        z10 = a42.f17925a;
        this.f18034a = z10;
        z11 = a42.f17926b;
        this.f18035b = z11;
        z12 = a42.f17927c;
        this.f18036c = z12;
        z13 = a42.f17928d;
        this.f18037d = z13;
        z14 = a42.f17929e;
        this.f18038e = z14;
        bool = a42.f17930f;
        this.f18039f = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4.class != obj.getClass()) {
            return false;
        }
        C4 c42 = (C4) obj;
        if (this.f18034a != c42.f18034a || this.f18035b != c42.f18035b || this.f18036c != c42.f18036c || this.f18037d != c42.f18037d || this.f18038e != c42.f18038e) {
            return false;
        }
        Boolean bool = this.f18039f;
        Boolean bool2 = c42.f18039f;
        if (bool != null) {
            return bool.equals(bool2);
        }
        if (bool2 == null) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int i11 = (((((((((this.f18034a ? 1 : 0) * 31) + (this.f18035b ? 1 : 0)) * 31) + (this.f18036c ? 1 : 0)) * 31) + (this.f18037d ? 1 : 0)) * 31) + (this.f18038e ? 1 : 0)) * 31;
        Boolean bool = this.f18039f;
        if (bool != null) {
            i10 = bool.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }

    public final String toString() {
        return "CollectingFlags{permissionsCollectingEnabled=" + this.f18034a + ", featuresCollectingEnabled=" + this.f18035b + ", googleAid=" + this.f18036c + ", simInfo=" + this.f18037d + ", huaweiOaid=" + this.f18038e + ", sslPinning=" + this.f18039f + '}';
    }
}
