package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Qc {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11152a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f11153b;

    public Qc(boolean z10, boolean z11) {
        this.f11152a = z10;
        this.f11153b = z11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Qc.class != obj.getClass()) {
            return false;
        }
        Qc qc2 = (Qc) obj;
        if (this.f11152a == qc2.f11152a && this.f11153b == qc2.f11153b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f11152a ? 1 : 0) * 31) + (this.f11153b ? 1 : 0);
    }

    public String toString() {
        return "ProviderAccessFlags{lastKnownEnabled=" + this.f11152a + ", scanningEnabled=" + this.f11153b + '}';
    }
}
