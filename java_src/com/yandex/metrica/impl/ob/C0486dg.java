package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
/* renamed from: com.yandex.metrica.impl.ob.dg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0486dg {

    /* renamed from: a  reason: collision with root package name */
    public final String f12217a;

    /* renamed from: b  reason: collision with root package name */
    public final long f12218b;

    /* renamed from: c  reason: collision with root package name */
    public final long f12219c;

    /* renamed from: d  reason: collision with root package name */
    public final a f12220d;

    /* renamed from: com.yandex.metrica.impl.ob.dg$a */
    /* loaded from: classes2.dex */
    public enum a {
        UNKNOWN(CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE),
        GP("gpl"),
        HMS("hms-content-provider");
        

        /* renamed from: a  reason: collision with root package name */
        public final String f12225a;

        a(String str) {
            this.f12225a = str;
        }
    }

    private C0486dg(byte[] bArr) {
        C0879tf a10 = C0879tf.a(bArr);
        this.f12217a = a10.f13640a;
        this.f12218b = a10.f13642c;
        this.f12219c = a10.f13641b;
        this.f12220d = a(a10.f13643d);
    }

    public static C0486dg a(byte[] bArr) {
        if (A2.a(bArr)) {
            return null;
        }
        return new C0486dg(bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0486dg.class != obj.getClass()) {
            return false;
        }
        C0486dg c0486dg = (C0486dg) obj;
        if (this.f12218b == c0486dg.f12218b && this.f12219c == c0486dg.f12219c && this.f12217a.equals(c0486dg.f12217a) && this.f12220d == c0486dg.f12220d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f12218b;
        long j11 = this.f12219c;
        return (((((this.f12217a.hashCode() * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f12220d.hashCode();
    }

    public String toString() {
        return "ReferrerInfo{installReferrer='" + this.f12217a + "', referrerClickTimestampSeconds=" + this.f12218b + ", installBeginTimestampSeconds=" + this.f12219c + ", source=" + this.f12220d + '}';
    }

    public byte[] a() {
        C0879tf c0879tf = new C0879tf();
        c0879tf.f13640a = this.f12217a;
        c0879tf.f13642c = this.f12218b;
        c0879tf.f13641b = this.f12219c;
        int ordinal = this.f12220d.ordinal();
        int i10 = 1;
        if (ordinal != 1) {
            i10 = 2;
            if (ordinal != 2) {
                i10 = 0;
            }
        }
        c0879tf.f13643d = i10;
        return MessageNano.toByteArray(c0879tf);
    }

    public C0486dg(String str, long j10, long j11, a aVar) {
        this.f12217a = str;
        this.f12218b = j10;
        this.f12219c = j11;
        this.f12220d = aVar;
    }

    private a a(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return a.UNKNOWN;
            }
            return a.HMS;
        }
        return a.GP;
    }
}
