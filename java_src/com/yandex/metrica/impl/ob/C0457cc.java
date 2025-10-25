package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.cc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0457cc {

    /* renamed from: a  reason: collision with root package name */
    public final Qc f12155a;

    /* renamed from: b  reason: collision with root package name */
    public final C0407ac f12156b;

    public C0457cc(Qc qc2, C0407ac c0407ac) {
        this.f12155a = qc2;
        this.f12156b = c0407ac;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0457cc.class != obj.getClass()) {
            return false;
        }
        C0457cc c0457cc = (C0457cc) obj;
        if (!this.f12155a.equals(c0457cc.f12155a)) {
            return false;
        }
        C0407ac c0407ac = this.f12156b;
        C0407ac c0407ac2 = c0457cc.f12156b;
        if (c0407ac != null) {
            return c0407ac.equals(c0407ac2);
        }
        if (c0407ac2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f12155a.hashCode() * 31;
        C0407ac c0407ac = this.f12156b;
        if (c0407ac != null) {
            i10 = c0407ac.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    public String toString() {
        return "GplCollectingConfig{providerAccessFlags=" + this.f12155a + ", arguments=" + this.f12156b + '}';
    }
}
