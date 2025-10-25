package io.appmetrica.analytics.impl;

import java.util.List;
/* loaded from: classes2.dex */
public final class K3 implements Z7 {

    /* renamed from: a  reason: collision with root package name */
    public final J3 f18474a;

    /* renamed from: b  reason: collision with root package name */
    public final List f18475b;

    public K3(J3 j32, List<J3> list) {
        this.f18474a = j32;
        this.f18475b = list;
    }

    public final K3 a(J3 j32, List<J3> list) {
        return new K3(j32, list);
    }

    @Override // io.appmetrica.analytics.impl.Z7
    public final Object b() {
        return this.f18474a;
    }

    public final J3 c() {
        return this.f18474a;
    }

    public final List<J3> d() {
        return this.f18475b;
    }

    public final J3 e() {
        return this.f18474a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof K3)) {
            return false;
        }
        K3 k32 = (K3) obj;
        if (kotlin.jvm.internal.m.a(this.f18474a, k32.f18474a) && kotlin.jvm.internal.m.a(this.f18475b, k32.f18475b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f18475b.hashCode() + (this.f18474a.hashCode() * 31);
    }

    public final String toString() {
        return "ClidsInfo(chosen=" + this.f18474a + ", candidates=" + this.f18475b + ')';
    }

    public static K3 a(K3 k32, J3 j32, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j32 = k32.f18474a;
        }
        if ((i10 & 2) != 0) {
            list = k32.f18475b;
        }
        k32.getClass();
        return new K3(j32, list);
    }

    @Override // io.appmetrica.analytics.impl.Z7
    public final List<J3> a() {
        return this.f18475b;
    }
}
