package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.i  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0594i {

    /* renamed from: a  reason: collision with root package name */
    public final int f12575a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12576b;

    public C0594i(int i10, int i11) {
        this.f12575a = i10;
        this.f12576b = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0594i.class != obj.getClass()) {
            return false;
        }
        C0594i c0594i = (C0594i) obj;
        if (this.f12575a == c0594i.f12575a && this.f12576b == c0594i.f12576b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f12575a * 31) + this.f12576b;
    }

    public String toString() {
        return "BillingConfig{sendFrequencySeconds=" + this.f12575a + ", firstCollectingInappMaxAgeSeconds=" + this.f12576b + "}";
    }
}
