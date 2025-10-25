package xc;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class p implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f32729a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32730b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f32731c;

    public p(Object obj, Object obj2, Object obj3) {
        this.f32729a = obj;
        this.f32730b = obj2;
        this.f32731c = obj3;
    }

    public final Object a() {
        return this.f32729a;
    }

    public final Object b() {
        return this.f32730b;
    }

    public final Object c() {
        return this.f32731c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p) {
            p pVar = (p) obj;
            return kotlin.jvm.internal.m.a(this.f32729a, pVar.f32729a) && kotlin.jvm.internal.m.a(this.f32730b, pVar.f32730b) && kotlin.jvm.internal.m.a(this.f32731c, pVar.f32731c);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f32729a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f32730b;
        int hashCode2 = (hashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.f32731c;
        return hashCode2 + (obj3 != null ? obj3.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.f32729a + ", " + this.f32730b + ", " + this.f32731c + ')';
    }
}
