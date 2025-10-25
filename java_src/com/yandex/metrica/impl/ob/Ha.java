package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C0709mf;
import java.util.Map;
/* loaded from: classes2.dex */
public class Ha implements Converter {

    /* renamed from: a  reason: collision with root package name */
    private final C0692ln f10192a;

    public Ha() {
        this(new C0692ln(20480, 100, 1000));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C0709mf.i, Vm> fromModel(Map<String, String> map) {
        C0568gn<Map<String, String>, Xm> a10 = this.f10192a.a(map);
        C0709mf.i iVar = new C0709mf.i();
        iVar.f12907b = a10.f12494b.f11819b;
        Map<String, String> map2 = a10.f12493a;
        if (map2 != null) {
            iVar.f12906a = new C0709mf.i.a[map2.size()];
            int i10 = 0;
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                iVar.f12906a[i10] = new C0709mf.i.a();
                iVar.f12906a[i10].f12909a = C0419b.b(entry.getKey());
                iVar.f12906a[i10].f12910b = C0419b.b(entry.getValue());
                i10++;
            }
        }
        return new Na<>(iVar, a10.f12494b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na2 = (Na) obj;
        throw new UnsupportedOperationException();
    }

    public Ha(C0692ln c0692ln) {
        this.f10192a = c0692ln;
    }
}
