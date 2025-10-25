package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Bf;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class P9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        List list = (List) obj;
        Bf bf2 = new Bf();
        bf2.f9789a = new Bf.a[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            Bf.a[] aVarArr = bf2.f9789a;
            Bd bd2 = (Bd) list.get(i10);
            Bf.a aVar = new Bf.a();
            aVar.f9791a = bd2.f9787a;
            aVar.f9792b = bd2.f9788b;
            aVarArr[i10] = aVar;
        }
        return bf2;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Bf bf2 = (Bf) obj;
        ArrayList arrayList = new ArrayList(bf2.f9789a.length);
        int i10 = 0;
        while (true) {
            Bf.a[] aVarArr = bf2.f9789a;
            if (i10 < aVarArr.length) {
                Bf.a aVar = aVarArr[i10];
                arrayList.add(new Bd(aVar.f9791a, aVar.f9792b));
                i10++;
            } else {
                return arrayList;
            }
        }
    }
}
