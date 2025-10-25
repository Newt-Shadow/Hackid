package io.appmetrica.analytics.impl;

import java.util.Map;
/* loaded from: classes2.dex */
public final class J3 implements InterfaceC1090c8 {

    /* renamed from: a  reason: collision with root package name */
    public final Map f18422a;

    /* renamed from: b  reason: collision with root package name */
    public final EnumC1065b8 f18423b;

    public J3(Map<String, String> map, EnumC1065b8 enumC1065b8) {
        this.f18422a = map;
        this.f18423b = enumC1065b8;
    }

    public final J3 a(Map<String, String> map, EnumC1065b8 enumC1065b8) {
        return new J3(map, enumC1065b8);
    }

    public final Map<String, String> b() {
        return this.f18422a;
    }

    public final EnumC1065b8 c() {
        return this.f18423b;
    }

    public final Map<String, String> d() {
        return this.f18422a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof J3)) {
            return false;
        }
        J3 j32 = (J3) obj;
        if (kotlin.jvm.internal.m.a(this.f18422a, j32.f18422a) && this.f18423b == j32.f18423b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        Map map = this.f18422a;
        if (map == null) {
            hashCode = 0;
        } else {
            hashCode = map.hashCode();
        }
        return this.f18423b.hashCode() + (hashCode * 31);
    }

    public final String toString() {
        return "Candidate(clids=" + this.f18422a + ", source=" + this.f18423b + ')';
    }

    public static J3 a(J3 j32, Map map, EnumC1065b8 enumC1065b8, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            map = j32.f18422a;
        }
        if ((i10 & 2) != 0) {
            enumC1065b8 = j32.f18423b;
        }
        j32.getClass();
        return new J3(map, enumC1065b8);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1090c8
    public final EnumC1065b8 a() {
        return this.f18423b;
    }
}
