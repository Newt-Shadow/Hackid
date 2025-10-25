package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ListConverter;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class O9 implements ListConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.m[] fromModel(List<Bd> list) {
        If.m[] mVarArr = new If.m[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            Bd bd2 = list.get(i10);
            If.m mVar = new If.m();
            mVar.f10343a = bd2.f9787a;
            mVar.f10344b = bd2.f9788b;
            mVarArr[i10] = mVar;
        }
        return mVarArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public List<Bd> toModel(If.m[] mVarArr) {
        ArrayList arrayList = new ArrayList(mVarArr.length);
        for (If.m mVar : mVarArr) {
            arrayList.add(new Bd(mVar.f10343a, mVar.f10344b));
        }
        return arrayList;
    }
}
