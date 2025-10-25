package io.appmetrica.analytics.impl;

import android.util.Pair;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
/* renamed from: io.appmetrica.analytics.impl.o2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1383o2 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final Yl fromModel(C1358n2 c1358n2) {
        Wl wl;
        Yl yl = new Yl();
        yl.f19306a = new Xl[c1358n2.f20155a.size()];
        for (int i10 = 0; i10 < c1358n2.f20155a.size(); i10++) {
            Xl xl = new Xl();
            Pair pair = (Pair) c1358n2.f20155a.get(i10);
            xl.f19267a = (String) pair.first;
            if (pair.second != null) {
                xl.f19268b = new Wl();
                C1333m2 c1333m2 = (C1333m2) pair.second;
                if (c1333m2 == null) {
                    wl = null;
                } else {
                    Wl wl2 = new Wl();
                    wl2.f19200a = c1333m2.f20076a;
                    wl = wl2;
                }
                xl.f19268b = wl;
            }
            yl.f19306a[i10] = xl;
        }
        return yl;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1358n2 toModel(Yl yl) {
        Xl[] xlArr;
        ArrayList arrayList = new ArrayList();
        for (Xl xl : yl.f19306a) {
            String str = xl.f19267a;
            Wl wl = xl.f19268b;
            arrayList.add(new Pair(str, wl == null ? null : new C1333m2(wl.f19200a)));
        }
        return new C1358n2(arrayList);
    }
}
