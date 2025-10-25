package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ci  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0463ci {

    /* renamed from: a  reason: collision with root package name */
    public final long f12189a;

    /* renamed from: b  reason: collision with root package name */
    public final long f12190b;

    /* renamed from: c  reason: collision with root package name */
    public final long f12191c;

    /* renamed from: d  reason: collision with root package name */
    public final long f12192d;

    public C0463ci(long j10, long j11, long j12, long j13) {
        this.f12189a = j10;
        this.f12190b = j11;
        this.f12191c = j12;
        this.f12192d = j13;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0463ci.class != obj.getClass()) {
            return false;
        }
        C0463ci c0463ci = (C0463ci) obj;
        if (this.f12189a == c0463ci.f12189a && this.f12190b == c0463ci.f12190b && this.f12191c == c0463ci.f12191c && this.f12192d == c0463ci.f12192d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f12189a;
        long j11 = this.f12190b;
        long j12 = this.f12191c;
        long j13 = this.f12192d;
        return (((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + ((int) ((j13 >>> 32) ^ j13));
    }

    public String toString() {
        return "SdkFingerprintingConfig{minCollectingInterval=" + this.f12189a + ", minFirstCollectingDelay=" + this.f12190b + ", minCollectingDelayAfterLaunch=" + this.f12191c + ", minRequestRetryInterval=" + this.f12192d + '}';
    }
}
