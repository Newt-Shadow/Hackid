package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.w0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0936w0 {

    /* renamed from: a  reason: collision with root package name */
    private final long f13850a;

    public C0936w0(long j10) {
        this.f13850a = j10;
    }

    public final long a() {
        return this.f13850a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C0936w0) && this.f13850a == ((C0936w0) obj).f13850a;
        }
        return true;
    }

    public int hashCode() {
        long j10 = this.f13850a;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public String toString() {
        return "EasyCollectingConfig(firstLaunchDelaySeconds=" + this.f13850a + ")";
    }
}
