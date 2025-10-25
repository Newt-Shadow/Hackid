package com.yandex.metrica.impl.ob;

import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.di  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0488di {

    /* renamed from: a  reason: collision with root package name */
    public final long f12245a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12246b;

    /* renamed from: c  reason: collision with root package name */
    public final List<Integer> f12247c;

    /* renamed from: d  reason: collision with root package name */
    public final List<Integer> f12248d;

    /* renamed from: e  reason: collision with root package name */
    public final long f12249e;

    /* renamed from: f  reason: collision with root package name */
    public final int f12250f;

    /* renamed from: g  reason: collision with root package name */
    public final long f12251g;

    /* renamed from: h  reason: collision with root package name */
    public final long f12252h;

    /* renamed from: i  reason: collision with root package name */
    public final long f12253i;

    /* renamed from: j  reason: collision with root package name */
    public final long f12254j;

    public C0488di(long j10, String str, List<Integer> list, List<Integer> list2, long j11, int i10, long j12, long j13, long j14, long j15) {
        this.f12245a = j10;
        this.f12246b = str;
        this.f12247c = A2.c(list);
        this.f12248d = A2.c(list2);
        this.f12249e = j11;
        this.f12250f = i10;
        this.f12251g = j12;
        this.f12252h = j13;
        this.f12253i = j14;
        this.f12254j = j15;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0488di.class != obj.getClass()) {
            return false;
        }
        C0488di c0488di = (C0488di) obj;
        if (this.f12245a != c0488di.f12245a || this.f12249e != c0488di.f12249e || this.f12250f != c0488di.f12250f || this.f12251g != c0488di.f12251g || this.f12252h != c0488di.f12252h || this.f12253i != c0488di.f12253i || this.f12254j != c0488di.f12254j || !this.f12246b.equals(c0488di.f12246b) || !this.f12247c.equals(c0488di.f12247c)) {
            return false;
        }
        return this.f12248d.equals(c0488di.f12248d);
    }

    public int hashCode() {
        long j10 = this.f12245a;
        long j11 = this.f12249e;
        long j12 = this.f12251g;
        long j13 = this.f12252h;
        long j14 = this.f12253i;
        long j15 = this.f12254j;
        return (((((((((((((((((((int) (j10 ^ (j10 >>> 32))) * 31) + this.f12246b.hashCode()) * 31) + this.f12247c.hashCode()) * 31) + this.f12248d.hashCode()) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f12250f) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + ((int) (j13 ^ (j13 >>> 32)))) * 31) + ((int) (j14 ^ (j14 >>> 32)))) * 31) + ((int) ((j15 >>> 32) ^ j15));
    }

    public String toString() {
        return "SocketConfig{secondsToLive=" + this.f12245a + ", token='" + this.f12246b + "', ports=" + this.f12247c + ", portsHttp=" + this.f12248d + ", firstDelaySeconds=" + this.f12249e + ", launchDelaySeconds=" + this.f12250f + ", openEventIntervalSeconds=" + this.f12251g + ", minFailedRequestIntervalSeconds=" + this.f12252h + ", minSuccessfulRequestIntervalSeconds=" + this.f12253i + ", openRetryIntervalSeconds=" + this.f12254j + '}';
    }
}
