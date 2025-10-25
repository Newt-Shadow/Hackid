package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Ph {

    /* renamed from: a  reason: collision with root package name */
    public final long f11110a;

    /* renamed from: b  reason: collision with root package name */
    public final long f11111b;

    /* renamed from: c  reason: collision with root package name */
    public final long f11112c;

    /* renamed from: d  reason: collision with root package name */
    public final long f11113d;

    public Ph(long j10, long j11, long j12, long j13) {
        this.f11110a = j10;
        this.f11111b = j11;
        this.f11112c = j12;
        this.f11113d = j13;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Ph.class != obj.getClass()) {
            return false;
        }
        Ph ph = (Ph) obj;
        if (this.f11110a == ph.f11110a && this.f11111b == ph.f11111b && this.f11112c == ph.f11112c && this.f11113d == ph.f11113d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f11110a;
        long j11 = this.f11111b;
        long j12 = this.f11112c;
        long j13 = this.f11113d;
        return (((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + ((int) ((j13 >>> 32) ^ j13));
    }

    public String toString() {
        return "CacheControl{cellsAroundTtl=" + this.f11110a + ", wifiNetworksTtl=" + this.f11111b + ", lastKnownLocationTtl=" + this.f11112c + ", netInterfacesTtl=" + this.f11113d + '}';
    }
}
