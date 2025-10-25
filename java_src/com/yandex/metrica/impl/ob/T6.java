package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ListConverter;
import java.util.List;
/* loaded from: classes2.dex */
public class T6 implements ListConverter {

    /* renamed from: a  reason: collision with root package name */
    private U6 f11404a = new U6();

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0634jf[] fromModel(List<D6> list) {
        C0634jf[] c0634jfArr = new C0634jf[list.size()];
        int i10 = 0;
        for (D6 d62 : list) {
            c0634jfArr[i10] = this.f11404a.fromModel(d62);
            i10++;
        }
        return c0634jfArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0634jf[] c0634jfArr = (C0634jf[]) obj;
        throw new UnsupportedOperationException();
    }
}
