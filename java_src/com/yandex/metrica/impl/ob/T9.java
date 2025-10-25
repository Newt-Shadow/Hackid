package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Ef;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* loaded from: classes2.dex */
public class T9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Ef.a aVar;
        Z1 z12 = (Z1) obj;
        Ef ef2 = new Ef();
        Map<String, String> map = z12.f11855a;
        if (map == null) {
            aVar = null;
        } else {
            Ef.a aVar2 = new Ef.a();
            aVar2.f9992a = new Ef.a.C0122a[map.size()];
            int i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                Ef.a.C0122a c0122a = new Ef.a.C0122a();
                c0122a.f9994a = entry.getKey();
                c0122a.f9995b = entry.getValue();
                aVar2.f9992a[i10] = c0122a;
                i10++;
            }
            aVar = aVar2;
        }
        ef2.f9990a = aVar;
        ef2.f9991b = z12.f11856b;
        return ef2;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Ef.a.C0122a[] c0122aArr;
        HashMap hashMap;
        Ef ef2 = (Ef) obj;
        Ef.a aVar = ef2.f9990a;
        if (aVar == null) {
            hashMap = null;
        } else {
            HashMap hashMap2 = new HashMap();
            for (Ef.a.C0122a c0122a : aVar.f9992a) {
                hashMap2.put(c0122a.f9994a, c0122a.f9995b);
            }
            hashMap = hashMap2;
        }
        return new Z1(hashMap, ef2.f9991b);
    }
}
