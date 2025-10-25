package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* renamed from: io.appmetrica.analytics.impl.lg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1322lg {

    /* renamed from: a  reason: collision with root package name */
    public final String f20033a;

    /* renamed from: b  reason: collision with root package name */
    public final long f20034b;

    /* renamed from: c  reason: collision with root package name */
    public final long f20035c;

    /* renamed from: d  reason: collision with root package name */
    public final EnumC1297kg f20036d;

    public C1322lg(byte[] bArr) {
        C1347mg a10 = C1347mg.a(bArr);
        this.f20033a = a10.f20126a;
        this.f20034b = a10.f20128c;
        this.f20035c = a10.f20127b;
        this.f20036d = a(a10.f20129d);
    }

    public final byte[] a() {
        C1347mg c1347mg = new C1347mg();
        c1347mg.f20126a = this.f20033a;
        c1347mg.f20128c = this.f20034b;
        c1347mg.f20127b = this.f20035c;
        int ordinal = this.f20036d.ordinal();
        int i10 = 1;
        if (ordinal != 1) {
            i10 = 2;
            if (ordinal != 2) {
                i10 = 0;
            }
        }
        c1347mg.f20129d = i10;
        return MessageNano.toByteArray(c1347mg);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1322lg.class != obj.getClass()) {
            return false;
        }
        C1322lg c1322lg = (C1322lg) obj;
        if (this.f20034b == c1322lg.f20034b && this.f20035c == c1322lg.f20035c && this.f20033a.equals(c1322lg.f20033a) && this.f20036d == c1322lg.f20036d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f20034b;
        long j11 = this.f20035c;
        return this.f20036d.hashCode() + (((((this.f20033a.hashCode() * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31);
    }

    public final String toString() {
        return "ReferrerInfo{installReferrer='" + this.f20033a + "', referrerClickTimestampSeconds=" + this.f20034b + ", installBeginTimestampSeconds=" + this.f20035c + ", source=" + this.f20036d + '}';
    }

    public C1322lg(String str, long j10, long j11, EnumC1297kg enumC1297kg) {
        this.f20033a = str;
        this.f20034b = j10;
        this.f20035c = j11;
        this.f20036d = enumC1297kg;
    }

    public static EnumC1297kg a(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return EnumC1297kg.f19972b;
            }
            return EnumC1297kg.f19974d;
        }
        return EnumC1297kg.f19973c;
    }
}
