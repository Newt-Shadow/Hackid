package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0975xf;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class Y2 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final C0398a3 f11825a;

    public Y2() {
        this(new C0398a3());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        X2 x22 = (X2) obj;
        C0975xf c0975xf = new C0975xf();
        c0975xf.f13946a = new C0975xf.a[x22.f11717a.size()];
        int i10 = 0;
        for (zb.a aVar : x22.f11717a) {
            c0975xf.f13946a[i10] = this.f11825a.fromModel(aVar);
            i10++;
        }
        c0975xf.f13947b = x22.f11718b;
        return c0975xf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0975xf c0975xf = (C0975xf) obj;
        ArrayList arrayList = new ArrayList(c0975xf.f13946a.length);
        for (C0975xf.a aVar : c0975xf.f13946a) {
            arrayList.add(this.f11825a.toModel(aVar));
        }
        return new X2(arrayList, c0975xf.f13947b);
    }

    Y2(C0398a3 c0398a3) {
        this.f11825a = c0398a3;
    }
}
