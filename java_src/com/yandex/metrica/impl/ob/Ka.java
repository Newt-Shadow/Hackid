package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
import java.util.List;
/* loaded from: classes2.dex */
public class Ka implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final C0642jn f10618a;

    public Ka() {
        this(new C0642jn(20, 100));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.l[], Vm> fromModel(List<String> list) {
        C0568gn<List<Object>, Xm> a10 = this.f10618a.a((List<Object>) list);
        List<Object> list2 = a10.f12493a;
        C0709mf.l[] lVarArr = new C0709mf.l[0];
        if (list2 != null) {
            lVarArr = new C0709mf.l[list2.size()];
            for (int i10 = 0; i10 < list2.size(); i10++) {
                C0709mf.l lVar = new C0709mf.l();
                lVarArr[i10] = lVar;
                lVar.f12921a = C0419b.b((String) list2.get(i10));
            }
        }
        return new Na<>(lVarArr, a10.f12494b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    public Ka(C0642jn c0642jn) {
        this.f10618a = c0642jn;
    }
}
