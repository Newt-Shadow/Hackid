package xc;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class k implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f32716a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32717b;

    public k(Object obj, Object obj2) {
        this.f32716a = obj;
        this.f32717b = obj2;
    }

    public final Object a() {
        return this.f32716a;
    }

    public final Object b() {
        return this.f32717b;
    }

    public final Object c() {
        return this.f32716a;
    }

    public final Object d() {
        return this.f32717b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            return kotlin.jvm.internal.m.a(this.f32716a, kVar.f32716a) && kotlin.jvm.internal.m.a(this.f32717b, kVar.f32717b);
        }
        return false;
    }

    public int hashCode() {
        Object obj = this.f32716a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f32717b;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.f32716a + ", " + this.f32717b + ')';
    }
}
