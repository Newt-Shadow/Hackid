package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public final class F3 implements Hn {
    @Override // io.appmetrica.analytics.impl.Hn, id.Function2
    /* renamed from: a */
    public final List<J3> invoke(List<J3> list, J3 j32) {
        List<J3> d02;
        List<J3> d03;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (J3 j33 : list) {
                EnumC1065b8 enumC1065b8 = j33.f18423b;
                EnumC1065b8 enumC1065b82 = j32.f18423b;
                if (enumC1065b8 == enumC1065b82) {
                    if (enumC1065b82 == EnumC1065b8.f19425c) {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : list) {
                            if (((J3) obj).f18423b != EnumC1065b8.f19425c) {
                                arrayList.add(obj);
                            }
                        }
                        d02 = yc.w.d0(arrayList, j32);
                        return d02;
                    }
                    return null;
                }
            }
        }
        d03 = yc.w.d0(list, j32);
        return d03;
    }
}
