package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
import java.util.List;
/* loaded from: classes2.dex */
public class Da implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final C0642jn f9903a;

    public Da() {
        this(new C0642jn(20, 100));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.d, Vm> fromModel(List<String> list) {
        C0568gn<List<Object>, Xm> a10 = this.f9903a.a((List<Object>) list);
        C0709mf.d dVar = new C0709mf.d();
        List<Object> list2 = a10.f12493a;
        byte[][] bArr = new byte[0];
        if (list2 != null) {
            bArr = new byte[list2.size()];
            for (int i10 = 0; i10 < list2.size(); i10++) {
                bArr[i10] = C0419b.b((String) list2.get(i10));
            }
        }
        dVar.f12894a = bArr;
        return new Na<>(dVar, a10.f12494b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    public Da(C0642jn c0642jn) {
        this.f9903a = c0642jn;
    }
}
