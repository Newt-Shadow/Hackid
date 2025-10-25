package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public final int f17965a;

    /* renamed from: b  reason: collision with root package name */
    public final int f17966b;

    /* renamed from: c  reason: collision with root package name */
    public final int f17967c;

    public B(int i10, int i11, int i12) {
        this.f17965a = i10;
        this.f17966b = i11;
        this.f17967c = i12;
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!kotlin.jvm.internal.m.a(B.class, cls)) {
            return false;
        }
        if (obj != null) {
            B b10 = (B) obj;
            if (this.f17965a == b10.f17965a && this.f17966b == b10.f17966b && this.f17967c == b10.f17967c) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.impl.id.AdvIdGetterController.CanTrackIdentifiers");
    }

    public final int hashCode() {
        int a10 = U7.a(this.f17966b);
        return U7.a(this.f17967c) + ((a10 + (U7.a(this.f17965a) * 31)) * 31);
    }

    public final String toString() {
        return "CanTrackIdentifiers(canTrackGaid=" + C.a(this.f17965a) + ", canTrackHoaid=" + C.a(this.f17966b) + ", canTrackYandexAdvId=" + C.a(this.f17967c) + ')';
    }
}
