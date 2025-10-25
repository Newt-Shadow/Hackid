package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Xb {

    /* renamed from: a  reason: collision with root package name */
    public final Qc f11778a;

    /* renamed from: b  reason: collision with root package name */
    public final Wb f11779b;

    public Xb(Qc qc2, Wb wb2) {
        this.f11778a = qc2;
        this.f11779b = wb2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Xb.class != obj.getClass()) {
            return false;
        }
        Xb xb2 = (Xb) obj;
        if (!this.f11778a.equals(xb2.f11778a)) {
            return false;
        }
        Wb wb2 = this.f11779b;
        Wb wb3 = xb2.f11779b;
        if (wb2 != null) {
            return wb2.equals(wb3);
        }
        if (wb3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f11778a.hashCode() * 31;
        Wb wb2 = this.f11779b;
        if (wb2 != null) {
            i10 = wb2.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    public String toString() {
        return "ForcedCollectingConfig{providerAccessFlags=" + this.f11778a + ", arguments=" + this.f11779b + '}';
    }
}
