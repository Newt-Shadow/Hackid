package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class Ca extends K2 {

    /* renamed from: b  reason: collision with root package name */
    public final Fa f18046b;

    public Ca(int i10) {
        this(i10, null);
    }

    public int b(Object obj) {
        return 0;
    }

    public Ca(int i10, Fa fa2) {
        super(i10);
        this.f18046b = fa2;
    }

    @Override // io.appmetrica.analytics.impl.K2, io.appmetrica.analytics.impl.Fa
    public final C1503sn a(List<Object> list) {
        int i10;
        int i11 = 0;
        if (list == null || (list.size() <= this.f18473a && this.f18046b == null)) {
            i10 = 0;
        } else {
            ArrayList arrayList = new ArrayList();
            i10 = 0;
            int i12 = 0;
            for (Object obj : list) {
                if (i12 < this.f18473a) {
                    Fa fa2 = this.f18046b;
                    if (fa2 != null) {
                        C1503sn a10 = fa2.a(obj);
                        Object obj2 = a10.f20611a;
                        i10 += a10.f20612b.getBytesTruncated();
                        Rn.a(obj, a10.f20611a);
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
        return new C1503sn(list, new E4(i11, i10));
    }

    public final Fa b() {
        return this.f18046b;
    }
}
