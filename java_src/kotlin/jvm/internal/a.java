package kotlin.jvm.internal;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class a implements i, Serializable {

    /* renamed from: a  reason: collision with root package name */
    protected final Object f24960a;

    /* renamed from: b  reason: collision with root package name */
    private final Class f24961b;

    /* renamed from: c  reason: collision with root package name */
    private final String f24962c;

    /* renamed from: d  reason: collision with root package name */
    private final String f24963d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f24964e;

    /* renamed from: f  reason: collision with root package name */
    private final int f24965f;

    /* renamed from: g  reason: collision with root package name */
    private final int f24966g;

    public a(int i10, Object obj, Class cls, String str, String str2, int i11) {
        boolean z10;
        this.f24960a = obj;
        this.f24961b = cls;
        this.f24962c = str;
        this.f24963d = str2;
        if ((i11 & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f24964e = z10;
        this.f24965f = i10;
        this.f24966g = i11 >> 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f24964e == aVar.f24964e && this.f24965f == aVar.f24965f && this.f24966g == aVar.f24966g && m.a(this.f24960a, aVar.f24960a) && m.a(this.f24961b, aVar.f24961b) && this.f24962c.equals(aVar.f24962c) && this.f24963d.equals(aVar.f24963d)) {
            return true;
        }
        return false;
    }

    @Override // kotlin.jvm.internal.i
    public int getArity() {
        return this.f24965f;
    }

    public int hashCode() {
        int i10;
        int i11;
        Object obj = this.f24960a;
        int i12 = 0;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        Class cls = this.f24961b;
        if (cls != null) {
            i12 = cls.hashCode();
        }
        int hashCode = (((((i13 + i12) * 31) + this.f24962c.hashCode()) * 31) + this.f24963d.hashCode()) * 31;
        if (this.f24964e) {
            i11 = 1231;
        } else {
            i11 = 1237;
        }
        return ((((hashCode + i11) * 31) + this.f24965f) * 31) + this.f24966g;
    }

    public String toString() {
        return d0.h(this);
    }
}
