package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class L3 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final P3 fromModel(K3 k32) {
        P3 p32 = new P3();
        p32.f18757a = a(k32.f18474a);
        int size = k32.f18475b.size();
        M3[] m3Arr = new M3[size];
        for (int i10 = 0; i10 < size; i10++) {
            m3Arr[i10] = a((J3) k32.f18475b.get(i10));
        }
        p32.f18758b = m3Arr;
        return p32;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final K3 toModel(P3 p32) {
        M3 m32 = p32.f18757a;
        if (m32 == null) {
            m32 = new M3();
        }
        J3 a10 = a(m32);
        M3[] m3Arr = p32.f18758b;
        ArrayList arrayList = new ArrayList(m3Arr.length);
        for (M3 m33 : m3Arr) {
            arrayList.add(a(m33));
        }
        return new K3(a10, arrayList);
    }

    public static M3 a(J3 j32) {
        O3 o32;
        M3 m32 = new M3();
        Map map = j32.f18422a;
        int i10 = 0;
        if (map != null) {
            o32 = new O3();
            int size = map.size();
            N3[] n3Arr = new N3[size];
            for (int i11 = 0; i11 < size; i11++) {
                n3Arr[i11] = new N3();
            }
            o32.f18682a = n3Arr;
            int i12 = 0;
            for (Map.Entry entry : map.entrySet()) {
                N3 n32 = o32.f18682a[i12];
                n32.f18633a = (String) entry.getKey();
                n32.f18634b = (String) entry.getValue();
                i12++;
            }
        } else {
            o32 = null;
        }
        m32.f18570a = o32;
        int ordinal = j32.f18423b.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                i10 = 2;
                if (ordinal != 2) {
                    i10 = 3;
                    if (ordinal != 3) {
                        throw new xc.i();
                    }
                }
            } else {
                i10 = 1;
            }
        }
        m32.f18571b = i10;
        return m32;
    }

    public static J3 a(M3 m32) {
        LinkedHashMap linkedHashMap;
        EnumC1065b8 enumC1065b8;
        int b10;
        int b11;
        O3 o32 = m32.f18570a;
        if (o32 != null) {
            N3[] n3Arr = o32.f18682a;
            b10 = yc.g0.b(n3Arr.length);
            b11 = od.i.b(b10, 16);
            linkedHashMap = new LinkedHashMap(b11);
            for (N3 n32 : n3Arr) {
                xc.k a10 = xc.q.a(n32.f18633a, n32.f18634b);
                linkedHashMap.put(a10.c(), a10.d());
            }
        } else {
            linkedHashMap = null;
        }
        int i10 = m32.f18571b;
        if (i10 == 0) {
            enumC1065b8 = EnumC1065b8.f19424b;
        } else if (i10 == 1) {
            enumC1065b8 = EnumC1065b8.f19425c;
        } else if (i10 == 2) {
            enumC1065b8 = EnumC1065b8.f19426d;
        } else if (i10 != 3) {
            enumC1065b8 = EnumC1065b8.f19424b;
        } else {
            enumC1065b8 = EnumC1065b8.f19427e;
        }
        return new J3(linkedHashMap, enumC1065b8);
    }
}
