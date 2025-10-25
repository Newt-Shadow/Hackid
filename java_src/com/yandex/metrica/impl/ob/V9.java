package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Ff;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class V9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0512eh c0512eh = (C0512eh) obj;
        Ff ff2 = new Ff();
        ff2.f10084a = new Ff.a[c0512eh.f12333a.size()];
        for (int i10 = 0; i10 < c0512eh.f12333a.size(); i10++) {
            Ff.a[] aVarArr = ff2.f10084a;
            C0587hh c0587hh = c0512eh.f12333a.get(i10);
            Ff.a aVar = new Ff.a();
            aVar.f10090a = c0587hh.f12543a;
            List<String> list = c0587hh.f12544b;
            aVar.f10091b = new String[list.size()];
            int i11 = 0;
            for (String str : list) {
                aVar.f10091b[i11] = str;
                i11++;
            }
            aVarArr[i10] = aVar;
        }
        ff2.f10085b = c0512eh.f12334b;
        ff2.f10086c = c0512eh.f12335c;
        ff2.f10087d = c0512eh.f12336d;
        ff2.f10088e = c0512eh.f12337e;
        return ff2;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Ff ff2 = (Ff) obj;
        ArrayList arrayList = new ArrayList(ff2.f10084a.length);
        int i10 = 0;
        while (true) {
            Ff.a[] aVarArr = ff2.f10084a;
            if (i10 < aVarArr.length) {
                Ff.a aVar = aVarArr[i10];
                ArrayList arrayList2 = new ArrayList();
                String[] strArr = aVar.f10091b;
                if (strArr != null && strArr.length > 0) {
                    arrayList2 = new ArrayList(aVar.f10091b.length);
                    int i11 = 0;
                    while (true) {
                        String[] strArr2 = aVar.f10091b;
                        if (i11 >= strArr2.length) {
                            break;
                        }
                        arrayList2.add(strArr2[i11]);
                        i11++;
                    }
                }
                String str = aVar.f10090a;
                if (str == null) {
                    str = "";
                }
                arrayList.add(new C0587hh(str, arrayList2));
                i10++;
            } else {
                return new C0512eh(arrayList, ff2.f10085b, ff2.f10086c, ff2.f10087d, ff2.f10088e);
            }
        }
    }
}
