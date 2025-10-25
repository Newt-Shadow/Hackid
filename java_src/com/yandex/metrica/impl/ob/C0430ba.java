package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ListConverter;
import com.yandex.metrica.impl.ob.C1029zl;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.ba  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0430ba implements ListConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.y[] fromModel(List<C1029zl> list) {
        If.y[] yVarArr = new If.y[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            C1029zl c1029zl = list.get(i10);
            If.y yVar = new If.y();
            yVar.f10404a = c1029zl.f14084a.f14091a;
            yVar.f10405b = c1029zl.f14085b;
            yVarArr[i10] = yVar;
        }
        return yVarArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public List<C1029zl> toModel(If.y[] yVarArr) {
        ArrayList arrayList = new ArrayList(yVarArr.length);
        for (If.y yVar : yVarArr) {
            arrayList.add(new C1029zl(C1029zl.b.a(yVar.f10404a), yVar.f10405b));
        }
        return arrayList;
    }
}
