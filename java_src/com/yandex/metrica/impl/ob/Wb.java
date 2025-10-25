package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Wb {

    /* renamed from: a  reason: collision with root package name */
    public final long f11692a;

    /* renamed from: b  reason: collision with root package name */
    public final long f11693b;

    public Wb(long j10, long j11) {
        this.f11692a = j10;
        this.f11693b = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Wb.class != obj.getClass()) {
            return false;
        }
        Wb wb2 = (Wb) obj;
        if (this.f11692a == wb2.f11692a && this.f11693b == wb2.f11693b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f11692a;
        long j11 = this.f11693b;
        return (((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) ((j11 >>> 32) ^ j11));
    }

    public String toString() {
        return "ForcedCollectingArguments{durationSeconds=" + this.f11692a + ", intervalSeconds=" + this.f11693b + '}';
    }
}
