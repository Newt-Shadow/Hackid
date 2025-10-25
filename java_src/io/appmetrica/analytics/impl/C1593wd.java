package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.wd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1593wd implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final C1301kk f20863a = C1665za.j().o();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1154em[] fromModel(Map<String, ? extends Object> map) {
        C1154em c1154em;
        Map<String, C1294kd> c10 = this.f20863a.c();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            C1294kd c1294kd = c10.get(key);
            if (c1294kd == null || value == null) {
                c1154em = null;
            } else {
                c1154em = new C1154em();
                c1154em.f19601a = key;
                c1154em.f19602b = (byte[]) c1294kd.f19967c.fromModel(value);
            }
            if (c1154em != null) {
                arrayList.add(c1154em);
            }
        }
        Object[] array = arrayList.toArray(new C1154em[0]);
        if (array != null) {
            return (C1154em[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Map<String, Object> toModel(C1154em[] c1154emArr) {
        Map<String, Object> o10;
        Map<String, C1294kd> c10 = this.f20863a.c();
        ArrayList arrayList = new ArrayList();
        for (C1154em c1154em : c1154emArr) {
            C1294kd c1294kd = c10.get(c1154em.f19601a);
            xc.k a10 = c1294kd != null ? xc.q.a(c1154em.f19601a, c1294kd.f19967c.toModel(c1154em.f19602b)) : null;
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        o10 = yc.h0.o(arrayList);
        return o10;
    }
}
