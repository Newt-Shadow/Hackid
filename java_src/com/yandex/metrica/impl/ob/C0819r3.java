package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0915v3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.r3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0819r3 implements InterfaceC1010z2<C0915v3.a, C0915v3.a> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC1010z2, id.Function2
    /* renamed from: a */
    public List<C0915v3.a> invoke(List<C0915v3.a> list, C0915v3.a aVar) {
        boolean z10;
        boolean z11;
        List<C0915v3.a> d02;
        List<C0915v3.a> d03;
        boolean z12;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (C0915v3.a aVar2 : list) {
                if (aVar2.a() == aVar.a()) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    z11 = true;
                    break;
                }
            }
        }
        z11 = false;
        if (!z11) {
            d02 = yc.w.d0(list, aVar);
            return d02;
        } else if (aVar.a() == EnumC0888u0.APP) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((C0915v3.a) obj).a() == EnumC0888u0.APP) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (!z12) {
                    arrayList.add(obj);
                }
            }
            d03 = yc.w.d0(arrayList, aVar);
            return d03;
        } else {
            return null;
        }
    }
}
