package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.z  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1007z {

    /* renamed from: a  reason: collision with root package name */
    public final a f14034a;

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f14035b;

    /* renamed from: com.yandex.metrica.impl.ob.z$a */
    /* loaded from: classes2.dex */
    public enum a {
        ACTIVE,
        WORKING_SET,
        FREQUENT,
        RARE,
        RESTRICTED
    }

    public C1007z(a aVar, Boolean bool) {
        this.f14034a = aVar;
        this.f14035b = bool;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1007z.class != obj.getClass()) {
            return false;
        }
        C1007z c1007z = (C1007z) obj;
        if (this.f14034a != c1007z.f14034a) {
            return false;
        }
        Boolean bool = this.f14035b;
        if (bool != null) {
            return bool.equals(c1007z.f14035b);
        }
        if (c1007z.f14035b == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        a aVar = this.f14034a;
        int i11 = 0;
        if (aVar != null) {
            i10 = aVar.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        Boolean bool = this.f14035b;
        if (bool != null) {
            i11 = bool.hashCode();
        }
        return i12 + i11;
    }
}
