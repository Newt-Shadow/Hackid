package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.ti  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0882ti {

    /* renamed from: a  reason: collision with root package name */
    public final long f13651a;

    public C0882ti(long j10) {
        this.f13651a = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0882ti.class == obj.getClass() && this.f13651a == ((C0882ti) obj).f13651a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f13651a;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public String toString() {
        return "StatSending{disabledReportingInterval=" + this.f13651a + '}';
    }
}
