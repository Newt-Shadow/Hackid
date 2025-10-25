package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Oh;
import java.util.ArrayList;
/* renamed from: com.yandex.metrica.impl.ob.s9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0849s9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.a fromModel(Oh oh) {
        If.a.C0123a c0123a;
        If.a aVar = new If.a();
        aVar.f10256a = new If.a.b[oh.f11004a.size()];
        for (int i10 = 0; i10 < oh.f11004a.size(); i10++) {
            If.a.b bVar = new If.a.b();
            Pair<String, Oh.a> pair = oh.f11004a.get(i10);
            bVar.f10259a = (String) pair.first;
            if (pair.second != null) {
                bVar.f10260b = new If.a.C0123a();
                Oh.a aVar2 = (Oh.a) pair.second;
                if (aVar2 == null) {
                    c0123a = null;
                } else {
                    If.a.C0123a c0123a2 = new If.a.C0123a();
                    c0123a2.f10257a = aVar2.f11005a;
                    c0123a = c0123a2;
                }
                bVar.f10260b = c0123a;
            }
            aVar.f10256a[i10] = bVar;
        }
        return aVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Oh toModel(If.a aVar) {
        If.a.b[] bVarArr;
        ArrayList arrayList = new ArrayList();
        for (If.a.b bVar : aVar.f10256a) {
            String str = bVar.f10259a;
            If.a.C0123a c0123a = bVar.f10260b;
            arrayList.add(new Pair(str, c0123a == null ? null : new Oh.a(c0123a.f10257a)));
        }
        return new Oh(arrayList);
    }
}
