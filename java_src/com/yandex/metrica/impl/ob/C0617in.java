package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.in  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0617in extends AbstractC0593hn {

    /* renamed from: b  reason: collision with root package name */
    private final AbstractC0593hn f12625b;

    public C0617in(int i10) {
        this(i10, null);
    }

    protected int b(Object obj) {
        throw null;
    }

    public C0617in(int i10, AbstractC0593hn abstractC0593hn) {
        super(i10);
        this.f12625b = abstractC0593hn;
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0593hn
    public C0568gn<List<Object>, Xm> a(List<Object> list) {
        int i10;
        int i11 = 0;
        if (list == null || (list.size() <= a() && this.f12625b == null)) {
            i10 = 0;
        } else {
            ArrayList arrayList = new ArrayList();
            i10 = 0;
            int i12 = 0;
            for (Object obj : list) {
                if (i12 < a()) {
                    AbstractC0593hn abstractC0593hn = this.f12625b;
                    if (abstractC0593hn != null) {
                        C0568gn<Object, Vm> a10 = abstractC0593hn.a(obj);
                        Object obj2 = a10.f12493a;
                        i10 += a10.f12494b.a();
                        obj = obj2;
                    }
                    arrayList.add(obj);
                } else {
                    i11++;
                    i10 += b(obj);
                }
                i12++;
            }
            list = arrayList;
        }
        return new C0568gn<>(list, new Xm(i11, i10));
    }
}
