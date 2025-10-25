package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public final class N9 implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final C0632jd f10886a;

    public N9() {
        F0 g10 = F0.g();
        kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
        C0632jd j10 = g10.j();
        kotlin.jvm.internal.m.d(j10, "GlobalServiceLocator.get…tance().modulesController");
        this.f10886a = j10;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.l[] fromModel(Map<String, ? extends Object> map) {
        If.l lVar;
        Map<String, C0583hd> c10 = this.f10886a.c();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            C0583hd c0583hd = c10.get(key);
            if (c0583hd == null || value == null) {
                lVar = null;
            } else {
                lVar = new If.l();
                lVar.f10340a = key;
                lVar.f10341b = c0583hd.a(value);
            }
            if (lVar != null) {
                arrayList.add(lVar);
            }
        }
        Object[] array = arrayList.toArray(new If.l[0]);
        if (array != null) {
            return (If.l[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Map<String, Object> toModel(If.l[] lVarArr) {
        Map<String, Object> o10;
        Map<String, C0583hd> c10 = this.f10886a.c();
        ArrayList arrayList = new ArrayList();
        for (If.l lVar : lVarArr) {
            C0583hd c0583hd = c10.get(lVar.f10340a);
            xc.k a10 = c0583hd != null ? xc.q.a(lVar.f10340a, c0583hd.a(lVar.f10341b)) : null;
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        o10 = yc.h0.o(arrayList);
        return o10;
    }
}
